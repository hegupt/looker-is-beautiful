- dashboard: pokemon_gotta_analyze_them_all
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
      pokemon.attack, pokemon.defense, pokemon.pokedex_number, pokemon.capture_rate,
      pokemon.against_water, pokemon.against_steel, pokemon.against_rock, pokemon.against_psychic,
      pokemon.against_poison, pokemon.against_normal, pokemon.against_ice, pokemon.against_ground,
      pokemon.against_grass, pokemon.against_ghost, pokemon.against_flying, pokemon.against_fire,
      pokemon.against_fight, pokemon.against_electric, pokemon.against_fairy, pokemon.against_dragon,
      pokemon.against_dark, pokemon.against_bug]
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
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
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
      Classfication: pokemon.classfication
      Types: pokemon.type
      Is Legendary (Yes / No): pokemon.is_legendary
    row: 0
    col: 0
    width: 24
    height: 11
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
      Classfication: pokemon.classfication
      Types: pokemon.type
      Is Legendary (Yes / No): pokemon.is_legendary
    row: 17
    col: 0
    width: 12
    height: 7
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
      Classfication: pokemon.classfication
      Types: pokemon.type
      Is Legendary (Yes / No): pokemon.is_legendary
    row: 31
    col: 0
    width: 24
    height: 7
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
      Classfication: pokemon.classfication
      Types: pokemon.type
      Is Legendary (Yes / No): pokemon.is_legendary
    row: 11
    col: 0
    width: 12
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
      Classfication: pokemon.classfication
      Types: pokemon.type
      Is Legendary (Yes / No): pokemon.is_legendary
    row: 11
    col: 12
    width: 12
    height: 6
  - title: By Generation
    name: By Generation
    model: pokemon
    explore: pokemon
    type: looker_column
    fields: [pokemon.attack, pokemon.defense, pokemon.generation]
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
      Classfication: pokemon.classfication
      Types: pokemon.type
      Is Legendary (Yes / No): pokemon.is_legendary
    row: 17
    col: 12
    width: 12
    height: 7
  - title: Attack and Defense by Speed
    name: Attack and Defense by Speed
    model: pokemon
    explore: pokemon
    type: looker_scatter
    fields: [pokemon.attack, pokemon.defense, pokemon.speed]
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
      Classfication: pokemon.classfication
      Types: pokemon.type
      Is Legendary (Yes / No): pokemon.is_legendary
    row: 24
    col: 0
    width: 24
    height: 7
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
  - name: Classfication
    title: Classfication
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: pokemon
    explore: pokemon
    listens_to_filters: []
    field: pokemon.classfication
  - name: Types
    title: Types
    type: field_filter
    default_value: "%grass%"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: pokemon
    explore: pokemon
    listens_to_filters: []
    field: pokemon.type
  - name: Is Legendary (Yes / No)
    title: Is Legendary (Yes / No)
    type: field_filter
    default_value: 'Yes'
    allow_multiple_values: true
    required: false
    ui_config:
      type: radio_buttons
      display: popover
      options: []
    model: pokemon
    explore: pokemon
    listens_to_filters: []
    field: pokemon.is_legendary
