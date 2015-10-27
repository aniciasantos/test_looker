- view: liquor_rank
  derived_table:
    sql: |
      select *
      from
      (select year_month, category_name, total_qty, RANK() OVER (PARTITION BY year_month ORDER BY total_qty DESC) as rank_qty
      from
      (select category_name, STRFTIME_UTC_USEC(timestamp(date),'%Y-%m') as year_month, sum(bottle_qty) as total_qty
          from [fh-bigquery:liquor.iowa]
          where category_name is not null group by 1,2) a
          where category_name is not null) b
          HAVING rank_qty <= 5
          order by year_month desc, rank_qty asc
          

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: year_month
    type: string
    sql: ${TABLE}.year_month

  - dimension: category_name
    type: string
    sql: ${TABLE}.category_name

  - measure: total_qty
    type: sum
    sql: ${TABLE}.total_qty

  - dimension: rank_qty
    type: int
    sql: ${TABLE}.rank_qty

  sets:
    detail:
      - year_month
      - category_name
      - total_qty
      - rank_qty

