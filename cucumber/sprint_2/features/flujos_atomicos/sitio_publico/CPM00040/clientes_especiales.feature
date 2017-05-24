# language: es
# Codigo Jira: BCISAV-141
# Autor: CLopez
# TINET

@atomico_publico @CPM00040
Característica: BCISAV-141_Detallar Información de Perfil Prospecto - criterios de aceptación (Clientes especiales)

Antecedentes: Agregar datos personales de un nuevo cliente
  Dado Se ingresa a la aplicación viajes
  Cuando Se limpia el prospecto y viaje
  Y Se ingresa la edad del cliente (45 años)
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
  Y Presiona el botón de "Continúe"
  Y Se despliegan preguntas equifax
  Y Registrar renta
  Y Responder pregunta 1
  Y Responder pregunta 2
  Y Responder pregunta 3
  Y Responder pregunta 4
  Y Presiona el botón de "Validar Identidad"
  Y Se despliega el código de seguimiento

@BCISAV-124
Escenario: BCISAV-124_Validar que al tener la renta registrada no se pase por la subetapa "Valide su renta"
  Dado Presiona el botón de "Continúe"
  Entonces Validar que no ingresa a la subetapa "Valide su renta"
