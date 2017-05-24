# language: es
# Codigo: CPM00060
# Autor: MLuna
# TINET

@alm_bcinet @bcinet @CPM00060_bcinet
Característica: CPM00060_Finalizar viaje planes - criterios de aceptación

Antecedentes: Agregar datos personales de un nuevo cliente
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se ingresa la edad del cliente (35 años)
  * Se ingresa renta mensual de $3000000 a $3999999
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
  * Ingresar renta liquida mensual (3500000 pesos)
  * Presiona el botón de "Continuar"
  * Se selecciona pais "CHILE"
  * Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión "ABOGADO"
  * Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  * Se selecciona situación laboral "Indefinido"
  * Se selecciona estado civil "soltero(a)"
  * Presiona el botón de "Continuar"
  * Presiona el botón de "Continúe" dirección
  * Existe contenido "Seleccione sus tarjetas y personalice sus cheques"
  * Existe contenido "Escoja sus tarjetas"
  * Existe contenido "Elija el nombre impreso en su chequera"

Escenario: Escenario1_Validar que al ingresar a la etapa "4" se despliegue sección...
  * Existe contenido "Bci Visa Platinum"
  * Existe contenido "Bci MasterCard Platinum"
  * Existe contenido "Bci / AAdvantage MasterCard Black"
  * Presiona Boton Continúe bcinet
  * se adjuntan 3 liquidaciones
  * se adjuntan cotizaciones
  * Presiona el botón de "Quiero conocer mi plan"
  * Presiona el botón de "Continúe" sucursal
  * Presiona el botón de "Continúe" confirmar
  * Validar costo mensual "Tarjeta de Débito"
  * Validar monto "Línea de Sobregiro"
  * Validar monto "Tarjeta de Crédito"
  * Validar "Sucursal de atención"
  * Validar "Retiro de productos"
  * Validar botón "Confirmar solicitud"
  * Validar acceso a Sybase Motor ulysses_I y bases de datos prospectos
  * Validar acceso a Sybase Motor ulysses_II y bases de datos succorporativa
  * Obtener datos tabla "viaje"
  * Existe productos para "Confirmación de productos"
  * Validar que en la parte inferior se visualice el mensaje...
  * Presiona Boton Continúe confirmación bcinet
  * Obtener datos tabla "viaje"
  * Obtener ticket de atención
  * validar que dispone de codigo de seguimiento
  * Obtener datos tabla "renta"
  * validar que el campo "rta_ori" y "rta_usr_act" se encuentra el nombre "PROSPECTO"
  * Validar plan contratado
  * Validar Sucursal de retiro
  * Validar que en la parte inferior se visualice el mensaje... (Confirmar)
  * Validar link "Imprimir comprobante"
  * Validar botón "Comience la experiencia"
  * Validar credito pre aprobado
  * Validar imagen credito pre aprobado
  * Obtener datos tabla "viaje"
  * Presiona el botón "Comience la experiencia"
  * validar linea de credito campos "id_cab_lcg_sol" y "monto_max_pesos"
  * Validar estado de la "SUC"
  * Validar video "EstoEsBci"
  * Validar botón "Cerrar"
  * validar que en el campo "vje_jof_cod" se encuentre en estado "USUFICT"
  * Validar "USUFICT" en base de datos "succorporativa"
  * validar que en el campo "vje_estado" se encuentre en estado "02"
  * validar que en el campo "etp_codigo" se encuentre en estado "8"
  * validar registro tabla "proceso_viaje_batch"
  * validar registro tabla "finalizar_viaje"
  * validar numero de telefono movil 983299405
