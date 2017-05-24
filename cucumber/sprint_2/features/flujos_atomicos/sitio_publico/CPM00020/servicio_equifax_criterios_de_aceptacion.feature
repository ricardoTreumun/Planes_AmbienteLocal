# language: es
# Codigo Jira: BCISAV-68
# Autor: GParedes
# TINET

@atomico_publico @CPM00020
Característica: BCISAV-68_Obtener codigo de seguimiento - criterios de aceptación (servicio equifax)
  Validar la identidad del prospecto realizando transferencia bancaria hacia otro banco y obtener código de seguimiento.

Antecedentes: Avanzar viaje hasta crear prospecto
  Dado Se ingresa a la aplicación viajes
  Cuando Se ingresa la edad del cliente (45 años)
  Y Se ingresa renta mensual de $2500000 a $2999999
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Quiero este Plan"
  Y Presiona el botón de "Comience"
  Y Se limpia el prospecto y viaje
  Y Se ingresa su nombre "Juan"
  Y Se ingresa su apellido paterno "Perez"
  Y Se ingresa su apellido materno "Perez"
  Y Se ingresa su Rut ""
  Y Se ingresa Número de serie de su cédula ""
  Y Se ingresa numero de telefono movil 983299405
  Y Se ingresa Su correo electrónico "jpaineq@bcicert.cl"
  Y Presiona el botón de "Continuar"

@qa_tinet @BCISAV-386
Escenario: BCISAV-386_Responder preguntas servicio equifax
    Dado Se despliegan preguntas equifax
    Entonces Responder pregunta 1
    Y Responder pregunta 2
    Y Responder pregunta 3
    Y Responder pregunta 4
    Y Presiona el botón de "Validar Identidad"
    Entonces Se despliega el código de seguimiento
