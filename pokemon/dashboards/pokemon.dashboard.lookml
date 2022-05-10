- dashboard: pokemon
  title: Pokemon! Gotta See them all!
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Pokemon! Gotta See them all!
    name: Pokemon! Gotta See them all!
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
    row: 0
    col: 0
    width: 24
    height: 17
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
