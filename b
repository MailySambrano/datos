/app/ETL.py:13: UserWarning: Could not infer format, so each element will be parsed individually, falling back to `dateutil`. To ensure parsing is consistent and as-expected, please specify a format.

  filtered_df['Fecha'] = pd.to_datetime(filtered_df['Fecha'], errors='coerce')

Traceback (most recent call last):

  File "/app/ETL.py", line 32, in <module>

    cursor.execute("INSERT INTO TB_Lsf (Fecha, Valor) VALUES (?, ?)", row['Fecha'], row['Valor'])

pyodbc.DataError: ('22007', '[22007] [Microsoft][ODBC Driver 17 for SQL Server][SQL Server]The conversion of a datetime2 data type to a datetime data type resulted in an out-of-range value. (242) (SQLExecDirectW)')
