# The name of this view in Looker is "Climbing"
view: climbing {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `coconut-crab.national_parks.climbing`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Area Latitude" in Explore.

  dimension: geolocation {
    type: location
    sql_longitude: ${TABLE}.Area_Longitude ;;
    sql_latitude: ${TABLE}.Area_Latitude ;;
  }

  measure: avg_stars {
    type: average
    sql: ${TABLE}.Avg_Stars ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.Length ;;
  }

  measure: total_climbeable_length {
    type: sum
    sql: ${TABLE}.Length ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}.Location ;;
  }

  measure: num_votes {
    type: sum
    sql: ${TABLE}.num_votes ;;
  }

  dimension: park {
    type: string
    sql: ${TABLE}.park ;;
  }

  measure: pitches {
    type: sum
    sql: ${TABLE}.Pitches ;;
  }

  dimension: protection {
    type: string
    sql: ${TABLE}.protection ;;
  }

  measure: avg_rating {
    type: average
    sql: ${TABLE}.Rating ;;
  }

  dimension: route {
    type: string
    sql: ${TABLE}.Route ;;
    link: {
      url: "{{climbing.url}}"
      label: "Visit Mountain Project"
      icon_url: "https://www.mountainproject.com/img/climb/logoHex2.svg"
    }
  }

  dimension: route_type {
    type: string
    sql: ${TABLE}.Route_type ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
    html: <a href="{{value}}">Mountain Project Link</a> ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
