view: trails {
  sql_table_name: `national_parks.trails`
    ;;
  drill_fields: [trail_id]

  dimension: trail_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.trail_id ;;
  }

  dimension: _geoloc {
    type: string
    sql: ${TABLE}._geoloc ;;
  }

  dimension: activities_summary {
    type: string
    description: "Filter Using Contains"
    sql: REGEXP_REPLACE(${TABLE}.activities, '[\\[\\]\']', '') ;;
    suggestions: ["birding","hiking","nature-trips","paddle-sports","walking","canoeing","fishing","trail-running","horseback-riding","hiking","fishing","snowshoeing","scenic-driving","backpacking","off-road-driving","mountain-biking","camping","cross-country-skiing","nature-trips","road-biking","sea-kayaking","walking","birding","road-biking","rails-trails","fly-fishing","off-road-driving","bike-touring","scenic-driving","camping","whitewater-kayaking","rock-climbing","surfing","bike-touring","skiing","mountain-biking","snowboarding","ice-climbing","paddle-sports","snowshoeing"]
    html: {% assign activities_summary = value | split: ', ' %}
    {% for activity in activities_summary %}
    <a target="_blank" href="/dashboards/national_parks::trail_finder?Activities=%25{{activity}}%25&Features=">{{ activity }}</a>,
    {% endfor %};;
  }

  dimension: area_name {
    label: "Park Name"
    type: string
    sql: ${TABLE}.area_name ;;
  }

  measure: avg_rating {
    type: average
    sql: ${TABLE}.avg_rating ;;
    value_format: "0.0"
  }

  dimension: city_name {
    type: string
    sql: ${TABLE}.city_name ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  measure: difficulty_rating {
    type: average
    sql: ${TABLE}.difficulty_rating ;;
    value_format: "0.0"
  }

  dimension: elevation_gain {
    type: number
    sql: ${TABLE}.elevation_gain * 3.28084 ;;
    value_format: "0"
  }

  dimension: elevation_gain_in_meters {
    type: number
    sql: ${TABLE}.elevation_gain ;;
    value_format: "0"
  }

  dimension: features_summary {
    type: string
    sql: REGEXP_REPLACE(${TABLE}.features, '[\\[\\]\']', '') ;;
    suggestions: ["dogs-no","forest","views","wild-flowers","wildlife","lake","kids","river","waterfall","dogs","beach","partially-paved","ada","dogs-no","paved","strollers","cave","historic-site","river","kids","views","dogs-leash","dogs-leash","cave","lake","beach","rails-trails","hot-springs","forest","dogs","city-walk","historic-site","paved","ada","partially-paved","city-walk","wildlife"]
    description: "Filter Using Contains"
    html: {% assign features = value | split: ', ' %}
    {% for feature in features %}
    <a target="_blank" href="/dashboards/national_parks::trail_finder?Features=%25{{feature}}%25&Activities=">{{ feature }}</a>,
    {% endfor %};;
  }

  dimension: length {
    type: number
    sql: ${TABLE}.length * 0.000621 ;;
    value_format: "0.0"
  }

  dimension: length_in_km {
    type: number
    sql: ${TABLE}.length / 1000 ;;
    value_format: "0.0"
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: num_reviews {
    type: sum
    sql: ${TABLE}.num_reviews ;;
    value_format: "0"
  }

  measure: popularity {
    type: average
    sql: ${TABLE}.popularity ;;
    value_format: "0.0"
  }

  dimension: route_type {
    type: string
    sql: ${TABLE}.route_type ;;
  }

  dimension: state_name {
    type: string
    sql: ${TABLE}.state_name ;;
  }

  dimension: units {
    type: string
    sql: ${TABLE}.units ;;
  }

  measure: visitor_usage {
    type: average
    sql: ${TABLE}.visitor_usage ;;
    value_format: "0"
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: total_hikeable_miles {
    type: sum
    sql: ${TABLE}.length * 0.000621 ;;
    value_format: "0.0"
  }

  measure: total_hikeable_elevation_gain {
    type: sum
    sql: ${TABLE}.elevation_gain * 3.28084 ;;
    value_format: "0"
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      trail_id,
      area_name,
      city_name,
      state_name,
      name,
      country_name
    ]
  }
}
