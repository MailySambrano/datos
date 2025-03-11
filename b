from opcua import Client
from datetime import datetime, timedelta

def obtener_datos_historicos(opc_url, nodos):
    # Conectar al servidor OPC UA
    client = Client(opc_url)
    try:
        client.connect()
        print("Conectado al servidor OPC UA")

        # Fecha de ayer a las 23:57:00
        fecha_fin = datetime.now().replace(hour=23, minute=57, second=0) - timedelta(days=1)
        fecha_inicio = fecha_fin - timedelta(minutes=10)  # Por ejemplo, tomar datos de los últimos 10 minutos

        datos = {}
        for nodo_id in nodos:
            nodo = client.get_node(nodo_id)
            historico = nodo.read_raw_history(fecha_inicio, fecha_fin)
            datos[nodo_id] = [(d.SourceTimestamp, d.Value) for d in historico]
        
        return datos

    except Exception as e:
        print(f"Error: {e}")
    finally:
        client.disconnect()

# Configuración
opc_url = "opc.tcp://localhost:4840"  # Cambiar por la URL de tu servidor OPC UA
nodos = ["ns=2;s=Variable1", "ns=2;s=Variable2"]  # Lista de nodos a consultar

# Obtener datos históricos
datos_historicos = obtener_datos_historicos(opc_url, nodos)
print(datos_historicos)