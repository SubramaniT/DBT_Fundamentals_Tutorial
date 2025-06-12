import holidays
import pandas

def model(dbt,session):

    dbt.config(
        materialized="table",
        packages=['pandas','holidays']
    )
    us_holidays = holidays.US()
    df = dbt.ref('date_spine').to_pandas()

   # df('IS_HOLIDAY') = df['DATE_DAY']
    #.apply(lambda date: date in us_holidays)

    df['IS_HOLIDAY'] = df['DATE_DAY'].apply(lambda date: date in us_holidays) 
   
    return df