- view: quotes
  derived_table:
    sql: |
      SELECT * FROM [bigquery-samples:nasdaq_stock_quotes.quotes]

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: symbol
    type: string
    sql: ${TABLE}.symbol

  - dimension: start_date
    type: int
    sql: ${TABLE}.start_date

  - dimension_group: date
    type: time
    timeframes: [date, week, month, year]
    sql: timestamp(${TABLE}.start_date)
  
  - dimension: start_time
    type: int
    sql: ${TABLE}.start_time

  - dimension: end_date
    type: int
    sql: ${TABLE}.end_date

  - dimension: end_time
    type: int
    sql: ${TABLE}.end_time

  - dimension: market_center
    type: string
    sql: ${TABLE}.market_center

  - dimension: bid_quantity
    type: int
    sql: ${TABLE}.bid_quantity

  - dimension: bid_price
    type: number
    sql: ${TABLE}.bid_price

  - dimension: ask_quantity
    type: int
    sql: ${TABLE}.ask_quantity

  - dimension: ask_price
    type: number
    sql: ${TABLE}.ask_price

  - dimension: quote_condition
    type: string
    sql: ${TABLE}.quote_condition

  sets:
    detail:
      - symbol
      - start_date
      - start_time
      - end_date
      - end_time
      - market_center
      - bid_quantity
      - bid_price
      - ask_quantity
      - ask_price
      - quote_condition

