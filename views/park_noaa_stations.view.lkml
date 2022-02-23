# The name of this view in Looker is "Park Noaa Stations"
view: park_noaa_stations {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `coconut-crab.national_parks.park_noaa_stations`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Closest Station" in Explore.

  dimension: closest_station {
    type: yesno
    sql: ${TABLE}.closest_station ;;
  }

  measure: distance {
    type: average
    sql: ${TABLE}.distance ;;
  }

  dimension: park_name {
    type: string
    sql: ${TABLE}.park_name ;;
  }

  dimension: station_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.station_id ;;
  }

  dimension: station_name {
    type: string
    sql: ${TABLE}.station_name ;;
  }

  measure: count {
    type: count
    drill_fields: [station_name, park_name]
  }
}
