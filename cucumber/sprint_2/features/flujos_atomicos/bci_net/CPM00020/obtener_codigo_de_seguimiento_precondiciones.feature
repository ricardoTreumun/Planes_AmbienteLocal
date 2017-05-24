# language: es
# Codigo Jira: BCISAV-383
# Autor: GParedes
# TINET

@atomico_bcinet @CPM00020
Característica: BCISAV-383 precondiciones
  Validar las precondiciones del flujo de bcinet.

Antecedentes: Ingresar a bcinet
  Dado Se ingresa a la aplicación bcinet
  Y Ingresar usuario bcinet
  Y Ingresar contraseña bcinet
  Y Presiona el botón de "Ingresar"
  Y Se ingresa a la sub-aplicación viajes

@BCISAV-384
Escenario: BCISAV-384_Validar conexion a base de datos Culyssses_I y Culyssses_II
  Dado Conectar a base de datos "Culyssses_I"
  Entonces Conectar a base de datos "Culysses_II"

@BCISAV-385
Escenario: BCISAV-385_Validar En la base de datos "Prospectos" tabla "prospecto", "conyugue", "viaje", "ticket_atencion", "renta", "producto", "autentica_transferencia", "antecedente_laboral", "proceso_viaje_batch", "finalizar_viaje" los datos del prospecto deben estar en blanco.
  Dado Conectar a base de datos "Culyssses_I"
  Y se inicializa rut "12643142-2"
  Entonces Se limpia el prospecto y viaje
  Y se inicializa rut "15824391-1"
  Entonces Se limpia el prospecto y viaje
