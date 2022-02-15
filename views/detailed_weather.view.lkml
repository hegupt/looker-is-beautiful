view: detailed_weather {

  sql_table_name: `coconut-crab.national_parks.detailed_climate`
    ;;

  dimension: measurement_id {
    type: string
    primary_key: yes
    sql:  ${TABLE}.measurement_id ;;
    hidden: yes
  }

  measure: count_dewp {
    type: sum
    label: "Count of Dew point observations"
    description: "Number of observations used in calculating mean dew point"
    sql: ${TABLE}.count_dewp ;;
  }

  measure: count_slp {
    type: sum
    label: "Count of Sea level pressure observations"
    description: "Number of observations used in calculating mean sea level pressure"
    sql: ${TABLE}.count_slp ;;
  }

  measure: count_stp {
    type: sum
    label: "Count of Station pressure observations"
    description: "Number of observations used in calculating mean station pressure"
    sql: ${TABLE}.count_stp ;;
  }

  measure: count_temp {
    type: sum
    label: "Count of Temperature observations"
    description: "Number of observations used in calculating mean temperature"
    sql: ${TABLE}.count_temp ;;
  }

  measure: count_visib {
    type: sum
    label: "Count of Visibility observations"
    description: "Number of observations used in calculating mean visibility"
    sql: ${TABLE}.count_visib ;;
  }

  measure: count_wdsp {
    type: sum
    label: "Count of Wind Speed observations"
    description: "Number of observations used in calculating mean wind speed"
    sql: ${TABLE}.count_wdsp ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    type: time
    description: "Date of the weather observations"
    timeframes: [
      raw,
      date,
      week,
      week_of_year,
      month,
      month_name,
      quarter,
      year,
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: season {
    type: string
    description: "Season of Recording"
    sql: case
      when extract(month from ${TABLE}.date) in (12, 1, 2) then 'winter'
      when extract(month from ${TABLE}.date) in (3, 4, 5) then 'spring'
      when extract(month from ${TABLE}.date) in (6, 7, 8) then 'summer'
      when extract(month from ${TABLE}.date) in (9, 10, 11) then 'autumn'
      end ;;
  }

  dimension: month {
    type: string
    hidden: yes
    sql: FORMAT_DATE("%B", ${TABLE}.date) ;;
  }


  measure: dewp {
    type: average
    description: "Mean dew point for the day in degrees Fahrenheit to tenths."
    sql: ${TABLE}.dewp ;;
  }

  dimension: flag_max {
    type: yesno
    description: "true indicates max temp was derived from the hourly data (i.e., highest hourly or synoptic-reported temperature)"
    sql: ${TABLE}.flag_max ;;
  }

  dimension: flag_min {
    type: yesno
    description: "true indicates min temp was derived from the hourly data (i.e., lowest hourly or synoptic-reported temperature)"
    sql: ${TABLE}.flag_min ;;
  }

  dimension: flag_prcp {
    type: string
    description: "A = 1 report of 6-hour precipitation amount B = Summation of 2 reports of 6-hour precipitation amount C = Summation of 3 reports of 6-hour precipitation amount D = Summation of 4 reports of 6-hour precipitation amount E = 1 report of 12-hour precipitation amount F = Summation of 2 reports of 12-hour precipitation amount G = 1 report of 24-hour precipitation amount H = Station reported '0' as the amount for the day (eg, from 6-hour reports), but also reported at least one occurrence of precipitation in hourly observations--this could indicate a trace occurred, but should be considered as incomplete data for the day. I = Station did not report any precip data for the day and did not report any occurrences of precipitation in its hourly observations--it's still possible that precip occurred but was not reported"
    sql: ${TABLE}.flag_prcp ;;
  }

  dimension: fog {
    type: yesno
    description: "fog occurrence during the day"
    sql: ${TABLE}.fog ;;
  }

  measure: gust {
    type: max
    label: "Max Wind Gust"
    description: "Maximum wind gust reported for the day in knots to tenths."
    sql: ${TABLE}.gust ;;
  }

  dimension: hail {
    type: yesno
    description: "hail occurrence during the day"
    sql: ${TABLE}.hail ;;
  }

  measure: max {
    label: "Max Temperature"
    type: max
    description: "Maximum temperature reported during the day in Fahrenheit to tenths--time of max temp report varies by country and region, so this will sometimes not be the max for the calendar day."
    sql: ${TABLE}.max ;;
  }

  measure: min {
    label: "Min Temperature"
    type: min
    description: "Minimum temperature reported during the day in Fahrenheit to tenths--time of min temp report varies by country and region, so this will sometimes not be the min for the calendar day."
    sql: ${TABLE}.min ;;
  }

  measure: mxpsd {
    label: "Max Wind Speed"
    type: max
    description: "Maximum sustained wind speed reported for the day in knots to tenths."
    sql: ${TABLE}.mxpsd ;;
  }

  measure: prcp {
    label: "Total Precipitation"
    type: sum
    description: "Total precipitation (rain and/or melted snow) reported during the day in inches and hundredths; will usually not end with the midnight observation--i.e., may include latter part of previous day. .00 indicates no measurable precipitation (includes a trace). Note: a station may only report a 6-hour amount for the period during which rain fell. See Flag field for source of data"
    sql: ${TABLE}.prcp ;;
  }

  dimension: rain_drizzle {
    type: yesno
    description: "rain or drizzle occurrence during the day"
    sql: ${TABLE}.rain_drizzle ;;
  }

  measure: slp {
    type: average
    label: "Mean Sea Level Pressure"
    description: "Mean sea level pressure for the day in millibars to tenths."
    sql: ${TABLE}.slp ;;
  }

  measure: sndp {
    type: sum
    label: "Total Snow Depth"
    description: "Snow depth in inches to tenths--last report for the day if reported more than once."
    sql: ${TABLE}.sndp ;;
  }

  dimension: snow_ice_pellets {
    type: yesno
    description: "snow or ice pellets occurrence during the day"
    sql: ${TABLE}.snow_ice_pellets ;;
  }

  dimension: stn {
    type: string
    label: "Station ID Number"
    description: "Cloud - GSOD NOAA"
    sql: ${TABLE}.stn ;;
  }

  measure: stp {
    type: average
    label: "Mean Station Pressure"
    description: "Mean station pressure for the day in millibars to tenths."
    sql: ${TABLE}.stp ;;
  }

  measure: temp {
    type: average
    label: "Average Temperature"
    description: "Mean temperature for the day in degrees Fahrenheit to tenths."
    sql: ${TABLE}.temp ;;
    value_format: "0.0"
  }

  dimension: thunder {
    type: yesno
    description: "thunder occurrence during the day"
    sql: ${TABLE}.thunder ;;
  }

  dimension: tornado_funnel_cloud {
    type: yesno
    description: "tornado / funnel cloud occurrence during the day"
    sql: ${TABLE}.tornado_funnel_cloud ;;
  }

  measure: visib {
    type: average
    label: "Mean Visibility"
    description: "Mean visibility for the day in miles to tenths."
    sql: ${TABLE}.visib ;;
  }

  dimension: wban {
    type: string
    label: "Station WBAN Number"
    description: "WBAN number where applicable--this is the historical \"Weather Bureau Air Force Navy\" number - with WBAN being the acronym"
    sql: ${TABLE}.wban ;;
  }

  measure: wdsp {
    type: average
    label: "Mean Wind Speed"
    description: "Mean wind speed for the day in knots to tenths."
    sql: ${TABLE}.wdsp ;;
  }

  measure: total_rain_days {
    type: sum
    sql: case when  ${TABLE}.rain_drizzle then 1 else 0 end ;;
  }

  measure: total_snow_days {
    type: sum
    sql: case when  ${TABLE}.snow_ice_pellets then 1 else 0 end ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
