connection: "looker-you-beautiful"

# include all the views
include: "../views/**/*.view"
# include all dashboards
include: "../dashboards/**/*.dashboard"

datagroup: national_parks_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: national_parks_default_datagroup

map_layer: national_parks_layer {
  file: "/national_parks/geo_info/natparks.topojson"
  property_key: "UNIT_CODE"
}

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
    view_label: "Historical Avg Climate"
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
  join: park_noaa_stations {
    view_label: "Weather Stations"
    type: left_outer
    relationship: one_to_many
    sql_on: ${parks.park_name} = ${park_noaa_stations.park_name} ;;
  }
  join: detailed_weather {
    view_label: "Detailed Climate Data"
    type: left_outer
    relationship: one_to_many
    sql_on: ${park_noaa_stations.station_id} = ${detailed_weather.stn} and
    ${detailed_weather.month} = ${park_climate.month};;
  }
  join: climbing {
    view_label: "Climbing Routes"
    relationship: many_to_many
    sql_on: ${parks.park_name} = ${climbing.park} ;;
  }
  join: monthly_visits {
    view_label: "Monthly Visits"
    relationship: many_to_many
    sql_on: ${parks.park_name} = ${monthly_visits.park} and
    ${detailed_weather.month} = ${monthly_visits.month} and
    ${detailed_weather.year} = CAST(${monthly_visits.year} AS STRING);;
  }
}

explore: park_climate {
  label: "Climates"
  join: park_noaa_stations {
    view_label: "Weather Stations"
    type: left_outer
    relationship: one_to_many
    sql_on: ${park_climate.park} = ${park_noaa_stations.park_name} ;;
  }
  join: detailed_weather {
    view_label: "Detailed Climate Data"
    type: left_outer
    relationship: one_to_many
    sql_on: ${park_noaa_stations.station_id} = ${detailed_weather.stn} and
      ${detailed_weather.month} = ${park_climate.month};;
  }
}

explore: park_species {
  label: "Species"
}

explore: guides {
  label: "Activities"
  view_label: "Activities"
  join: trails {
    view_label: "Trails"
    relationship: many_to_many
    sql_on: ${guides.park} = ${trails.area_name} ;;
  }
  join: climbing {
    view_label: "Climbing Routes"
    relationship: many_to_many
    sql_on: ${guides.park} = ${climbing.park} ;;
  }
}

explore: monthly_visits {
  label: "Visit Stats"
}
