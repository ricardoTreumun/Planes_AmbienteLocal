# language: es
# Codigo Jira: BCISAV-352
# Autor: CLopez
# TINET
@atomico_bcinet @CPM00060
Característica: BCISAV-352_Finalizar viaje planes - criterios de aceptación

Antecedentes: Agregar datos personales de un nuevo cliente
  Dado Se ingresa a la aplicación bcinet
  Y Ingresar usuario bcinet
  Y Ingresar contraseña bcinet
  Y Presiona el botón de "Ingresar"
  Y Se ingresa a la sub-aplicación viajes
  Y Se ingresa la edad del cliente (35 años)
  Y Se ingresa renta mensual de $3000000 a $3999999
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
  Y Ingresar renta liquida mensual (3500000 pesos)
  Y Presiona el botón de "Continuar"
  Y Se selecciona pais "CHILE"
  Y Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  Y Se selecciona profesión "ABOGADO"
  Y Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  Y Se selecciona situación laboral "Indefinido"
  Y Se selecciona estado civil "soltero(a)"
  Y Presiona el botón de "Continuar"
  Y Presiona el botón de "Continúe" dirección

@BCISAV-353
Escenario: BCISAV-353_Validar que al ingresar a la etapa "4" se despliegue sección...
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Continúe" sucursal
  Y Presiona el botón de "Continúe" confirmar
  Entonces Validar costo mensual "Tarjeta de Débito"
  Y Validar monto "Línea de Sobregiro"
  Y Validar monto "Tarjeta de Crédito"
  Y Validar "Sucursal de atención"
  Y Validar "Retiro de productos"
  Y Validar botón "Confirmar solicitud"

@BCISAV-355
Escenario: BCISAV-355_Validar que en la parte inferior se visualice el mensaje
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Continúe" sucursal
  Y Presiona el botón de "Continúe" confirmar
  Entonces Validar que en la parte inferior se visualice el mensaje...

@BCISAV-356
Escenario: BCISAV-356_Validar que al presionar el botón "Confirmar solicitud" se despliegue mensaje...
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Continúe" sucursal
  Y Presiona el botón de "Continúe" confirmar
  Y Presiona Boton Continúe confirmación bcinet
  Entonces Validar plan contratado
  Y Validar Sucursal de retiro
  Y Validar que en la parte inferior se visualice el mensaje... (Confirmar)
  Y Validar link "Imprimir comprobante"
  Y Validar botón "Comience la experiencia"
  Y Validar credito pre aprobado
  Y Validar imagen credito pre aprobado

@BCISAV-414
Escenario: BCISAV-414_Estado de la SUC en "140" en la Base de Datos "Succorporativa" en la tabla "solicitud" en los campos "nro_solicitud" y "id_estado"
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Continúe" sucursal
  Y Presiona el botón de "Continúe" confirmar
  Y Presiona Boton Continúe confirmación bcinet
  Y Presiona el botón "Comience la experiencia"
  Entonces Validar estado de la "SUC"

@BCISAV-415
Escenario: BCISAV-415_Se visualice "SUC" o Línea de crédito en la Base de Datos "Succorporativa" en la tabla "det_linea_cred_sol" en los campos "id_cab_lcg_sol" y "monto_max"
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Continúe" sucursal
  Y Presiona el botón de "Continúe" confirmar
  Y Presiona Boton Continúe confirmación bcinet
  Y Presiona el botón "Comience la experiencia"
  Entonces validar linea de credito campos "id_cab_lcg_sol" y "monto_max_pesos"

@BCISAV-363
Escenario: BCISAV-363_Posteriormente al seleccionar el Botón "Comience la experiencia" se despliegue video de YouTube de nombre "EstoEsBci". Y botón "Cerrar"
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Continúe" sucursal
  Y Presiona el botón de "Continúe" confirmar
  Y Presiona Boton Continúe confirmación bcinet
  Y Presiona el botón "Comience la experiencia"
  Entonces Validar video "EstoEsBci"
  Y Validar botón "Cerrar"

@BCISAV-568
Escenario: BCISAV-568_Validar que se visualice el ejecutivo "USUFICT" en la base de datos "prospectos"
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Continúe" sucursal
  Y Presiona el botón de "Continúe" confirmar
  Entonces validar que en el campo "vje_jof_cod" se encuentre en estado "USUFICT"
  Y Validar "USUFICT" en base de datos "succorporativa"

@BCISAV-411
Escenario: BCISAV-411_Viaje Estado se encuentre en "2"
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Continúe" sucursal
  Y Presiona el botón de "Continúe" confirmar
  Y Presiona Boton Continúe confirmación bcinet
  Y Presiona el botón "Comience la experiencia"
  Y Obtener datos tabla "viaje"
  Entonces validar que en el campo "vje_estado" se encuentre en estado "02"

@BCISAV-358
Escenario: BCISAV-358_Etapa código viaje se encuentre en "8" en Base de datos "Prospecto" en la tabla "Viaje" en el campo "etp_codigo"
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Continúe" sucursal
  Y Presiona el botón de "Continúe" confirmar
  Y Presiona Boton Continúe confirmación bcinet
  Y Obtener datos tabla "viaje"
  Entonces validar que en el campo "etp_codigo" se encuentre en estado "8"

@BCISAV-412
Escenario: BCISAV-412_Validar que se reflejen los datos de confirmación de solicitud en la Base de datos "Prospectos" en la tabla "proceso_viaje_batch"
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Continúe" sucursal
  Y Presiona el botón de "Continúe" confirmar
  Y Presiona Boton Continúe confirmación bcinet
  Y Presiona el botón "Comience la experiencia"
  Entonces validar registro tabla "proceso_viaje_batch"

@BCISAV-413
Escenario: BCISAV-413_Validar que Estado Margen se encuentre en "1"
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Continúe" sucursal
  Y Presiona el botón de "Continúe" confirmar
  Y Presiona Boton Continúe confirmación bcinet
  Y Presiona el botón "Comience la experiencia"
  Y Obtener datos tabla "viaje"
  Entonces validar registro tabla "finalizar_viaje"

@BCISAV-416
Escenario: BCISAV-416_Validar que El número de teléfono ingresado en el viaje del cliente sea consistente
  Dado Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre que imprimiremos en su chequera"
  Y Presiona Boton Continúe bcinet
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Quiero conocer mi plan"
  Y Presiona el botón de "Continúe" sucursal
  Y Presiona el botón de "Continúe" confirmar
  Y Presiona Boton Continúe confirmación bcinet
  Y Presiona el botón "Comience la experiencia"
  Y Obtener datos tabla "viaje"
  Entonces validar numero de telefono movil 983299405

@BCISAV-569
Escenario: BCISAV-569_Validar que al seleccionar "Plan Preferencial" y renta superior a $3.000.000 y < 3.999.999, se despliegue tarjeta "Platino".
  Entonces Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre impreso en su chequera"
  Y Existe contenido "Bci Visa Platinum"
  Y Existe contenido "Bci MasterCard Platinum"

@BCISAV-570
Escenario: BCISAV-570_Validar que al seleccionar "Plan Preferencial" y renta superior a $3.000.000, se despliegue tarjeta "Black".
  Entonces Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  Y Existe contenido "Escoja sus tarjetas"
  Y Existe contenido "Elija el nombre impreso en su chequera"
  Y Existe contenido "Bci / AAdvantage MasterCard Black"
