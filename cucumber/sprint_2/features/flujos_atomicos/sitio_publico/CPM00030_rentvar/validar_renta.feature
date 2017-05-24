# language: es
# Código Jira: BCISAV-498
# Autor: SAcevedo
# TINET

@atomico_publico @CPM00030
Característica: BCISAV-498_Validar Renta

Antecedentes:
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

@BCISAV-499
Escenario: BCISAV-499_Validar que en sitio de Web Publica en la parte superior se visualice el botón Continúe, se presione y se desplieguen los campos Rut y Código Seguimientos, y el Botón Ingresar.
  Cuando Presiona el boton Continue
  Entonces Se despliega el campo Rut, Código Seguimientos y el boton Ingresar

@BCISAV-500
Escenario: BCISAV-500_Validar que luego de haber ingresado datos de Rut y Código Seguimientos, se presione el Botón Ingresar, se despliegue pantalla con etapa Detalle su perfil.
  Cuando Presiona el boton Continue
  Y Ingresar el rut y codigo seguimiento
  Entonces Presiona el boton Ingresar
  Y Se despliega pantalla con Detalle de Perfil
