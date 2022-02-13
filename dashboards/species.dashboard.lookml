- dashboard: species_finder
  title: Species Finder
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Map
    name: Map
    model: national_parks
    explore: parks
    type: looker_map
    fields: [parks.park_name, parks.location, count_of_species_id]
    filters: {}
    sorts: [parks.park_name]
    limit: 500
    dynamic_fields: [{measure: count_of_species_id, based_on: park_species.species_id,
        expression: '', label: Count of Species ID, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
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
      Category: park_species.category
      State: parks.state
      Common Names: park_species.common_names
    row: 0
    col: 0
    width: 16
    height: 14
  filters:
  - name: Category
    title: Category
    type: field_filter
    default_value: Bird
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: popover
      options: []
    model: national_parks
    explore: parks
    listens_to_filters: []
    field: park_species.category
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
  - name: Common Names
    title: Common Names
    type: field_filter
    default_value: "%Raven%"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: national_parks
    explore: parks
    listens_to_filters: []
    field: park_species.common_names
