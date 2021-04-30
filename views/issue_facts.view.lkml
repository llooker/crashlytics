view: issue_facts {
  derived_table: {
    explore_source: crashlytics {
      column: count {}
      column: user_count {}
      column: issue_id {}
      column: first_date {}
      column: last_date {}
    }
  }

  dimension: count {
    label: "Number of Errors"
    type: number
  }

  dimension: user_count {
    label: "Number of Users Affected"
    type: number
  }

  dimension: issue_id {
    hidden: yes
    primary_key: yes
    label: "Core Issue ID"
    description: "The issue associated with this event."
  }

  dimension_group: first_date {
    label: "Issue First Seen"
    type: time
    timeframes: [date,time,week,hour,hour3,hour12,hour6,month,year, raw]
  }

  dimension_group: last_date {
    label: "Issue Last Seen"
    type: time
    timeframes: [date,time,week,hour,hour3,hour12,hour6,month,year, raw]
  }

  dimension_group: to_resolve {
    type: duration
    description: "The time that passed between the first time the issue was seen and the last time the issue was seen"
    sql_start: ${first_date_raw} ;;
    sql_end: ${last_date_raw} ;;
  }

  dimension: days_to_resolve_tier {
    type: tier
    sql: ${days_to_resolve} ;;
    tiers: [1,7,30,180]
    style: integer
  }

  measure: average_days_to_resolve {
    type: average
    sql: ${days_to_resolve} ;;
  }
}
