# language: es
# Codigo Jira: BCISAV-392
# Autor: CLopez
# TINET

@atomico_publico @CPM00020
Característica: BCISAV-392_Obtener codigo de seguimiento - criterios de aceptación (Transferencia bancaria)
  Validar la identidad del prospecto realizando transferencia bancaria hacia otro banco y obtener código de seguimiento.

Antecedentes: Verificar que se visualizan el Plan preferencia para renta entre $2.500.000 y $2.999.999 y edad mayor a 18 años
  Dado Se ingresa a la aplicación viajes
  Cuando Se ingresa la edad del cliente (45 años)
  Y Se ingresa renta mensual de $2500000 a $2999999
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Quiero este Plan"
  Y Presiona el botón de "Comience"
  Y Se ingresa su nombre "Juan"
  Y Se ingresa su apellido paterno "Perez"
  Y Se ingresa su apellido materno "Perez"
  Y Se ingresa su Rut "14809219-2"
  Y Se ingresa Número de serie de su cédula "A123456786"
  Y Se ingresa numero de telefono movil 983299405
  Y Se ingresa Su correo electrónico "jpaineq@bcicert.cl"
  Y Se limpia el prospecto y viaje
  Y Presiona el botón de "Continuar"

@BCISAV-21
Escenario: BCISAV-21_Validar datos transferencia
  Dado Se despliega mensaje de error "No se pudo validar su identidad con preguntas. Debe continuar con la validación de identidad con Transferencia Bancaria."
  Cuando Presiona el botón de "Continúe"
  Y Se despliega pantalla datos de transferencia
  Y Prospecto ingresa datos, para realizar la transferencia
  Y Se ingresa Banco "BANCO CONSORCIO"
  Y Se ingresa Tipo de Cuenta "Cuenta Corriente"
  Y Se ingresa Número de cuenta (a su nombre) 123123
  Y Presiona boton "Siguiente"
  Entonces Se limpia el prospecto y viaje

@BCISAV-22
Escenario: BCISAV-22_Validar que al realizar la transferencia se vea reflejada esta en la base de datos
  Dado Se despliega mensaje de error "No se pudo validar su identidad con preguntas. Debe continuar con la validación de identidad con Transferencia Bancaria."
  Cuando Presiona el botón de "Continúe"
  Y Se despliega pantalla datos de transferencia
  Y Prospecto ingresa datos, para realizar la transferencia
  Y Se ingresa Banco "BANCO CONSORCIO"
  Y Se ingresa Tipo de Cuenta "Cuenta Corriente"
  Y Se ingresa Número de cuenta (a su nombre) 12312321
  Y Presiona boton "Siguiente"
  Y Se obtiene monto de transferencia, desde la tabla autentica_transferencia, consultando por codigo del viaje, en base de datos prospecto
  Y Se ingresa Monto Transferido, del campo monto de transferencia, desde la tabla autentica_transferencia, consultando por codigo del viaje, en base de datos prospecto
  Entonces Se limpia el prospecto y viaje
