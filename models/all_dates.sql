-- date_spine for every day in 2020, adjusted for BigQuery syntax
{{ 
    dbt_utils.date_spine(
        datepart = "day",
        start_date = "date(2020, 1, 1)",
        end_date = "date(2021, 1, 1)"
    )
}}