- dashboard: trail_finder
  title: Trail Finder
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Map
    name: Map
    model: national_parks
    explore: parks
    type: looker_map
    fields: [parks.park_name, parks.location, count_of_trail_id]
    sorts: [parks.park_name]
    limit: 500
    dynamic_fields: [{category: measure, expression: '', label: Count of Trails, based_on: trails.trail_id,
        _kind_hint: measure, measure: count_of_trails, type: count_distinct, _type_hint: count_distinct},
      {measure: count_of_trail_id, based_on: trails.trail_id, expression: '', label: Count
          of Trail ID, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: outdoors
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: leaf
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_marker_radius_min: 1
    map_marker_radius_max: 10
    series_types: {}
    defaults_version: 1
    listen:
      State: parks.state
      Features: trails.features
      Length: trails.length
      Activities: trails.activities
    row: 0
    col: 0
    width: 16
    height: 14
  - title: Trails
    name: Trails
    model: national_parks
    explore: parks
    type: looker_grid
    fields: [parks.park_name, trails.name, trails.features, trails.length, trails.elevation_gain,
      trails.avg_rating]
    sorts: [trails.avg_rating desc]
    limit: 500
    dynamic_fields: [{category: measure, expression: '', label: Count of Trails, based_on: trails.trail_id,
        _kind_hint: measure, measure: count_of_trails, type: count_distinct, _type_hint: count_distinct},
      {measure: count_of_trail_id, based_on: trails.trail_id, expression: '', label: Count
          of Trail ID, type: count_distinct, _kind_hint: measure, _type_hint: number}]
    show_view_names: true
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
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      trails.avg_rating:
        is_active: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: outdoors
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: leaf
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map_marker_radius_min: 1
    map_marker_radius_max: 10
    series_types: {}
    defaults_version: 1
    listen:
      State: parks.state
      Features: trails.features
      Length: trails.length
      Activities: trails.activities
    row: 14
    col: 0
    width: 16
    height: 14
  filters:
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: national_parks
    explore: parks
    listens_to_filters: []
    field: parks.state
  - name: Features
    title: Features
    type: field_filter
    default_value: "%wild-flowers%"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: national_parks
    explore: parks
    listens_to_filters: []
    field: trails.features
  - name: Length
    title: Length
    type: field_filter
    default_value: "[0,50]"
    allow_multiple_values: true
    required: false
    ui_config:
      type: range_slider
      display: inline
      options:
        min: 0
        max: 50
    model: national_parks
    explore: parks
    listens_to_filters: []
    field: trails.length
  - name: Activities
    title: Activities
    type: field_filter
    default_value: "%hiking%"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: national_parks
    explore: parks
    listens_to_filters: []
    field: trails.activities
