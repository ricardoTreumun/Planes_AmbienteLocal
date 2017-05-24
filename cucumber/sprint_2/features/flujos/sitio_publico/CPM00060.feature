# language: es
# Codigo: CPM00060
# Autor: CLopez
# TINET

@alm_publico @publico @CPM00060_publico
Característica: CPM00060_Finalizar viaje planes - criterios de aceptación

Antecedentes: Agregar datos personales de un nuevo cliente
  * Se ingresa a la aplicación viajes
  * Se ingresa la edad del cliente (45 años)
  * Se ingresa renta mensual de $2500000 a $2999999
  * Presiona el botón de "Quiero conocer mi plan"
  * Presiona el botón de "Quiero este Plan"
  * Presiona el botón de "Comience"
  * Se ingresa su nombre "Juan"
  * Se ingresa su apellido paterno "Perez"
  * Se ingresa su apellido materno "Perez"
  * Se ingresa su Rut ""
  * Se ingresa Número de serie de su cédula ""
  * Se ingresa numero de telefono movil 983299405
  * Se ingresa Su correo electrónico ""
  * Se limpia el prospecto y viaje
  * Presiona el botón de "Continúe"
  * Se despliegan preguntas equifax
  * Responder pregunta 1
  * Responder pregunta 2
  * Responder pregunta 3
  * Responder pregunta 4
  * Presiona el botón de "Validar Identidad"
  * Se despliega el código de seguimiento
  * Presiona el botón de "Continúe"
  * Se selecciona "Tipo de ingreso"
  * Se ingresa renta liquida de $2500000
  * Presiona el botón de "Continúe"
  * Se selecciona pais "CHILE"
  * Se selecciona estado civil "SOLTERO(A)"
  * Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión "ABOGADO"
  * Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  * Se selecciona situación laboral "Indefinido"
  * Presiona el botón de "Continúe"
  * Presiona el botón de "Continúe" dirección
  * Presiona el botón de "Continúe" equipos
  * se adjuntan 3 liquidaciones
  * se adjuntan cotizaciones
  * Presiona el botón de "Continúe"
  * Presiona el botón de "Continúe" sucursal

Escenario: Escenario1_Validar que al ingresar a la etapa "4" se despliegue sección...
  * Presiona el botón de "Continúe"
  * Validar costo mensual "Tarjeta de Débito"
  * Validar acceso a Sybase Motor ulysses_I y bases de datos prospectos
  * Validar acceso a Sybase Motor ulysses_II y bases de datos succorporativa
  * Obtener datos tabla "viaje"
  * validar que en el campo "etp_codigo" se encuentre en estado "8"
  * validar que en el campo "vje_estado" se encuentre en estado "01"
  * Existe productos para "Confirmación de productos"
  * Validar monto "Línea de Sobregiro"
  * Validar monto "Tarjeta de Crédito"
  * Validar "Sucursal de atención"
  * Validar "Retiro de productos"
  * Validar botón "Confirmar solicitud"
  * Validar que en la parte inferior se visualice el mensaje...
  * Presiona el botón de "Continúe" confirmar
  * Se conecta a FileSystem
  * validar mapa epyphany campo "rut"
  * validar mapa epyphany campo "formaDePago=1,5="
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
  * Validar plan contratado
  * Validar Sucursal de retiro
  * Validar que en la parte inferior se visualice el mensaje... (Confirmar)
  * Validar link "Imprimir comprobante"
  * Validar botón "Comience la experiencia"
  * Validar credito pre aprobado
  * Validar imagen credito pre aprobado
  * Obtener datos tabla "viaje"
  * validar que en el campo "etp_codigo" se encuentre en estado "8"
  * validar imagen y monto de credito pre-aprobado
  * Presiona el botón "Comience la experiencia"
  * Validar estado de la "SUC"
  * Validar video "EstoEsBci"
  * Validar botón "Cerrar"
  * validar que en el campo "vje_jof_cod" se encuentre en estado "USUFICT"
  * Validar "USUFICT" en base de datos "succorporativa"
  * validar que en el campo "vje_estado" se encuentre en estado "02"
  * validar registro tabla "proceso_viaje_batch"
  * validar registro tabla "finalizar_viaje"
  * validar numero de telefono movil 983299405
  * validar linea de credito campos "id_cab_lcg_sol" y "monto_max_pesos"
