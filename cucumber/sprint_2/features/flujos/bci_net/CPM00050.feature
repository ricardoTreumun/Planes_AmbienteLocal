# language: es
# Codigo: CPM00050
# Autor: Gparedes
# TINET

@alm_bcinet @bcinet @CPM00050_bcinet
Característica: CPM00050_Seleccion de productos Viaje Presencial-criterios de aceptación

Antecedentes: Agregar datos personales de un nuevo cliente
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa la edad del cliente (45 años)
  * Se ingresa renta mensual de $2500000 a $2999999
  * Presiona el botón de "Quiero conocer mi plan"
  * Presiona el botón de "Quiero este Plan"
  * Presiona el botón de "Comience"
  * Se ingresa su nombre "Juan"
  * Se ingresa su apellido paterno "Perez"
  * Se ingresa su apellido materno "Perez"
  * Se ingresa su Rut ""
  * Se limpia el prospecto y viaje
  * Se ingresa Número de serie de su cédula ""
  * Se ingresa numero de telefono movil 983299405
  * Se ingresa Su correo electrónico ""
  * Presiona el botón de "Continuar"
  * Se despliega el código de seguimiento
  * Presiona el botón de "Continuar"
  * Selecciona tipo de ingreso fijo bcinet
  * Ingresar renta liquida mensual (2500000 pesos)
  * Presiona el botón de "Continuar"
  * Obtener datos tabla "renta"
  * valida que tiene la renta registrada
  * Validar acceso a Sybase Motor ulysses_I y bases de datos prospectos
  * Obtener ticket de atención
  * validar que dispone de codigo de seguimiento
  * Obtener datos tabla "viaje"
  * validar que en el campo "vje_estado" se encuentre en estado "01"
  * Obtener datos tabla "prospecto"
  * validar el datos del perfil
  * Validar que no ingresa a la subetapa "Valide su renta"
  * Se selecciona pais "CHILE"
  * Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión "ABOGADO"
  * Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  * Se selecciona situación laboral "Indefinido"
  * Se selecciona estado civil "soltero(a)"
  * Presiona el botón de "Continuar"
  * Presiona el botón de "Continúe" dirección

Escenario: Escenario_Validar contenido sección Etapa 3
  * Existe contenido "Elija sus productos"
  * Obtener datos tabla "viaje"
  * validar que en el campo "etp_codigo" se encuentre en estado "4"
  * Existe contenido "En base a los datos ingresados, el plan que mejor se ajusta a usted es el plan"
  * Existe contenido ". El costo mensual es de"
  * Existe contenido "UF IVA incluido."
  * Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  * Existe contenido "Escoja sus tarjetas"
  * Existe contenido "Elija el nombre que imprimiremos en su chequera"
  * Existe botón "Continúe"
  * Permite distribuir cupo en 2 tarjetas de credito
  * Se visualizan hasta 3 alternativas de elección de nombre prospecto, permita seleccionar nombre y se visualice en imagen de cheque.
  * Validar que en la parte inferior se visualice mensaje que posee la estructura definida en el archivo de diseño
  * Presiona Boton Continúe bcinet
  * Existe contenido "Adjunte sus liquidaciones de sueldo"
  * Existe contenido "Para comprobar su renta líquida mensual, necesitamos que adjunte sus últimas liquidaciones de sueldo por separado."
  * Existe contenido "Adjunte el certificado de sus últimas 12 cotizaciones de AFP"
  * Existe contenido "Podrá encontrar este certificado en el sitio web su AFP"
  * Solicita 3 liquidaciones
  * se adjuntan 3 liquidaciones
  * se adjuntan cotizaciones
  * Presiona el botón de "Continúe" sucursal
  * Obtener datos tabla "viaje"
  * validar que en el campo "etp_codigo" se encuentre en estado "7"
  * validar que en el campo "vje_estado" se encuentre en estado "01"
  * Existen producto en base de datos
  * Existe contenido "Seleccione región"
  * Existe contenido "Seleccione comuna:"
  * Existe botón "Buscar"
  * Existe Link "Volver"
  * Existe botón "Continúe" sucursal
  * Presiona el botón de "Quiero conocer mi plan"
  * Existe contenido "¿Dónde quiere recibir sus productos?"
  * Existe contenido "Retiro en sucursal"
  * Existe Link "Volver"
  * Existe botón "Continúe" retiro
  * Presiona el botón de "Continúe" sucursal
  * Cerrar sesion
