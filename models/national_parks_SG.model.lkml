connection: "sg_ll"

# include all the views
include: "/views/**/*.view"

datagroup: national_parks_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: national_parks_default_datagroup

explore: park_species {
  label: "Species"
}

explore: parks {
  label: "Parks - Combined"
  join: trails {
    type: left_outer
    relationship: many_to_many
    sql_on: ${trails.area_name} = ${parks.park_name} ;;
  }
  join: park_species {
    type: left_outer
    relationship: many_to_many
    sql_on: ${park_species.park_name} = ${parks.park_name} ;;
  }
}

explore: trails {
  label: "Trails"
}
