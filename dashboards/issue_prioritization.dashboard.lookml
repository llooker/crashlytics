- dashboard: issue_prioritization
  title: Issue Prioritization
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Issues on Latest Application Versions
    name: Issues on Latest Application Versions
    model: crashlytics
    explore: crashlytics
    type: looker_column
    fields: [crashlytics.count_issues, crashlytics.application__display_version]
    filters: {}
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
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: crashlytics.count_issues,
            id: crashlytics.count_issues, name: Number of Issues}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    defaults_version: 1
    listen:
      Issue First Seen: issue_facts.first_date_date
      Issue Last Seen: issue_facts.last_date_date
      Application Display Version: crashlytics.application__display_version
      Operating System Display Version: crashlytics.operating_system__display_version
      Process State: crashlytics.process_state
    row: 19
    col: 16
    width: 8
    height: 6
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <h1 style="text-align:center">⏱  Issue Prioritization</h1>
      <h3 style="text-align:center">Determine which Issues Should be the Focal Point</h3>
      <p style="text-align:center">👇Drill into the number of issues and click on issue title to see details about the issues and investigate further</p>
    row: 0
    col: 0
    width: 24
    height: 4
  - title: Issues on Latest OS Versions
    name: Issues on Latest OS Versions
    model: crashlytics
    explore: crashlytics
    type: looker_column
    fields: [crashlytics.count_issues, crashlytics.operating_system__display_version]
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
    y_axes: [{label: !!null '', orientation: left, series: [{axisId: crashlytics.count_issues,
            id: crashlytics.count_issues, name: Number of Issues}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    defaults_version: 1
    listen:
      Issue First Seen: issue_facts.first_date_date
      Issue Last Seen: issue_facts.last_date_date
      Application Display Version: crashlytics.application__display_version
      Operating System Display Version: crashlytics.operating_system__display_version
      Process State: crashlytics.process_state
    row: 19
    col: 7
    width: 9
    height: 6
  - title: New Issues (Past 6 Hours)
    name: New Issues (Past 6 Hours)
    model: crashlytics
    explore: crashlytics
    type: single_value
    fields: [crashlytics.count_issues]
    filters:
      crashlytics.event_timestamp_time: 6 hours
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
      Issue Last Seen: issue_facts.last_date_date
      Application Display Version: crashlytics.application__display_version
      Operating System Display Version: crashlytics.operating_system__display_version
      Process State: crashlytics.process_state
    row: 8
    col: 0
    width: 7
    height: 2
  - title: New Issues (Past 1 Day)
    name: New Issues (Past 1 Day)
    model: crashlytics
    explore: crashlytics
    type: single_value
    fields: [crashlytics.count_issues]
    filters:
      issue_facts.first_date_date: 1 days
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
      Issue Last Seen: issue_facts.last_date_date
      Application Display Version: crashlytics.application__display_version
      Operating System Display Version: crashlytics.operating_system__display_version
      Process State: crashlytics.process_state
    row: 6
    col: 0
    width: 7
    height: 2
  - title: Number of Issues (Controlled by Filter)
    name: Number of Issues (Controlled by Filter)
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
      Issue First Seen: issue_facts.first_date_date
      Issue Last Seen: issue_facts.last_date_date
      Application Display Version: crashlytics.application__display_version
      Operating System Display Version: crashlytics.operating_system__display_version
      Process State: crashlytics.process_state
    row: 4
    col: 0
    width: 7
    height: 2
  - title: Issues by First Date Seen (Past 4 Weeks)
    name: Issues by First Date Seen (Past 4 Weeks)
    model: crashlytics
    explore: crashlytics
    type: looker_line
    fields: [crashlytics.count_issues, crashlytics.user_count, issue_facts.first_date_date]
    fill_fields: [issue_facts.first_date_date]
    filters:
      issue_facts.first_date_date: 4 weeks
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
    show_null_points: true
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
    listen:
      Issue Last Seen: issue_facts.last_date_date
      Application Display Version: crashlytics.application__display_version
      Operating System Display Version: crashlytics.operating_system__display_version
      Process State: crashlytics.process_state
    row: 4
    col: 7
    width: 17
    height: 5
  - title: Issues by Number of Users Affected
    name: Issues by Number of Users Affected
    model: crashlytics
    explore: crashlytics
    type: looker_bar
    fields: [crashlytics.user_count, crashlytics.issue_title, crashlytics.issue_id,
      crashlytics.count]
    filters: {}
    sorts: [crashlytics.user_count desc]
    limit: 15
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: !!null '', orientation: top, series: [{axisId: crashlytics.user_count,
            id: crashlytics.user_count, name: Number of Users Affected}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: bottom, series: [{axisId: crashlytics.count,
            id: crashlytics.count, name: Number of Errors}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    hide_legend: false
    series_types:
      crashlytics.count: line
    show_null_points: true
    interpolation: monotone
    defaults_version: 1
    hidden_fields: [crashlytics.issue_id]
    listen:
      Issue First Seen: issue_facts.first_date_date
      Issue Last Seen: issue_facts.last_date_date
      Application Display Version: crashlytics.application__display_version
      Operating System Display Version: crashlytics.operating_system__display_version
      Process State: crashlytics.process_state
    row: 10
    col: 0
    width: 7
    height: 9
  - title: Issues by Last Date Seen (Past 4 Weeks)
    name: Issues by Last Date Seen (Past 4 Weeks)
    model: crashlytics
    explore: crashlytics
    type: looker_line
    fields: [crashlytics.count_issues, crashlytics.user_count, issue_facts.last_date_date]
    fill_fields: [issue_facts.last_date_date]
    filters:
      issue_facts.last_date_date: 4 weeks
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
    listen:
      Issue First Seen: issue_facts.first_date_date
      Application Display Version: crashlytics.application__display_version
      Operating System Display Version: crashlytics.operating_system__display_version
      Process State: crashlytics.process_state
    row: 9
    col: 7
    width: 17
    height: 5
  - title: Issues by Process State
    name: Issues by Process State
    model: crashlytics
    explore: crashlytics
    type: looker_pie
    fields: [crashlytics.count_issues, crashlytics.process_state]
    sorts: [crashlytics.count_issues desc]
    limit: 15
    column_limit: 50
    value_labels: legend
    label_type: labPer
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
    inner_radius: 50
    defaults_version: 1
    listen: {}
    row: 19
    col: 0
    width: 7
    height: 6
  - title: Issues by Last Date Seen (Past 4 Weeks) (Copy)
    name: Issues by Last Date Seen (Past 4 Weeks) (Copy)
    model: crashlytics
    explore: crashlytics
    type: looker_line
    fields: [crashlytics.count_issues, crashlytics.user_count, issue_facts.last_date_date]
    fill_fields: [issue_facts.last_date_date]
    filters:
      issue_facts.last_date_date: 4 weeks
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
    listen:
      Issue First Seen: issue_facts.first_date_date
      Application Display Version: crashlytics.application__display_version
      Operating System Display Version: crashlytics.operating_system__display_version
      Process State: crashlytics.process_state
    row: 14
    col: 7
    width: 17
    height: 5
  filters:
  - name: Issue First Seen
    title: Issue First Seen
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: inline
      options: []
    model: crashlytics
    explore: crashlytics
    listens_to_filters: []
    field: issue_facts.first_date_date
  - name: Issue Last Seen
    title: Issue Last Seen
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: inline
      options: []
    model: crashlytics
    explore: crashlytics
    listens_to_filters: []
    field: issue_facts.last_date_date
  - name: Application Display Version
    title: Application Display Version
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
    field: crashlytics.application__display_version
  - name: Operating System Display Version
    title: Operating System Display Version
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
    field: crashlytics.operating_system__display_version
  - name: Process State
    title: Process State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options: []
    model: crashlytics
    explore: crashlytics
    listens_to_filters: []
    field: crashlytics.process_state
