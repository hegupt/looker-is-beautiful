- dashboard: pokemon-stats
  title: Pokemon! Gotta analyze them all!
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Pokemon! Gotta analyze them all!
    name: Pokemon! Gotta analyze them all!
    model: pokemon
    explore: pokemon
    type: looker_grid
    fields: [pokemon.name, pokemon.japanese_name, pokemon.photo, pokemon.abilities,
      pokemon.attack, pokemon.defense, pokemon.pokedex_number]
    sorts: [pokemon.pokedex_number]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: false
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
      pokemon.attack:
        is_active: true
        palette:
          palette_id: ea375d20-fc17-de83-7a4a-5ed83c95c775
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#ffffff"
          - "#e60c28"
      pokemon.defense:
        is_active: true
        palette:
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
    series_text_format:
      pokemon.defense:
        fg_color: "#9334E6"
        bold: true
      pokemon.name:
        fg_color: "#1A73E8"
        bold: true
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    defaults_version: 1
    series_types: {}
    hidden_fields: [pokemon.pokedex_number]
    listen:
      Name: pokemon.name
    row: 19
    col: 0
    width: 24
    height: 14
  - title: By Classifications
    name: By Classifications
    model: pokemon
    explore: pokemon
    type: looker_column
    fields: [pokemon.classfication, pokemon.attack, pokemon.defense]
    sorts: [pokemon.attack desc]
    limit: 10
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    font_size: '12'
    series_types: {}
    series_colors:
      pokemon.attack: "#eb201d"
      pokemon.defense: "#2ca7cc"
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    defaults_version: 1
    listen:
      Name: pokemon.name
    row: 0
    col: 8
    width: 16
    height: 6
  - title: Attack and Defense by Weight
    name: Attack and Defense by Weight
    model: pokemon
    explore: pokemon
    type: looker_scatter
    fields: [pokemon.weight_kg, pokemon.attack, pokemon.defense]
    sorts: [pokemon.attack desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    font_size: '12'
    series_types: {}
    series_colors:
      pokemon.attack: "#eb201d"
      pokemon.defense: "#2ca7cc"
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    defaults_version: 1
    map: usa
    map_projection: ''
    listen:
      Name: pokemon.name
    row: 6
    col: 0
    width: 24
    height: 7
  - title: Top 10 abilities
    name: Top 10 abilities
    model: pokemon
    explore: pokemon
    type: looker_pie
    fields: [pokemon.abilities, pokemon.against_dark]
    sorts: [pokemon.against_dark desc]
    limit: 10
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    series_types: {}
    font_size: 12
    listen:
      Name: pokemon.name
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Best Attack Types
    name: Best Attack Types
    model: pokemon
    explore: pokemon
    type: looker_pie
    fields: [pokemon.type1, pokemon.attack]
    sorts: [pokemon.attack desc]
    limit: 10
    value_labels: legend
    label_type: labPer
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: 0c1d5739-6e9d-6fa9-a02d-d585688acf4c
        label: Custom
        type: continuous
        stops:
        - color: "#ffffff"
          offset: 0
        - color: "#e61722"
          offset: 100
      options:
        steps: 5
    rotation: true
    inner_radius: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    series_types: {}
    font_size: 12
    show_null_points: true
    interpolation: linear
    listen:
      Name: pokemon.name
    row: 13
    col: 0
    width: 13
    height: 6
  - title: Best Defense Types
    name: Best Defense Types
    model: pokemon
    explore: pokemon
    type: looker_pie
    fields: [pokemon.type1, pokemon.defense]
    limit: 10
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: fd60b158-1695-5254-7bed-0f20ad8af381
        label: Custom
        type: continuous
        stops:
        - color: "#ffffff"
          offset: 0
        - color: "#12a5e6"
          offset: 100
      options:
        steps: 5
    rotation: true
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    series_types: {}
    font_size: 12
    show_null_points: true
    interpolation: linear
    listen:
      Name: pokemon.name
    row: 13
    col: 13
    width: 11
    height: 6
  filters:
  - name: Name
    title: Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: pokemon
    explore: pokemon
    listens_to_filters: []
    field: pokemon.name
