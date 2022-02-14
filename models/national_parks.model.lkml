connection: "national_parks"

# include all the views
include: "/views/**/*.view"
# include all dashboards
include: "/dashboards/**/*.dashboard"

datagroup: national_parks_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: national_parks_default_datagroup

explore: parks {
  label: "Parks"
  join: trails {
    type: left_outer
    relationship: many_to_many
    sql_on: ${trails.area_name} = ${parks.park_name} ;;
  }
  join: park_species {
    view_label: "Species"
    type: left_outer
    relationship: many_to_many
    sql_on: ${park_species.park_name} = ${parks.park_name} ;;
  }
  join: park_climate {
    view_label: "Climate"
    type: left_outer
    relationship: one_to_one
    sql_on: ${parks.park_name} = ${park_climate.park} ;;
  }
  join: guides {
    view_label: "Activity Guides"
    type: left_outer
    relationship: one_to_many
    sql_on: ${parks.park_code} = upper(${guides.park}) ;;
  }
}

explore: trails {
  label: "Trails"
}

explore: park_climate {
  label: "Climates"
}

explore: park_species {
  label: "Species"
}

explore: guides {
  label: "Activity Guides"
}
