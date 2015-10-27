- view: liquor_iowa_as
  derived_table:
    sql: |
      SELECT * 
        FROM [fh-bigquery:liquor.iowa]
      LIMIT 10

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: date
    type: string
    sql: ${TABLE}.date

  - dimension_group: convenience_store
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.convenience_store

  - dimension: store
    type: string
    sql: ${TABLE}.store

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: address
    type: string
    sql: ${TABLE}.address

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: zipcode
    type: string
    sql: ${TABLE}.zipcode

  - dimension: store_location
    type: string
    sql: ${TABLE}.store_location

  - dimension: county_number
    type: string
    sql: ${TABLE}.county_number

  - dimension: county
    type: string
    sql: ${TABLE}.county

  - dimension: category
    type: string
    sql: ${TABLE}.category

  - dimension: category_name
    type: string
    sql: ${TABLE}.category_name

  - dimension: vendor_no
    type: string
    sql: ${TABLE}.vendor_no

  - dimension: vendor
    type: string
    sql: ${TABLE}.vendor

  - dimension: item
    type: string
    sql: ${TABLE}.item

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: pack
    type: int
    sql: ${TABLE}.pack

  - dimension: liter_size
    type: int
    sql: ${TABLE}.liter_size

  - dimension: state_btl_cost
    type: number
    sql: ${TABLE}.state_btl_cost

  - dimension: btl_price
    type: number
    sql: ${TABLE}.btl_price

  - dimension: bottle_qty
    type: int
    sql: ${TABLE}.bottle_qty

  - dimension: total
    type: number
    sql: ${TABLE}.total

  sets:
    detail:
      - date
      - convenience_store_time
      - store
      - name
      - address
      - city
      - zipcode
      - store_location
      - county_number
      - county
      - category
      - category_name
      - vendor_no
      - vendor
      - item
      - description
      - pack
      - liter_size
      - state_btl_cost
      - btl_price
      - bottle_qty
      - total

