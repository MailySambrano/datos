Traceback (most recent call last):

  File "/usr/local/lib/python3.9/site-packages/pandas/compat/_optional.py", line 135, in import_optional_dependency

    module = importlib.import_module(name)

  File "/usr/local/lib/python3.9/importlib/__init__.py", line 127, in import_module

    return _bootstrap._gcd_import(name[level:], package, level)

  File "<frozen importlib._bootstrap>", line 1030, in _gcd_import

  File "<frozen importlib._bootstrap>", line 1007, in _find_and_load

  File "<frozen importlib._bootstrap>", line 984, in _find_and_load_unlocked

ModuleNotFoundError: No module named 'openpyxl'

During handling of the above exception, another exception occurred:

Traceback (most recent call last):

  File "/app/ETL.py", line 5, in <module>

    df = pd.read_excel(input_file, sheet_name='Base de Datos')

  File "/usr/local/lib/python3.9/site-packages/pandas/io/excel/_base.py", line 495, in read_excel

    io = ExcelFile(

  File "/usr/local/lib/python3.9/site-packages/pandas/io/excel/_base.py", line 1567, in __init__

    self._reader = self._engines[engine](

  File "/usr/local/lib/python3.9/site-packages/pandas/io/excel/_openpyxl.py", line 552, in __init__

    import_optional_dependency("openpyxl")

  File "/usr/local/lib/python3.9/site-packages/pandas/compat/_optional.py", line 138, in import_optional_dependency

    raise ImportError(msg)

ImportError: Missing optional dependency 'openpyxl'.  Use pip or conda to install openpyxl.
