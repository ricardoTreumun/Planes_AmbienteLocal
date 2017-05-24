# language: es
# Codigo Jira: BCISAV-383
# Autor: GParedes
# TINET

@atomico_publico @CPM00020
Característica: BCISAV-383_obtener_codigo_de_seguimiento_precondiciones
  Validar las precondiciones necesarias para la ejecucion del flujo de la aplicación.

Antecedentes: Conectar a base de datos
  Dado Se ingresa a la aplicación viajes
  Cuando Se ingresa la edad del cliente (35 años)
  Entonces Se ingresa renta mensual de $2500000 a $2999999

@BCISAV-385
Escenario: BCISAV-385_Validar conexion a base de datos Culyssses_I y Culyssses_II
  Dado Conectar a base de datos "Culyssses_I"
  Cuando Conectar a base de datos "Culysses_II"
  Entonces Presiona el botón de "Quiero conocer mi plan"
