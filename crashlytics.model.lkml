connection: "leigha-bq-dev"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
include: "/dashboards/*"

explore: crashlytics {
  view_label: "Core"
  join: crashlytics__errors {
    view_label: "Errors"
    sql: LEFT JOIN UNNEST(${crashlytics.errors}) as crashlytics__errors;;
    relationship: one_to_many
  }
  join: crashlytics__logs {
    view_label: "Logs"
    sql: LEFT JOIN UNNEST(${crashlytics.logs}) as crashlytics__logs;;
    relationship: one_to_many
  }
  join: crashlytics__threads {
    view_label: "Threads"
    sql: LEFT JOIN UNNEST(${crashlytics.threads}) as crashlytics__threads;;
    relationship: one_to_many
  }
  join: crashlytics__custom_keys {
    view_label: "Custom Keys"
    sql: LEFT JOIN UNNEST(${crashlytics.custom_keys}) as crashlytics__custom_keys;;
    relationship: one_to_many
  }
  join: crashlytics__exceptions {
    view_label: "Exceptions"
    sql: LEFT JOIN UNNEST(${crashlytics.exceptions}) as crashlytics__exceptions;;
    relationship: one_to_many
  }
  join: crashlytics__breadcrumbs {
    view_label: "Breadcrumbs"
    sql: LEFT JOIN UNNEST(${crashlytics.breadcrumbs}) as crashlytics__breadcrumbs;;
    relationship: one_to_many
  }
  join: crashlytics__errors__frames {
    view_label: "Errors Frames"
    sql: LEFT JOIN UNNEST(${crashlytics__errors.frames}) as crashlytics__errors__frames;;
    relationship: one_to_many
  }
  join: crashlytics__threads__frames {
    view_label: "Threads Frames"
    sql: LEFT JOIN UNNEST(${crashlytics__threads.frames}) as crashlytics__threads__frames;;
    relationship: one_to_many
  }
  join: crashlytics__exceptions__frames {
    view_label: "Exceptions Frames"
    sql: LEFT JOIN UNNEST(${crashlytics__exceptions.frames}) as crashlytics__exceptions__frames;;
    relationship: one_to_many
  }
  join: crashlytics__breadcrumbs__params {
    view_label: "Breadcrumbs Params"
    sql: LEFT JOIN UNNEST(${crashlytics__breadcrumbs.params}) as crashlytics__breadcrumbs__params;;
    relationship: one_to_many
  }
  }
