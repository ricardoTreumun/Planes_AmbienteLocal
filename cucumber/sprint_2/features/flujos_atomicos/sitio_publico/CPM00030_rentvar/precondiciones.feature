# language: es
# Código Jira: BCISAV-491
# Autor: SAcevedo
# TINET

@atomico_publico @CPM00030
Característica: BCISAV-491_Característica: precondiciones

Antecedentes: Ingreso Cliente con Código de Seguimiento
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
  Y Se despliegan preguntas equifax
  Y Responder pregunta 1
  Y Responder pregunta 2
  Y Responder pregunta 3
  Y Responder pregunta 4
  Y Presiona el botón de "Validar Identidad"
  Y Se despliega el código de seguimiento
  Y Obtener ticket de atención
  Y Se ingresa a la aplicación viajes

@BCISAV-492
Escenario: BCISAV-492_Acceso a Base de Datos Prospectos.
  Entonces Se valida Acceso a Base de Datos "Prospectos"

@BCISAV-493
Escenario: BCISAV-493_Código Seguimiento en la tabla "ticket_atencion" en el campo "tck_atn_codigo"
  Entonces Se Valida Código Seguimiento en la tabla ticket_atencion en el campo tck_atn_codigo

@BCISAV-494
Escenario: BCISAV-494_Etapa código viaje se encuentre en "3" en la tabla "Viaje" en el campo "etp_codigo"
  Dado Obtener datos tabla "viaje"
  Entonces validar que en el campo "etp_codigo" se encuentre en estado "3"

@BCISAV-495
Escenario: BCISAV-495_Viaje Estado se encuentre en "1" en la tabla "Viaje" en el campo "vje_estado"
  Dado Obtener datos tabla "viaje"
  Entonces validar que en el campo "vje_estado" se encuentre en estado "01"
