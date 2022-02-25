connection: "looker-you-beautiful"

# include all the views
include: "../views/**/*.view"
# include: "../dashboards/**/*.dashboard"

datagroup: zillow_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

explore: city_median_rental_prices {
  label: "Rental prices"
  description: "Rental prices based on cities"
  query: homesByType {
    dimensions: [city_median_rental_prices.type]
    measures: [city_median_rental_prices.count]
  }
}

explore: zillow_housing_value_index {
  label: "Housing Value Index"
  description: "Zillow Housing Value Index of US Cities"
}

explore: days_on_zillow {
  label: "Days on Zillow before Sale"
  description: "Data around how long home sales took once posted on Zillow"
}
