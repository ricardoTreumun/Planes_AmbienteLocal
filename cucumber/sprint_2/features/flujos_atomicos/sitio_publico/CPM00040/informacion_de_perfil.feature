# language: es
# Codigo Jira: BCISAV-30
# Autor: CLopez
# TINET

@atomico_publico @CPM00040
Característica: BCISAV-30_Detallar Información de Perfil Prospecto - criterios de aceptación (Información de Perfil)
 Ingresar al sitio "WebPublica" de bci y continuar el viaje de planes ingresando
 los datos adicionales del prospecto. (datos del conyugue y la direccion Particular)
 desplegandose selección de productos.

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
  Y Responder pregunta 1
  Y Responder pregunta 2
  Y Responder pregunta 3
  Y Responder pregunta 4
  Y Presiona el botón de "Validar Identidad"
  Y Se despliega el código de seguimiento
  Y Presiona el botón de "Continúe"
  Y Se selecciona "Tipo de ingreso"
  Y Se ingresa renta liquida de $2500000

@BCISAV-125
Escenario: BCISAV-125_Validar en 'Datos personales adicionales' que se solicite el ingreso de datos
  Dado Presiona el botón de "Continúe"
  Cuando En "Detalle su perfil", subetapa "Datos personales adicionales"
  Entonces Validar solcitud de ingreso de campos "País de nacimiento", "Estado civil", "Nivel de estudios", "Profesión o carrera técnica", "Rubro en que se desempeña", "Tipo de contrato laboral", "situcación laboral"

@BCISAV-126
Escenario: BCISAV-126_Validar que si el estado civil del prospecto es casado se le solicitara la información del conyugue
  Dado Presiona el botón de "Continúe"
  Y Se selecciona pais "CHILE"
  Y Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  Y Se selecciona profesión "ABOGADO"
  Y Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  Y Se selecciona situación laboral "Indefinido"
  Cuando Se selecciona estado civil "CASADO"
  Y Presiona el botón de "Continúe"
  Entonces validar solicitud de información del conyuge
