view: airbnb {
  sql_table_name: `coconut-crab.zillow.airbnb`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
    hidden: yes
  }

  dimension: link {
    type: string
    sql: ${TABLE}.id ;;
    html: <a target="_blank" href="https://www.airbnb.com/rooms/{{value}}">Link</a> ;;
    link: {
      label: "See on Airbnb"
      url: "https://www.airbnb.com/rooms/{{value}}"
      icon_url: "https://images.squarespace-cdn.com/content/v1/57bb587c3e00be6b4cd50767/1545916486321-AK4CXEUFSYTKIY2NHQ47/airbnb-icon.png?format=500w"
    }
  }

  measure: availability_per_year {
    type: average
    sql: ${TABLE}.availability_365 ;;
  }

  measure: calculated_host_listings_count {
    type: sum
    sql: ${TABLE}.calculated_host_listings_count ;;
  }

  dimension: city {
    type: string
    label: "Region"
    sql: ${TABLE}.city ;;
  }

  dimension: host_id {
    type: string
    sql: ${TABLE}.host_id ;;
    hidden: yes
  }

  dimension: host_name {
    type: string
    sql: ${TABLE}.host_name ;;
    link: {
      label: "See Host on Airbnb"
      url: "https://www.airbnb.com/users/show/{{airbnb.host_id}}"
      icon_url: "https://images.squarespace-cdn.com/content/v1/57bb587c3e00be6b4cd50767/1545916486321-AK4CXEUFSYTKIY2NHQ47/airbnb-icon.png?format=500w"
    }
  }

  dimension: last_review {
    type: date
    sql: PARSE_DATE("%d/%m/%y", ${TABLE}.last_review) ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
    hidden: yes
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
    hidden: yes
  }

  dimension: location {
    type: location
    html: {{airbnb.name}} ;;

    sql_latitude: ${TABLE}.latitude;;
    sql_longitude:${TABLE}.longitude;;
  }

  measure: minimum_nights {
    type: min
    sql: ${TABLE}.minimum_nights ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
    link: {
      label: "See on Airbnb"
      url: "https://www.airbnb.com/rooms/{{airbnb.id}}"
      icon_url: "https://images.squarespace-cdn.com/content/v1/57bb587c3e00be6b4cd50767/1545916486321-AK4CXEUFSYTKIY2NHQ47/airbnb-icon.png?format=500w"
    }
  }

  dimension: neighbourhood {
    type: string
    sql: ${TABLE}.neighbourhood ;;
  }

  dimension: neighbourhood_group {
    type: string
    sql: ${TABLE}.neighbourhood_group ;;
  }

  measure: number_of_reviews {
    type: sum
    sql: ${TABLE}.number_of_reviews ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  measure: avg_price {
    type: average
    sql: ${TABLE}.price ;;
  }

  measure: max_price {
    type: max
    sql: ${TABLE}.price ;;
  }

  measure: min_price {
    type: min
    sql: ${TABLE}.price ;;
  }

  measure: reviews_per_month {
    type: sum
    sql: ${TABLE}.reviews_per_month ;;
  }

  dimension: room_type {
    type: string
    sql: ${TABLE}.room_type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, host_name]
  }
}
