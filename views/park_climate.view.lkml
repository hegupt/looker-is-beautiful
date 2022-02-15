# The name of this view in Looker is "Park Climate"
view: park_climate {
  label: "Historical Average Monthly Climate"
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `coconut-crab.national_parks.park_climate`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Avg Barometric Pressure" in Explore.

  measure: avg_barometric_pressure {
    type: average
    sql: ${TABLE}.avg_barometric_pressure ;;
    value_format: "0"
    description: "measured in inches"
  }

  measure: avg_cloud_cover {
    type: average
    sql: ${TABLE}.avg_cloud_cover ;;
    value_format: "0\%"
  }

  measure: avg_dry_days {
    type: average
    sql: ${TABLE}.avg_dry_days ;;
    value_format: "0"
  }

  measure: avg_fog_days {
    type: average
    sql: ${TABLE}.avg_fog_days ;;
    value_format: "0"
  }

  measure: avg_humidity {
    type: average
    sql: ${TABLE}.avg_humidity ;;
    value_format: "0\%"
  }

  measure: avg_precip_days {
    type: average
    sql: ${TABLE}.avg_precip_days ;;
    value_format: "0"
  }

  measure: avg_precipitation {
    type: average
    sql: ${TABLE}.avg_precipitation ;;
    value_format: "0.0"
    description: "measured in inches"
  }

  measure: avg_snow_days {
    type: average
    sql: ${TABLE}.avg_snow_days ;;
    value_format: "0"
  }

  measure: avg_sun_hours {
    type: average
    sql: ${TABLE}.avg_sun_hours ;;
    value_format: "0"
  }

  measure: avg_tmp_high {
    type: average
    sql: ${TABLE}.avg_tmp_high ;;
    value_format: "0.0"
    description: "measured in F"
  }

  measure: avg_tmp_low {
    type: average
    sql: ${TABLE}.avg_tmp_low ;;
    value_format: "0.0"
    description: "measured in F"
  }

  measure: avg_uv_index {
    type: average
    sql: ${TABLE}.avg_uv_index ;;
    value_format: "0.0"
  }

  measure: avg_wind {
    type: average
    sql: ${TABLE}.avg_wind_mph ;;
    value_format: "0"
    description: "measured in mph"
  }

  measure: highest_month_barometric_pressure {
    type: max
    sql: ${TABLE}.avg_barometric_pressure ;;
    value_format: "0"
    description: "measured in inches"
  }

  measure: most_overcast_month_cloud_cover {
    type: max
    sql: ${TABLE}.avg_cloud_cover ;;
    value_format: "0\%"
  }

  measure: driest_month_avg_dry_days {
    type: min
    sql: ${TABLE}.avg_dry_days ;;
    value_format: "0"
  }

  measure: foggiest_month_fog_days {
    type: max
    sql: ${TABLE}.avg_fog_days ;;
    value_format: "0"
  }

  measure: most_humid_month_avg_humidity {
    type: max
    sql: ${TABLE}.avg_humidity ;;
    value_format: "0\%"
  }

  measure: rainiest_month_precip_days {
    type: max
    sql: ${TABLE}.avg_precip_days ;;
    value_format: "0"
  }

  measure: rainiest_month_avg_precipitation {
    type: max
    sql: ${TABLE}.avg_precipitation ;;
    value_format: "0.0"
    description: "measured in inches"
  }

  measure: snowiest_month_avg_snow_days {
    type: max
    sql: ${TABLE}.avg_snow_days ;;
    value_format: "0"
  }

  measure: clearest_month_avg_sun_hours {
    type: max
    sql: ${TABLE}.avg_sun_hours ;;
    value_format: "0"
  }

  measure: hottest_month_avg_tmp_high {
    type: max
    sql: ${TABLE}.avg_tmp_high ;;
    value_format: "0.0"
    description: "measured in F"
  }

  measure: coldest_month_avg_tmp_low {
    type: min
    sql: ${TABLE}.avg_tmp_low ;;
    value_format: "0.0"
    description: "measured in F"
  }

  measure: max_month_uv_index {
    type: max
    sql: ${TABLE}.avg_uv_index ;;
    value_format: "0.0"
  }

  measure: windiest_month_avg_wind {
    type: max
    sql: ${TABLE}.avg_wind_mph ;;
    value_format: "0"
    description: "measured in mph"
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
    primary_key: yes
  }

  dimension: park {
    label: "Park Name"
    type: string
    sql: ${TABLE}.park ;;
  }
}
