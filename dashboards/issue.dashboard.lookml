- dashboard: issue_investigation
  title: Issue Investigation
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Number of Errors
    name: Number of Errors
    model: crashlytics
    explore: crashlytics
    type: single_value
    fields: [crashlytics.count]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen:
      Event Timestamp Time: crashlytics.event_timestamp_time
      Issue ID: crashlytics.issue_id
    row: 5
    col: 6
    width: 6
    height: 4
  - title: Number of Crashes
    name: Number of Crashes
    model: crashlytics
    explore: crashlytics
    type: single_value
    fields: [crashlytics.count_fatal]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Event Timestamp Time: crashlytics.event_timestamp_time
      Issue ID: crashlytics.issue_id
    row: 5
    col: 0
    width: 6
    height: 4
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="height: 44px; background-color:#EA4335; color: #fff; border-radius: 44px; font-family: Google Sans,Noto Sans,Noto Sans JP,Noto Sans KR,Noto Naskh Arabic,Noto Sans Thai,Noto Sans Hebrew,Noto Sans Bengali,sans-serif; padding: 8px; display: flex;">
      <h2 style="width:100%;text-align:center;color: white; line-height: .75rem;">Crashes</h2>
      <div>
    row: 3
    col: 0
    width: 6
    height: 2
  - title: Users Affected
    name: Users Affected
    model: crashlytics
    explore: crashlytics
    type: single_value
    fields: [crashlytics.user_count]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Event Timestamp Time: crashlytics.event_timestamp_time
      Issue ID: crashlytics.issue_id
    row: 9
    col: 0
    width: 6
    height: 4
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="height: 44px; background-color: #1A73E8; color: #fff; border-radius: 44px; font-family: Google Sans,Noto Sans,Noto Sans JP,Noto Sans KR,Noto Naskh Arabic,Noto Sans Thai,Noto Sans Hebrew,Noto Sans Bengali,sans-serif; padding: 8px; display: flex;">
      <h2 style="width:100%;text-align:center;color: white; line-height: .75rem;">All Errors</h2>
      <div>
    row: 3
    col: 6
    width: 6
    height: 2
  - title: Users Affected
    name: Users Affected (2)
    model: crashlytics
    explore: crashlytics
    type: single_value
    fields: [crashlytics.user_count]
    filters:
      crashlytics__threads.crashed: 'Yes'
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Event Timestamp Time: crashlytics.event_timestamp_time
      Issue ID: crashlytics.issue_id
    row: 9
    col: 6
    width: 6
    height: 4
  - title: Errors by Version
    name: Errors by Version
    model: crashlytics
    explore: crashlytics
    type: looker_column
    fields: [crashlytics.count, crashlytics.operating_system__display_version, crashlytics__threads.crashed]
    pivots: [crashlytics__threads.crashed]
    fill_fields: [crashlytics__threads.crashed]
    sorts: [crashlytics.count desc 0, crashlytics__threads.crashed]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: crashlytics.count, id: crashlytics.count,
            name: Number of Errors}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_labels:
      No - crashlytics.count: Not Fatal
      Yes - crashlytics.count: Fatal
    value_labels: legend
    label_type: labPer
    inner_radius:
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Event Timestamp Time: crashlytics.event_timestamp_time
      Issue ID: crashlytics.issue_id
    row: 3
    col: 12
    width: 12
    height: 10
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <h1 style="text-align:center">Issue Investigation</h1>

      <p style="text-align:center">☝️ Filter on a specific issue to see details</p>
    row: 0
    col: 0
    width: 24
    height: 3
  - title: Errors by Application Version
    name: Errors by Application Version
    model: crashlytics
    explore: crashlytics
    type: looker_pie
    fields: [crashlytics.count, crashlytics.application__display_version]
    sorts: [crashlytics.count desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Issue ID: crashlytics.issue_id
    row: 13
    col: 0
    width: 12
    height: 8
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<p></p>"
    row: 13
    col: 12
    width: 11
    height: 2
  filters:
  - name: Event Timestamp Time
    title: Event Timestamp Time
    type: field_filter
    default_value: 6 month
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: crashlytics
    explore: crashlytics
    listens_to_filters: []
    field: crashlytics.event_timestamp_time
  - name: Issue ID
    title: Issue ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: crashlytics
    explore: crashlytics
    listens_to_filters: []
    field: crashlytics.issue_id
