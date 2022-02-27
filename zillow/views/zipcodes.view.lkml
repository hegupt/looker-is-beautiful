view: zipcodes {
  sql_table_name: `coconut-crab.zillow.zipcodes`
    ;;

  dimension: key {
    hidden: yes
    primary_key: yes
    sql: concat(${TABLE}.city,'-', ${TABLE}.state) ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }
}
