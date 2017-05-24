# language: es
# Codigo Jira: BCISAV-287
# Autor: Gparedes
# TINET

@atomico_bcinet @CPM00050
Característica: BCISAV-287_Seleccion de productos Viaje Presencial-criterios de aceptación

Antecedentes: Agregar datos personales de un nuevo cliente
  Dado Se ingresa a la aplicación bcinet
  Y Ingresar usuario bcinet
  Y Ingresar contraseña bcinet
  Y Presiona el botón de "Ingresar"
  Y Se ingresa a la sub-aplicación viajes
  Y Se ingresa la edad del cliente (45 años)
  Y Se ingresa renta mensual de $2500000 a $2999999
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Quiero este Plan"
  Y Presiona el botón de "Comience"
  Y Se ingresa su nombre "Juan"
  Y Se ingresa su apellido paterno "Perez"
  Y Se ingresa su apellido materno "Perez"
  Y Se ingresa su Rut ""
  Y Se limpia el prospecto y viaje
  Y Se ingresa Número de serie de su cédula ""
  Y Se ingresa numero de telefono movil 983299405
  Y Se ingresa Su correo electrónico ""
  Y Presiona el botón de "Continuar"
  Y Se despliega el código de seguimiento
  Y Presiona el botón de "Continuar"
  Y Selecciona tipo de ingreso fijo bcinet
  Y Ingresar renta liquida mensual (2500000 pesos)
  Y Presiona el botón de "Continuar"
  Y Se selecciona pais "CHILE"
  Y Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  Y Se selecciona profesión "ABOGADO"
  Y Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  Y Se selecciona situación laboral "Indefinido"
  Y Se selecciona estado civil "soltero(a)"
  Y Presiona el botón de "Continuar"
  Entonces Presiona el botón de "Continúe" dirección

@BCISAV-288
Escenario: BCISAV-288_Validar contenido sección Etapa 3
  Dado Existe contenido "Elija sus productos"
  Y Existe contenido "En base a los datos ingresados, el plan que mejor se ajusta a usted es el plan"
  Y Existe contenido ". El costo mensual es de"
  Entonces Existe contenido "UF IVA incluido."

@BCISAV-289
Escenario: BCISAV-289_Validar contenido Sub-Etapa "Seleccione sus tarjetas y personalice sus cheques"
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Entonces Existe botón "Continúe"

@BCISAV-290
Escenario: BCISAV-290_Validar contenido Sub-Sección "Escoja sus tarjetas"
  Entonces Permite distribuir cupo en 2 tarjetas de credito

@BCISAV-291
Escenario: BCISAV-291_Validar contenido Sub-Sección "Elija el nombre que imprimiremos en su chequera"
  Entonces Se visualizan hasta 3 alternativas de elección de nombre prospecto, permita seleccionar nombre y se visualice en imagen de cheque.

@BCISAV-292
Escenario: BCISAV-292_Validar contenido Sub-Sección inferior
  Entonces Validar que en la parte inferior se visualice mensaje que posee la estructura definida en el archivo de diseño

@BCISAV-294
Escenario: BCISAV-294_Validar despliegue pantalla con etapa 3
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Continúe" sucursal
  Y Existe contenido "Seleccione región"
  Y Existe contenido "Seleccione comuna:"
  Y Existe botón "Buscar"
  Y Existe Link "Volver"
  Entonces Existe botón "Continúe" sucursal

@BCISAV-295
Escenario: BCISAV-295_Despliegue sub sección ¿Dónde quiere recibir sus productos?
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Cuando se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Continúe" sucursal
  Y Existe contenido "¿Dónde quiere recibir sus productos?"
  Y Existe contenido "Retiro en sucursal"
  Y Existe Link "Volver"
  Entonces Existe botón "Continúe" retiro

@BCISAV-296
Escenario: BCISAV-296_Validar que al seleccionar botón “Continúe” se despliegue pantalla en etapa “3 Elija sus productos” y sub-etapas se visualice mensaje que posee la estructura definida en el archivo de diseño
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Y Existe contenido "Adjunte sus liquidaciones de sueldo"
  Y Existe contenido "Para comprobar su renta líquida mensual, necesitamos que adjunte sus últimas liquidaciones de sueldo por separado."
  Y Existe contenido "Adjunte el certificado de sus últimas 12 cotizaciones de AFP"
  Entonces Existe contenido "Podrá encontrar este certificado en el sitio web su AFP"

@BCISAV-298
Escenario: BCISAV-298_Validar que al ingresar en las sub secciones de "Liquidaciones y Cotizaciones", se presione el botón "Continúe" se reflejen los datos de renta ingresada en la Base de Datos "Prospectos" en la tabla "producto" en los campos "codigo" y "nombre".
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Cuando se adjuntan 3 liquidaciones
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Continúe" sucursal
  Entonces Existen producto en base de datos

@BCISAV-299
Escenario: BCISAV-299_Validar que Etapa código viaje se encuentre en "7" en Base de datos "Prospecto" en la tabla "Viaje" en el campo "etp_codigo"
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Continúe" sucursal
  Y Obtener datos tabla "viaje"
  Entonces validar que en el campo "etp_codigo" se encuentre en estado "7"

@BCISAV-300
Escenario: BCISAV-300_Validar que viaje Estado se encuentre en "1" en Base de datos "Prospecto" en la tabla "Viaje" en el campo "vje_estado".
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Continúe" sucursal
  Y Obtener datos tabla "viaje"
  Entonces validar que en el campo "vje_estado" se encuentre en estado "01"
