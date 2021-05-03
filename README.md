**NOTE: This block requires exporting Crashlytics Reports to BigQuery. Please [review the step-by-step guide](https://firebase.google.com/docs/crashlytics/bigquery-export) and make sure data is in BigQuery before attempting to use this block:**

___
# Readme

### What does this Block do for me?

**(1) Understand Overall Application Health ** - 
**(2) Prioritize Issues to Investigate ** - 
**(1) Drill into Details and Plan to Resolve Issues ** - 


### Block Info

This block is modeled on the BigQuery Crashlytics Export schema. 

- There is one table for each app in your project, unless you've opted out of exporting data for that app
- Each record represents one error event in your application 
- You can optionally enable streaming, in which case you will have an additional realtime table

### Block Structure

The Crashlytics block consists of an Explore with several underlying views:

**(1) Crashlytics Core View**

This view creates a Persistent Derived Table which extracts all the data about an interaction from the Dialogflow payload into a JSON object. That JSON is then parsed to extract the content, as well as characteristics, of that interaction, which form the dimensions and measures of the view.

**(2) Views for Array Fields**

Each field that is an repeated (array) column in BigQuery is represented as its own view and unnested in the joins within the explore. This includes errors, logs, threads, exceptions, custom keys, breadcrumns and each frame fields

**(3) Issue Facts View**

This view creates a derived table which rollsup statistics for a single issue


### Using the Block for More than One Application or to Differentiate Realtime Data

Your time might have more than one application that it has created in firebase (for example, an iOS version and an Adroid version). You can customize the model so that the dashboards can support querying from any table, and thus any application. 

1. First create a [parameter](https://docs.looker.com/reference/field-params/parameter) in the crashlytics view that gives each table name as an option for users to query. You can use labels to make the filters easier to understand from the frontend

```
parameter: application_filter {
  type: unquoted
  allowed_value: {
    label: "iOS"
    value: "com_google_friendlypix_IOS"
  }
  allowed_value: {
    label: "Android"
    value: "com_google_friendlypix_ANDROID"
  }
  allowed_value: {
    label: "iOS Realtime"
    value: "com_google_friendlypix_IOS_REALTIME"
  }
  allowed_value: {
    label: "Android Realtime"
    value: "com_google_friendlypix_ANDROID_REALTIME"
  }
}
```

2. Overwrite the sql_table_name on the crashlytics view to instead use the value of the application filter parameter:

```
sql_table_name: `@{SCHEMA_NAME}.{% parameter application_filter %}`;;
```

3. Add a bind_filters parameter onto the derived table definition so the derived table will be built using the proper base table name

```
  bind_filters: {
    from_field: crashlytics.application_filter
    to_field: crashlytics.application_filter
  }
```

4. Add an [always filter](https://docs.looker.com/reference/explore-params/always_filter) field to the explore that requires users to select an application before sending any queries

```
  always_filter: {
    filters: [
      crashlytics.application_filter: "com_google_friendlypix_IOS_REALTIME"
    ]
  }
```

5. [Import the dashboards from LookML](https://docs.looker.com/dashboards/lookml-to-user-dashboard) and [add filters onto the dashboards](https://docs.looker.com/dashboards/dashboard-beta-filters) to include require users to select a value for application filter.



### Leveraging Custom Variables

You can chose to create custom dimensions that you'd like to appear in the explore with a dimension declaration. For example, if we have brand_id as a breadcrumb parameter, available for events where the user is Viewing an Item then we might create a dimension like this in the breadcrumbs param view:

```
dimension:  brand_id {
  type: string
  sql:case when ${crashlytics__breadcrumbs.name} = 'ViewItem' and ${key} = 'brand_id' then ${value} else null end  ;;
}
```


