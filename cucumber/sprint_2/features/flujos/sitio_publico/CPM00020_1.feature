# language: es
# Codigo: CPM00020
# Autor: CLopez
# TINET

@alm_publico @publico @CPM00020_publico
Característica: CPM00020_Obtener codigo de seguimiento - criterios de aceptación (Transferencia bancaria)
  Validar la identidad del prospecto realizando transferencia bancaria hacia otro banco y obtener código de seguimiento.

Antecedentes: Verificar que se visualizan el Plan preferencia para renta entre $2.500.000 y $2.999.999 y edad mayor a 18 años
  * Se ingresa a la aplicación viajes
  * Se ingresa la edad del cliente (45 años)
  * Se ingresa renta mensual de $2500000 a $2999999
  * Presiona el botón de "Quiero conocer mi plan"
  * Presiona el botón de "Quiero este Plan"
  * Presiona el botón de "Comience"
  * Se ingresa su nombre "Juan"
  * Se ingresa su apellido paterno "Perez"
  * Se ingresa su apellido materno "Perez"
  * Se ingresa su Rut "5391452-7"
  * Se ingresa Número de serie de su cédula "A025429199"
  * Se ingresa numero de telefono movil 983299405
  * Se ingresa Su correo electrónico "jpaineq@bcicert.cl"
  * Se limpia el prospecto y viaje
  * Presiona el botón de "Continuar"

Escenario: Escenario2_Validar datos transferencia
  * Se despliega mensaje de error "No se pudo validar su identidad con preguntas. Debe continuar con la validación de identidad con Transferencia Bancaria."
  * Presiona el botón de "Continúe"
  * Se despliega pantalla datos de transferencia
  * Prospecto ingresa datos, para realizar la transferencia
  * Se ingresa Banco "BANCO CONSORCIO"
  * Se ingresa Tipo de Cuenta "Cuenta Corriente"
  * Se ingresa Número de cuenta (a su nombre) 123123
  * Presiona boton "Siguiente"
  * Se obtiene monto de transferencia, desde la tabla autentica_transferencia, consultando por codigo del viaje, en base de datos prospecto
  * Se ingresa Monto Transferido, del campo monto de transferencia, desde la tabla autentica_transferencia, consultando por codigo del viaje, en base de datos prospecto
  * Presiona boton "Siguiente"
  * Se despliega el código de seguimiento
  * Restablecer rut inicial
