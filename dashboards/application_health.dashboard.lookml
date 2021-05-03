- dashboard: application_health
  title: Application Health
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
    row: 5
    col: 6
    width: 6
    height: 2
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
    row: 5
    col: 0
    width: 6
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="height: 44px; background-color:#EA4335; color: #fff; border-radius: 44px; font-family: Google Sans,Noto Sans,Noto Sans JP,Noto Sans KR,Noto Naskh Arabic,Noto Sans Thai,Noto Sans Hebrew,Noto Sans Bengali,sans-serif; padding: 8px; display: flex;">
      <h2 style="width:100%;text-align:center;color: white; line-height: .5rem;">Crashes</h2>
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
    filters:
      crashlytics.is_fatal: 'Yes'
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
    row: 7
    col: 0
    width: 6
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="height: 44px; background-color: #1A73E8; color: #fff; border-radius: 44px; font-family: Google Sans,Noto Sans,Noto Sans JP,Noto Sans KR,Noto Naskh Arabic,Noto Sans Thai,Noto Sans Hebrew,Noto Sans Bengali,sans-serif; padding: 8px; display: flex;">
      <h2 style="width:100%;text-align:center;color: white; line-height: .5rem;">All Errors</h2>
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
    row: 7
    col: 6
    width: 6
    height: 2
  - title: Top Issues
    name: Top Issues
    model: crashlytics
    explore: crashlytics
    type: looker_grid
    fields: [crashlytics.issue_title, crashlytics.count, crashlytics.count_fatal,
      crashlytics.installation_count, crashlytics.user_count]
    sorts: [crashlytics.count desc]
    limit: 20
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      crashlytics.count:
        is_active: true
        palette:
          palette_id: ef6d0f4a-1c51-2d1e-9bda-64d104066507
          collection_id: google
          custom_colors:
          - "#ffffff"
          - "#4276BE"
      crashlytics.count_fatal:
        is_active: true
        palette:
          palette_id: 0d933d1c-4eb0-ef12-deaa-1f3bc1539ea2
          collection_id: google
          custom_colors:
          - "#ffffff"
          - "#bf261f"
      crashlytics.installation_count:
        is_active: true
        palette:
          palette_id: 33ab8b95-7533-e327-2f7d-02d3752f8c5e
          collection_id: google
          custom_colors:
          - "#ffffff"
          - "#ffe867"
      crashlytics.user_count:
        is_active: true
        palette:
          palette_id: d309cc25-fd3a-8f3c-fdd3-5baa9532c4ec
          collection_id: google
          custom_colors:
          - "#ffffff"
          - "#43bf2d"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#4285F4",
        font_color: !!null '', color_application: {collection_id: google, palette_id: google-sequential-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen: {}
    row: 20
    col: 12
    width: 12
    height: 10
  - title: Statistics for Latest Application Versions
    name: Statistics for Latest Application Versions
    model: crashlytics
    explore: crashlytics
    type: looker_column
    fields: [crashlytics.count, crashlytics.application__display_version, crashlytics.count_issues,
      crashlytics.user_count]
    sorts: [crashlytics.application__display_version desc]
    limit: 15
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
            name: Number of Errors}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: left, series: [{axisId: crashlytics.count_issues, id: crashlytics.count_issues,
            name: Number of Issues}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: '', orientation: right,
        series: [{axisId: crashlytics.user_count, id: crashlytics.user_count, name: Number
              of Users Affected}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    series_types: {}
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    defaults_version: 1
    listen: {}
    row: 3
    col: 12
    width: 12
    height: 8
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<p></p>"
    row: 30
    col: 12
    width: 11
    height: 2
  - title: Errors by Device Model
    name: Errors by Device Model
    model: crashlytics
    explore: crashlytics
    type: looker_bar
    fields: [crashlytics.count, crashlytics.device__model, crashlytics.user_count]
    sorts: [crashlytics.user_count desc]
    limit: 10
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: crashlytics.count,
            id: crashlytics.count, name: Number of Errors}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: '', orientation: bottom, series: [{axisId: crashlytics.user_count, id: crashlytics.user_count,
            name: Number of Users Affected}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types:
      crashlytics.count: line
    series_colors:
      crashlytics.user_count: "#1A73E8"
      crashlytics.count: "#12B5CB"
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    defaults_version: 1
    listen: {}
    row: 11
    col: 0
    width: 6
    height: 9
  - title: Number of Issues
    name: Number of Issues
    model: crashlytics
    explore: crashlytics
    type: single_value
    fields: [crashlytics.count_issues]
    filters:
      crashlytics.is_fatal: 'Yes'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 9
    col: 0
    width: 6
    height: 2
  - title: Number of Issues
    name: Number of Issues (2)
    model: crashlytics
    explore: crashlytics
    type: single_value
    fields: [crashlytics.count_issues]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 9
    col: 6
    width: 6
    height: 2
  - name: " (4)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <h1 style="text-align:center">🩺  Application Health</h1>
      <h3 style="text-align:center">High Level Metrics to Understand Overall Application Health</h3>
    row: 0
    col: 0
    width: 24
    height: 3
  - title: Issues by First Date Seen
    name: Issues by First Date Seen
    model: crashlytics
    explore: crashlytics
    type: looker_line
    fields: [crashlytics.count_issues, crashlytics.user_count, issue_facts.first_date_date]
    fill_fields: [issue_facts.first_date_date]
    filters:
      issue_facts.first_date_week: 6 months
    sorts: [issue_facts.first_date_date desc]
    limit: 500
    column_limit: 50
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
    show_null_points: false
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: crashlytics.count_issues,
            id: crashlytics.count_issues, name: Number of Issues}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: crashlytics.user_count,
            id: crashlytics.user_count, name: Number of Users Affected}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: true
    defaults_version: 1
    listen: {}
    row: 20
    col: 0
    width: 12
    height: 5
  - title: Statistics for Latest OS Versions
    name: Statistics for Latest OS Versions
    model: crashlytics
    explore: crashlytics
    type: looker_column
    fields: [crashlytics.count, crashlytics.count_issues, crashlytics.user_count,
      crashlytics.operating_system__display_version]
    sorts: [crashlytics.operating_system__display_version desc]
    limit: 15
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
            name: Number of Errors}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: left, series: [{axisId: crashlytics.count_issues, id: crashlytics.count_issues,
            name: Number of Issues}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: '', orientation: right,
        series: [{axisId: crashlytics.user_count, id: crashlytics.user_count, name: Number
              of Users Affected}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    series_types: {}
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    defaults_version: 1
    listen: {}
    row: 11
    col: 12
    width: 12
    height: 9
  - title: Issues by Date Experienced
    name: Issues by Date Experienced
    model: crashlytics
    explore: crashlytics
    type: looker_line
    fields: [crashlytics.count_issues, crashlytics.user_count, crashlytics.event_timestamp_date]
    fill_fields: [crashlytics.event_timestamp_date]
    filters:
      crashlytics.event_timestamp_date: 6 months
    sorts: [crashlytics.event_timestamp_date desc]
    limit: 500
    column_limit: 50
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
    show_null_points: false
    interpolation: monotone
    y_axes: [{label: '', orientation: left, series: [{axisId: crashlytics.count_issues,
            id: crashlytics.count_issues, name: Number of Issues}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: crashlytics.user_count,
            id: crashlytics.user_count, name: Number of Users Affected}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    hide_legend: true
    defaults_version: 1
    listen: {}
    row: 25
    col: 0
    width: 12
    height: 5
  - title: Days to Resolve Issues
    name: Days to Resolve Issues
    model: crashlytics
    explore: crashlytics
    type: looker_bar
    fields: [crashlytics.count_issues, issue_facts.days_to_resolve_tier, crashlytics.user_count]
    fill_fields: [issue_facts.days_to_resolve_tier]
    sorts: [issue_facts.days_to_resolve_tier]
    limit: 500
    column_limit: 50
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: crashlytics.user_count,
            id: crashlytics.user_count, name: Number of Users Affected}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: '', orientation: bottom, series: [{axisId: crashlytics.count_issues,
            id: crashlytics.count_issues, name: Number of Issues}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types:
      crashlytics.user_count: line
    series_colors:
      crashlytics.user_count: "#1A73E8"
      crashlytics.count_issues: "#F9AB00"
    show_null_points: true
    defaults_version: 1
    listen: {}
    row: 11
    col: 6
    width: 6
    height: 9
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
