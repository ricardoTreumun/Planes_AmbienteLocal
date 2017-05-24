# language: es
# Codigo Jira: BCISAV-176
# Autor: Clopez
# TINET

@atomico_publico @CPM00050
Característica: BCISAV-176_Elegir productos de plan - criterios de aceptación (adjuntos y persistencia, parte 2)

Antecedentes: Agregar datos personales de un nuevo cliente
  Dado Se ingresa a la aplicación viajes
  Cuando Se ingresa la edad del cliente (45 años)
  Y Se ingresa renta mensual de $2500000 a $2999999
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Quiero este Plan"
  Y Presiona el botón de "Comience"
  Y Se ingresa su nombre "Juan"
  Y Se ingresa su apellido paterno "Perez"
  Y Se ingresa su apellido materno "Perez"
  Y Se ingresa su Rut ""
  Y Se ingresa Número de serie de su cédula ""
  Y Se ingresa numero de telefono movil 983299405
  Y Se ingresa Su correo electrónico ""
  Y Se limpia el prospecto y viaje
  Y Presiona el botón de "Continúe"
  Y Se despliegan preguntas equifax
  Y Responder pregunta 1
  Y Responder pregunta 2
  Y Responder pregunta 3
  Y Responder pregunta 4
  Y Presiona el botón de "Validar Identidad"
  Y Se despliega el código de seguimiento
  Y Presiona el botón de "Continúe"
  Y Se selecciona "Tipo de ingreso" Variable
  Y Se ingresa renta liquida de $2500000
  Y Presiona el botón de "Continúe"
  Y Se selecciona pais "CHILE"
  Y Se selecciona estado civil "SOLTERO(A)"
  Y Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  Y Se selecciona profesión "ABOGADO"
  Y Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  Y Se selecciona situación laboral "Indefinido"
  Y Presiona el botón de "Continúe"
  Y Presiona el botón de "Continúe" dirección

@BCISAV-162
Escenario: BCISAV-162_permita adjuntar sus liquidaciones de sueldo 6 para "Renta Variables"
  Dado Presiona el botón de "Continúe" equipos
  Entonces Solicita 6 liquidaciones
