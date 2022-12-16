view: days_on_zillow {
  sql_table_name: `zillow.DaysOnZillow_Formatted`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  dimension: days_on_market {
    type: number
    sql: ${TABLE}.daysOnMarket ;;
  }

  measure: days_on_market_min {
    type: min
    sql: ${TABLE}.daysOnMarket ;;
  }

  measure: days_on_market_avg {
    type: average
    sql: ${TABLE}.daysOnMarket ;;
  }

  measure: days_on_market_max {
    type: max
    sql: ${TABLE}.daysOnMarket ;;
  }

  measure: days_on_market_75_percentile {
    type: percentile
    percentile: 75
    sql: ${TABLE}.daysOnMarket ;;
  }

  measure: days_on_market_25_percentile {
    type: percentile
    percentile: 25
    sql: ${TABLE}.daysOnMarket ;;
  }
}
