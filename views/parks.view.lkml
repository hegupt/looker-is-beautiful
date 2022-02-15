view: parks {
  sql_table_name: `national_parks.parks`
    ;;

  measure: total_acres {
    type: sum
    sql: ${TABLE}.Acres ;;
  }

  dimension: location {
    type: location
    sql_latitude: ${TABLE}.Latitude ;;
    sql_longitude: ${TABLE}.Longitude ;;
  }

  dimension: longitude {
    type: string
    sql: ${TABLE}.Longitude;;
  }

  dimension: latitude {
    type: string
    sql: ${TABLE}.Latitude;;
  }

  dimension: park_code {
    type: string
    sql: ${TABLE}.Park_Code ;;
  }

  dimension: park_name {
    primary_key: yes
    label: "Park Name"
    type: string
    sql: ${TABLE}.park_name ;;
    link: {
      label: "Park Link"
      url: "https://www.nps.gov/{{parks.park_code}}/index.htm"
      icon_url: "https://www.arcgis.com/sharing/rest/content/items/b9ea7ae3fd3d4cfcbbd3b3052df6b787/resources/NPS-Transparent-Logo__1598367821603.png"
    }
    link: {
      label: "Calendar"
      url: "https://www.nps.gov/{{parks.park_code}}/planyourvisit/calendar.htm"
      icon_url: "https://www.yellowstonenationalparklodges.com/content/uploads/2018/10/NPS-Icon-PNG.png"
    }
  }

  dimension_group: established {
    type: time
    timeframes: [
      month_name,
      date,
      year,
    ]
    label: "Established"
    sql: ${TABLE}.established ;;
  }

  dimension: world_heritage_site {
    type: yesno
    sql: ${TABLE}.world_heritage_site ;;
  }

  measure: total_est_annual_vistors {
    type: sum
    sql: ${TABLE}.est_annual_visitors ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }

  measure: count {
    type: count
    drill_fields: [park_name]
  }

  dimension: art {
    type: string
    sql:  ${TABLE}.art;;
    html: <img height="300px" src="{{value}}" /> ;;
  }
}
