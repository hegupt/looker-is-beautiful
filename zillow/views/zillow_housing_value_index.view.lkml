view: zillow_housing_value_index {
  sql_table_name: `zillow.Zillow_Housing_Value_Index_Formatted`
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

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: metro {
    type: string
    sql: ${TABLE}.metro ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: size_rank {
    type: number
    sql: ${TABLE}.sizeRank ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: price_avg {
    type: average
    sql: ${TABLE}.price ;;
    value_format_name: usd
  }

  measure: price_median {
    type: median
    sql: ${TABLE}.price ;;
    value_format_name: usd
  }

  measure: price_high {
    type: max
    sql: ${TABLE}.price ;;
    value_format_name: usd
  }

  measure: price_low {
    type: min
    sql: ${TABLE}.price ;;
    value_format_name: usd
  }

  measure: price_25_percentile {
    type: percentile
    percentile: 25
    sql: ${TABLE}.price ;;
    value_format_name: usd
  }

  measure: price_75_percentile {
    type: percentile
    percentile: 75
    sql: ${TABLE}.price ;;
    value_format_name: usd
  }

  measure: price_5_percentile {
    type: percentile
    percentile: 5
    sql: ${TABLE}.price ;;
    value_format_name: usd
  }

  measure: price_95_percentile {
    type: percentile
    percentile: 95
    sql: ${TABLE}.price ;;
    value_format_name: usd
  }

}
