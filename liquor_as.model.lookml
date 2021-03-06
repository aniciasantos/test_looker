- connection: sentry

- include: "*.view.lookml"       # include all views in this project
- include: "*.dashboard.lookml"  # include all dashboards in this project

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
- explore: liquor_iowa_as
  joins:
     - join: liquor_rank
       sql_on: ${liquor_iowa_as.category_name} = ${liquor_rank.category_name}
#     - join: users
#       sql_on: ${users.id} = ${orders.user_id}
- explore: liquor_rank

- explore: liquor_county