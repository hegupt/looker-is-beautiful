connection: "looker-you-beautiful"
label: "Cities"

# include all the views
include: "../views/**/*.view"
# include: "../dashboards/**/*.dashboard"

datagroup: zillow_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

explore: city_data {
  label: "City Data"
  join: zipcodes {
    view_label: "zipcodes"
    type: left_outer
    relationship: one_to_many
    sql_on: ${zipcodes.city} = ${city_data.city} AND ${zipcodes.state} = ${city_data.state_id};;
  }
  join: airbnb{
    view_label: "Airbnbs within city range"
    type: left_outer
    relationship: one_to_many
    sql_on: ST_DISTANCE(ST_GEOGPOINT(${airbnb.longitude}, ${airbnb.latitude}),ST_GEOGPOINT(${city_data.lng}, ${city_data.lat}) ) < 40233 /* 25 miles */;;
  }
  join:  city_median_rental_prices{
    view_label: "Rental Prices"
    #fields: [airbnb.availability_365,airbnb.calculated_host_listings_count
     # ,airbnb.count,airbnb.host_id,airbnb.host_name,airbnb.id,airbnb.last_review,]
    type: left_outer
    relationship: one_to_many
    sql_on: ${city_data.city} = ${city_median_rental_prices.city} and ${city_data.state_id} = ${city_median_rental_prices.state};;
  }
  join:  zillow_housing_value_index{
    view_label: "Home Values"
    type: left_outer
    relationship: one_to_many
    sql_on: ${city_data.city} = ${zillow_housing_value_index.city} and ${city_data.state_id} = ${zillow_housing_value_index.state};;
  }
}

explore: airbnb {
  label: "Airbnb Data"
}

explore: city_median_rental_prices {
  label: "Zillow - Rental prices"
  description: "Rental prices based on cities"
  query: homesByType {
    dimensions: [city_median_rental_prices.type]
    measures: [city_median_rental_prices.count]
  }
}

explore: zillow_housing_value_index {
  label: "Zillow - Housing Value Index"
  description: "Zillow Housing Value Index of US Cities"
}

explore: days_on_zillow {
  label: "Zillow - Days on Zillow before Sale"
  description: "Data around how long home sales took once posted on Zillow"
}
