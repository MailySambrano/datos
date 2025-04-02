Traceback (most recent call last):

  File "/app/ETL.py", line 29, in <module>

    cursor.execute("INSERT INTO TB_Lsf (Fecha, Valor) VALUES (?, ?)", row['Fecha'], row['Valor'])

pyodbc.DataError: ('22007', '[22007] [Microsoft][ODBC Driver 17 for SQL Server][SQL Server]Conversion failed when converting date and/or time from character string. (241) (SQLExecDirectW)')
