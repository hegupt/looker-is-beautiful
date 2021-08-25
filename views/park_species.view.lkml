view: park_species {
  sql_table_name: `national_parks.park_species`
    ;;

  dimension: abundance {
    type: string
    sql: ${TABLE}.Abundance ;;
  }

  dimension: category {
    type: string
    sql: ${TABLE}.Category ;;
  }

  dimension: common_names {
    type: string
    sql: ${TABLE}.Common_Names ;;
  }

  dimension: family {
    type: string
    sql: ${TABLE}.Family ;;
  }

  dimension: nativeness {
    type: string
    sql: ${TABLE}.Nativeness ;;
  }

  dimension: occurrence {
    type: string
    sql: ${TABLE}.Occurrence ;;
  }

  dimension: park_name {
    type: string
    sql: ${TABLE}.Park_Name ;;
  }

  dimension: record_status {
    type: string
    sql: ${TABLE}.Record_Status ;;
  }

  dimension: scientific_name {
    type: string
    sql: ${TABLE}.Scientific_Name ;;
  }

  dimension: species_id {
    type: string
    sql: ${TABLE}.Species_ID ;;
  }

  dimension: species_order {
    type: string
    sql: ${TABLE}.Species_Order ;;
  }

  measure: count {
    type: count
    drill_fields: [park_name, scientific_name]
  }

  dimension: isNative {
    label: "is native"
    type: yesno
    sql: ${TABLE}.Nativeness = 'Native' ;;
  }

  dimension: isPresent {
    label: "is present"
    type: yesno
    sql: ${TABLE}.Occurrence = 'Present' ;;
  }

  dimension: isRare {
    label: "is rare"
    type: yesno
    sql: ${TABLE}.Abundance = 'Rare' ;;
  }

  dimension: isCommon {
    label: "is common"
    type: yesno
    sql: ${TABLE}.Abundance = 'Common' ;;
  }
}
