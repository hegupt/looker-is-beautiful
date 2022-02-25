view: pokemon {
  sql_table_name: `pokemon.pokemon`
    ;;


  dimension: japanese_name {
    type: string
    sql: ${TABLE}.japanese_name ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
    link: {
      label: "Pokedex Link"
      url: "https://www.pokemon.com/us/pokedex/{{value}}/"
      icon_url: "https://assets.pokemon.com/assets/cms2/img/misc/gus/buttons/logo-pokemon-79x45.png"
    }
  }

  dimension: pokedex_number {
    type: string
    sql: ${TABLE}.pokedex_number ;;
  }

  dimension: photo {
    type: string
    sql: ${TABLE}.pokedex_number ;;
    value_format: "000"
    html: <img height="125px" src="https://assets.pokemon.com/assets/cms2/img/pokedex/full/{{rendered_value}}.png" /> ;;
  }

  dimension: abilities {
    type: string
    sql: REGEXP_REPLACE(${TABLE}.abilities, '[\\[\\]\']', '') ;;
  }

  measure: against_bug {
    type: average
    sql: ${TABLE}.against_bug ;;
  }

  measure: against_dark {
    type: average
    sql: ${TABLE}.against_dark ;;
  }

  measure: against_dragon {
    type: average
    sql: ${TABLE}.against_dragon ;;
  }

  measure: against_electric {
    type: average
    sql: ${TABLE}.against_electric ;;
  }

  measure: against_fairy {
    type: average
    sql: ${TABLE}.against_fairy ;;
  }

  measure: against_fight {
    type: average
    sql: ${TABLE}.against_fight ;;
  }

  measure: against_fire {
    type: average
    sql: ${TABLE}.against_fire ;;
  }

  measure: against_flying {
    type: average
    sql: ${TABLE}.against_flying ;;
  }

  measure: against_ghost {
    type: average
    sql: ${TABLE}.against_ghost ;;
  }

  measure: against_grass {
    type: average
    sql: ${TABLE}.against_grass ;;
  }

  measure: against_ground {
    type: average
    sql: ${TABLE}.against_ground ;;
  }

  measure: against_ice {
    type: average
    sql: ${TABLE}.against_ice ;;
  }

  measure: against_normal {
    type: average
    sql: ${TABLE}.against_normal ;;
  }

  measure: against_poison {
    type: average
    sql: ${TABLE}.against_poison ;;
  }

  measure: against_psychic {
    type: average
    sql: ${TABLE}.against_psychic ;;
  }

  measure: against_rock {
    type: average
    sql: ${TABLE}.against_rock ;;
  }

  measure: against_steel {
    type: average
    sql: ${TABLE}.against_steel ;;
  }

  measure: against_water {
    type: average
    sql: ${TABLE}.against_water ;;
  }

  measure: attack {
    type: sum
    sql: ${TABLE}.attack ;;
  }

  dimension: base_egg_steps {
    type: number
    sql: ${TABLE}.base_egg_steps ;;
  }

  dimension: base_happiness {
    type: number
    sql: ${TABLE}.base_happiness ;;
  }

  dimension: base_total {
    type: number
    sql: ${TABLE}.base_total ;;
  }

  measure: capture_rate {
    type: average
    sql: ${TABLE}.capture_rate ;;
  }

  dimension: classfication {
    type: string
    sql: ${TABLE}.classfication ;;
  }

  measure: defense {
    type: sum
    sql: ${TABLE}.defense ;;
  }

  dimension: experience_growth {
    type: number
    sql: ${TABLE}.experience_growth ;;
  }

  dimension: generation {
    type: number
    sql: ${TABLE}.generation ;;
  }

  dimension: height_m {
    type: number
    sql: ${TABLE}.height_m ;;
  }

  dimension: hp {
    type: number
    sql: ${TABLE}.hp ;;
  }

  dimension: is_legendary {
    type: number
    sql: ${TABLE}.is_legendary ;;
  }

  dimension: percentage_male {
    type: number
    sql: ${TABLE}.percentage_male ;;
  }

  dimension: sp_attack {
    type: number
    sql: ${TABLE}.sp_attack ;;
  }

  dimension: sp_defense {
    type: number
    sql: ${TABLE}.sp_defense ;;
  }

  dimension: speed {
    type: number
    sql: ${TABLE}.speed ;;
  }

  dimension: type1 {
    type: string
    sql: ${TABLE}.type1 ;;
  }

  dimension: type2 {
    type: string
    sql: ${TABLE}.type2 ;;
  }

  dimension: weight_kg {
    type: number
    sql: ${TABLE}.weight_kg ;;
  }

  measure: count {
    type: count
    drill_fields: [name, japanese_name]
  }
}
