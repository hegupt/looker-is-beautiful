view: monthly_visits {
  sql_table_name: `coconut-crab.national_parks.monthly_visits`
    ;;


  dimension: month {
    hidden: yes
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: year {
    hidden: yes
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: season {
    type: string
    description: "Season of Recording"
    sql: case
      when ${TABLE}.month in ('December', 'January', 'February') then 'winter'
      when ${TABLE}.month in ('March', 'April', 'May') then 'spring'
      when ${TABLE}.month in ('June', 'July', 'August') then 'summer'
      when ${TABLE}.month in ('September', 'October', 'November') then 'autumn'
      end ;;
  }

  dimension_group: date {
    type: time
    description: "Month and Year of Report"
    timeframes: [
      month,
      month_name,
      quarter,
      year,
    ]
    convert_tz: no
    datatype: date
    sql: PARSE_DATE("%Y %B", CONCAT(${TABLE}.year," ",${TABLE}.month)) ;;
  }

  dimension: park {
    description: "Park Name"
    type: string
    sql: ${TABLE}.park ;;
  }

  dimension: key {
    hidden: yes
    sql: concat(${TABLE}.year,'-',${TABLE}.month,'-',${TABLE}.park) ;;
    primary_key: yes
  }

  measure: avg_backcountry_campers {
    description: "Average Number of Backcountry Campers (with permits)"
    type: average
    sql: ${TABLE}.backcountry_campers ;;
    value_format: "#,##0"
  }

  measure: avg_concession_camping {
    description: "Average Number of Concession Campers"
    type: average
    sql: ${TABLE}.concession_camping ;;
    value_format: "#,##0"
  }

  measure: avg_concession_lodging {
    description: "Average Number of Concession Lodgers"
    type: average
    sql: ${TABLE}.concession_lodging ;;
    value_format: "#,##0"
  }

  measure: avg_misc_campers {
    description: "Average Number of Campers outside of recreational, RV, lodging, and backcountry."
    type: average
    sql: ${TABLE}.misc_campers ;;
    value_format: "#,##0"
  }

  measure: avg_non_recreation_hours {
    description: "Average number of non recreational visit hours"
    type: average
    sql: ${TABLE}.non_recreation_hours ;;
    value_format: "#,##0"
  }

  measure: avg_non_recreation_overnight_stays {
    description: "Average number of non recreational overnight stays"
    type: average
    sql: ${TABLE}.non_recreation_overnight_stays ;;
    value_format: "#,##0"
  }

  measure: avg_non_recreation_visitors {
    description: "Average number of non recreational visits"
    type: average
    sql: ${TABLE}.non_recreation_visitors ;;
    value_format: "#,##0"
  }

  measure: avg_recreation_hours {
    description: "Average number of recreational visit hours"
    type: average
    sql: ${TABLE}.recreation_hours ;;
    value_format: "#,##0"
  }

  measure: avg_recreation_visitors {
    description: "Average number of recreational visitors"
    type: average
    sql: ${TABLE}.recreation_visitors ;;
    value_format: "#,##0"
  }

  measure: avg_rv_campers {
    description: "Average number of recreational RV campers"
    type: average
    sql: ${TABLE}.rv_campers ;;
    value_format: "#,##0"
  }

  measure: avg_tent_campers {
    description: "Average number of tent overnight stays"
    type: average
    sql: ${TABLE}.tent_campers ;;
    value_format: "#,##0"
  }

  measure: total_backcountry_campers {
    description: "Average number of backcountry overnight stays"
    type: sum
    sql: ${TABLE}.backcountry_campers ;;
    value_format: "#,##0"
  }

  measure: total_concession_camping {
    description: "Total number of concession campers"
    type: sum
    sql: ${TABLE}.concession_camping ;;
    value_format: "#,##0"
  }

  measure: total_concession_lodging {
    description: "Total number of concession lodging"
    type: sum
    sql: ${TABLE}.concession_lodging ;;
    value_format: "#,##0"
  }

  measure: total_misc_campers {
    description: "Total number of misc campers outside of recreational, RV, lodging, and backcountry."
    type: sum
    sql: ${TABLE}.misc_campers ;;
    value_format: "#,##0"
  }

  measure: total_non_recreation_hours {
    description: "Total number of non recreational visit hours"
    type: sum
    sql: ${TABLE}.non_recreation_hours ;;
    value_format: "#,##0"
  }

  measure: total_non_recreation_overnight_stays {
    description: "Total number of non recreational overnight stays"
    type: sum
    sql: ${TABLE}.non_recreation_overnight_stays ;;
    value_format: "#,##0"
  }

  measure: total_non_recreation_visitors {
    description: "Total number of non recreational visitors"
    type: sum
    sql: ${TABLE}.non_recreation_visitors ;;
    value_format: "#,##0"
  }

  measure: total_recreation_hours {
    description: "Total number of recreational visit hours"
    type: sum
    sql: ${TABLE}.recreation_hours ;;
    value_format: "#,##0"
  }

  measure: total_recreation_visitors {
    description: "Total number of recreational visitors"
    type: sum
    sql: ${TABLE}.recreation_visitors ;;
    value_format: "#,##0"
  }

  measure: total_rv_campers {
    description: "Total number of RV overnight stays"
    type: sum
    sql: ${TABLE}.rv_campers ;;
    value_format: "#,##0"
  }

  measure: total_tent_campers {
    description: "Total number of recreational tent overnight stays"
    type: sum
    sql: ${TABLE}.tent_campers ;;
    value_format: "#,##0"
  }

  measure: total_overnight_stays {
    description: "Total number of overnight stays"
    type: sum
    sql: ${TABLE}.total_overnight_stays ;;
    value_format: "#,##0"
  }
}
