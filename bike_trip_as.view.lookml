- view: bike_trip_as
  derived_table:
    sql: |
      SELECT * FROM [fh-bigquery:leadahq_challenge.bike_trip_data] LIMIT 10

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: tripid
    type: string
    sql: ${TABLE}.tripid

  - dimension: duration
    type: int
    sql: ${TABLE}.duration

  - dimension: startdate
    type: string
    sql: ${TABLE}.startdate

  - dimension: startstation
    type: string
    sql: ${TABLE}.startstation

  - dimension: startterminal
    type: string
    sql: ${TABLE}.startterminal

  - dimension: enddate
    type: string
    sql: ${TABLE}.enddate

  - dimension: endstation
    type: string
    sql: ${TABLE}.endstation

  - dimension: endterminal
    type: string
    sql: ${TABLE}.endterminal

  - dimension: bike
    type: string
    sql: ${TABLE}.bike

  - dimension: subscriptiontype
    type: string
    sql: ${TABLE}.subscriptiontype

  - dimension: zipcode
    type: string
    sql: ${TABLE}.zipcode

  sets:
    detail:
      - tripid
      - duration
      - startdate
      - startstation
      - startterminal
      - enddate
      - endstation
      - endterminal
      - bike
      - subscriptiontype
      - zipcode

