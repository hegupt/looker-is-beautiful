view: parks {
  sql_table_name: `national_parks.parks`
    ;;

  measure: acres {
    type: sum
    sql: ${TABLE}.Acres ;;
  }

  dimension: location {
    type: location
    sql_latitude:${TABLE}.Latitude ;;
    sql_longitude:${TABLE}.Longitude ;;
  }

  dimension: longitude {
    type: string
    sql:${TABLE}.Longitude;;
  }

  dimension: latitude {
    type: string
    sql:${TABLE}.Latitude;;
  }

  dimension: park_code {
    type: string
    sql: ${TABLE}.Park_Code ;;
  }

  dimension: park_name {
    label: "Park Name"
    type: string
    sql: ${TABLE}.Park_Name ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: [park_name]
  }
}
