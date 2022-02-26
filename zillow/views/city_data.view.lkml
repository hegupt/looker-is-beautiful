view: city_data {
  sql_table_name: `coconut-crab.zillow.city_data`
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

  dimension: city_ascii {
    type: string
    sql: ${TABLE}.city_ascii ;;
  }

  dimension: county_fips {
    type: number
    sql: ${TABLE}.county_fips ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }

  dimension: density {
    type: number
    sql: ${TABLE}.density ;;
  }

  dimension: incorporated {
    type: yesno
    sql: ${TABLE}.incorporated ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
  }

  dimension: military {
    type: yesno
    sql: ${TABLE}.military ;;
  }

  dimension: population {
    type: number
    sql: ${TABLE}.population ;;
  }

  dimension: ranking {
    type: number
    sql: ${TABLE}.ranking ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: state_id {
    type: string
    sql: ${TABLE}.state_id ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

  measure: count {
    type: count
    drill_fields: [id, county_name, state_name]
  }
}
