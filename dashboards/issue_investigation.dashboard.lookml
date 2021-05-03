- dashboard: issue_investigation
  title: Issue Investigation
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Errors by OS Version
    name: Errors by OS Version
    model: crashlytics
    explore: crashlytics
    type: looker_column
    fields: [crashlytics.count, crashlytics.operating_system__display_version, crashlytics.user_count]
    sorts: [crashlytics.count desc]
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
            name: Number of Errors}], showLabels: false, showValues: false, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types:
      crashlytics.user_count: line
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
      Issue ID: crashlytics.issue_id
    row: 10
    col: 0
    width: 6
    height: 7
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <h1 style="text-align:center">🔍 Issue Investigation</h1>
      <h3 style="text-align:center">Focus on details of one issue</h3>
      <p style="text-align:center">☝️ Filter on an issue title to see details</p>
    row: 0
    col: 0
    width: 24
    height: 4
  - title: Number of Users Affected
    name: Number of Users Affected
    model: crashlytics
    explore: crashlytics
    type: single_value
    fields: [crashlytics.user_count]
    filters:
      issue_facts.first_date_date: 7 days
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
    series_types: {}
    listen:
      Issue ID: crashlytics.issue_id
    row: 7
    col: 0
    width: 6
    height: 3
  - title: Untitled
    name: Untitled
    model: crashlytics
    explore: crashlytics
    type: single_value
    fields: [crashlytics.issue_title, crashlytics.issue_subtitle]
    sorts: [crashlytics.issue_title]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Issue ID: crashlytics.issue_id
    row: 4
    col: 3
    width: 18
    height: 3
  - title: Last Date Issue Appeared
    name: Last Date Issue Appeared
    model: crashlytics
    explore: crashlytics
    type: single_value
    fields: [crashlytics.last_date]
    filters:
      issue_facts.first_date_date: 7 days
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
    series_types: {}
    listen:
      Issue ID: crashlytics.issue_id
    row: 7
    col: 15
    width: 9
    height: 3
  - title: First Date Issue Appeared
    name: First Date Issue Appeared
    model: crashlytics
    explore: crashlytics
    type: single_value
    fields: [crashlytics.first_date]
    filters:
      issue_facts.first_date_date: 7 days
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
    series_types: {}
    listen:
      Issue ID: crashlytics.issue_id
    row: 7
    col: 6
    width: 9
    height: 3
  - title: Errors by Application Version
    name: Errors by Application Version
    model: crashlytics
    explore: crashlytics
    type: looker_column
    fields: [crashlytics.count, crashlytics.application__display_version, crashlytics.user_count]
    sorts: [crashlytics.count desc]
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
    series_types:
      crashlytics.user_count: line
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
      Issue ID: crashlytics.issue_id
    row: 10
    col: 6
    width: 6
    height: 7
  - title: Errors by Device Orientation
    name: Errors by Device Orientation
    model: crashlytics
    explore: crashlytics
    type: looker_pie
    fields: [crashlytics.count, crashlytics.device_orientation]
    sorts: [crashlytics.count desc]
    limit: 15
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    series_labels:
      No - crashlytics.count: Not Fatal
      Yes - crashlytics.count: Fatal
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
      Issue ID: crashlytics.issue_id
    row: 10
    col: 12
    width: 6
    height: 7
  - title: Errors by Application Orientation
    name: Errors by Application Orientation
    model: crashlytics
    explore: crashlytics
    type: looker_pie
    fields: [crashlytics.count, crashlytics.app_orientation]
    sorts: [crashlytics.count desc]
    limit: 15
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    series_labels:
      No - crashlytics.count: Not Fatal
      Yes - crashlytics.count: Fatal
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
      Issue ID: crashlytics.issue_id
    row: 10
    col: 18
    width: 6
    height: 7
  - title: Errors by Event Time
    name: Errors by Event Time
    model: crashlytics
    explore: crashlytics
    type: looker_line
    fields: [crashlytics.count, crashlytics.event_timestamp_hour3, crashlytics.user_count]
    fill_fields: [crashlytics.event_timestamp_hour3]
    sorts: [crashlytics.event_timestamp_hour3 desc]
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: crashlytics.count, id: crashlytics.count,
            name: Number of Errors}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}, {label: !!null '',
        orientation: right, series: [{axisId: crashlytics.user_count, id: crashlytics.user_count,
            name: Number of Users Affected}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
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
      Issue ID: crashlytics.issue_id
    row: 17
    col: 0
    width: 24
    height: 6
  - title: Exceptions
    name: Exceptions
    model: crashlytics
    explore: crashlytics
    type: looker_grid
    fields: [crashlytics__exceptions.title, crashlytics.count, crashlytics__exceptions.exception_message]
    filters:
      crashlytics.issue_id: daf62cc36daae12b0a2db541716d45d3
    sorts: [crashlytics__exceptions.title]
    limit: 15
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    series_labels:
      No - crashlytics.count: Not Fatal
      Yes - crashlytics.count: Fatal
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    defaults_version: 1
    listen: {}
    row: 23
    col: 16
    width: 8
    height: 6
  - title: Threads
    name: Threads
    model: crashlytics
    explore: crashlytics
    type: looker_grid
    fields: [crashlytics__threads.title, crashlytics.count]
    filters:
      crashlytics.issue_id: daf62cc36daae12b0a2db541716d45d3
    sorts: [crashlytics.count desc]
    limit: 15
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    series_labels:
      No - crashlytics.count: Not Fatal
      Yes - crashlytics.count: Fatal
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    listen: {}
    row: 23
    col: 8
    width: 8
    height: 6
  - title: Bread Crumbs
    name: Bread Crumbs
    model: crashlytics
    explore: crashlytics
    type: looker_grid
    fields: [crashlytics__breadcrumbs.name, crashlytics__breadcrumbs__params.key,
      crashlytics__breadcrumbs__params.value, crashlytics.count]
    filters:
      crashlytics.issue_id: daf62cc36daae12b0a2db541716d45d3
    sorts: [crashlytics__breadcrumbs__params.key desc]
    limit: 15
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    series_labels:
      No - crashlytics.count: Not Fatal
      Yes - crashlytics.count: Fatal
    x_axis_gridlines: false
    y_axis_gridlines: false
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
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    listen: {}
    row: 23
    col: 0
    width: 8
    height: 6
  filters:
  - name: Issue ID
    title: Issue ID
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: crashlytics
    explore: crashlytics
    listens_to_filters: []
    field: crashlytics.issue_id
