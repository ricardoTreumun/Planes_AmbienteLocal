# language: es
# Codigo Jira: BCISAV-16
# Autor: GParedes
# TINET

@atomico_publico @CPM00020
Característica: BCISAV-16_Obtener codigo de seguimiento - criterios de aceptación (ingresar datos personales)
  Validar la identidad del prospecto realizando transferencia bancaria hacia otro banco y obtener código de seguimiento.

Antecedentes: Verificar que se visualizan el Plan preferencia para renta entre $2.500.000 y $2.999.999 y edad mayor a 18 años
  Dado Se ingresa a la aplicación viajes
  Cuando Se ingresa la edad del cliente (35 años)
  Y Se ingresa renta mensual de $2500000 a $2999999
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Quiero este Plan"
  Y Presiona el botón de "Comience"
  Y Se limpia el prospecto y viaje
  Entonces Se despliega pantalla Ingrese sus datos personales

@qa_tinet @BCISAV-90
Escenario: BCISAV-90_Validar que este normalizado el numero de telefono fijo del cliente
  Dado Prospecto se encuentra en pantalla Ingrese sus datos personales
  Cuando Se ingresa numero de telefono fijo 322913177
  Entonces Bordes del campo Numero de telefono se depliegan en color verde
@BCISAV-19
Escenario: BCISAV-19_Validar que este normalizado el numero de telefono movil del cliente
  Dado Prospecto se encuentra en pantalla Ingrese sus datos personales
  Cuando Se ingresa numero de telefono movil 983299405
  Entonces Bordes del campo Numero de telefono se depliegan en color verde

@BCISAV-20
Escenario: BCISAV-20_Validar que se pueda registrar el prospecto con un email con dos puntos
  Dado Prospecto se encuentra en pantalla Ingrese sus datos personales
  Cuando Se ingresa Su correo electrónico "juan.perez.perez@gmail.com"
  Entonces Bordes del campo Su correo electrónico se depliegan en color verde
