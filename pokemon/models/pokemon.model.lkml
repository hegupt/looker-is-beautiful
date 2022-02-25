connection: "looker-you-beautiful"
label: "Pokemon"

# include all the views
include: "../views/**/*.view"
include: "../dashboards/**/*.dashboard"


datagroup: pokemon_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pokemon_default_datagroup

explore: pokemon {
  label: "Pokedex"
}
