view: city_data {
  sql_table_name: `coconut-crab.zillow.city_data`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    hidden: yes
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: city_ascii {
    type: string
    sql: ${TABLE}.city_ascii ;;
    hidden: yes
  }

  dimension: county_fips {
    type: number

    description: "County FIPS code, https://en.wikipedia.org/wiki/FIPS_county_code"
    sql: ${TABLE}.county_fips ;;
  }

  dimension: county_name {
    type: string
    sql: ${TABLE}.county_name ;;
  }

  measure: density {
    type: average
    sql: ${TABLE}.density ;;
  }

  dimension: incorporated {
    type: yesno
    sql: ${TABLE}.incorporated ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.lat ;;
    hidden: yes
  }

  dimension: lng {
    type: number
    sql: ${TABLE}.lng ;;
    hidden: yes
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.lat ;;
    sql_longitude: ${TABLE}.lng ;;
  }

  dimension: military {
    type: yesno
    sql: ${TABLE}.military ;;
  }

  measure: population {
    type: sum
    sql: ${TABLE}.population ;;
  }

  dimension: state_code {
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
