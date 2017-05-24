# language: es
# Codigo Jira: BCISAV-33
# Autor: CLopez
# TINET
@atomico_publico @CPM00060
Característica: BCISAV-33_Finalizar viaje planes - criterios de aceptación

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
  Y Se selecciona "Tipo de ingreso"
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
  Y Presiona el botón de "Continúe" equipos
  Y se adjuntan 3 liquidaciones
  Y se adjuntan cotizaciones
  Y Presiona el botón de "Continúe"
  Y Presiona el botón de "Continúe" sucursal

@BCISAV-167
Escenario: BCISAV-167_Validar que al ingresar a la etapa "4" se despliegue sección...
  Dado Presiona el botón de "Continúe"
  Entonces Validar costo mensual "Tarjeta de Débito"
  Y Validar monto "Línea de Sobregiro"
  Y Validar monto "Tarjeta de Crédito"
  Y Validar "Sucursal de atención"
  Y Validar "Retiro de productos"
  Y Validar botón "Confirmar solicitud"

@BCISAV-169
Escenario: BCISAV-169_Validar que en la parte inferior se visualice el mensaje
  Dado Presiona el botón de "Continúe"
  Entonces Validar que en la parte inferior se visualice el mensaje...

@BCISAV-170
Escenario: BCISAV-170_Validar que al presionar el botón "Confirmar solicitud" se despliegue mensaje...
  Dado Presiona el botón de "Continúe"
  Y Presiona el botón de "Continúe" confirmar
  Entonces Validar plan contratado
  Y Validar Sucursal de retiro
  Y Validar que en la parte inferior se visualice el mensaje... (Confirmar)
  Y Validar link "Imprimir comprobante"
  Y Validar botón "Comience la experiencia"
  Y Validar credito pre aprobado
  Y Validar imagen credito pre aprobado

@BCISAV-170
Escenario: BCISAV-170_Validar que al presionar el botón "Confirmar solicitud" se despliegue mensaje...
  Dado Presiona el botón de "Continúe"
  Y Presiona el botón de "Continúe" confirmar
  Y Obtener datos tabla "viaje"
  Entonces validar que en el campo "etp_codigo" se encuentre en estado "8"

@BCISAV-173
Escenario: BCISAV-173_Estado de la SUC en "140" en la Base de Datos "Succorporativa" en la tabla "solicitud" en los campos "nro_solicitud" y "id_estado"
  Dado Presiona el botón de "Continúe"
  Y Presiona el botón de "Continúe" confirmar
  Y Presiona el botón "Comience la experiencia"
  Entonces Validar estado de la "SUC"

@BCISAV-178
Escenario: BCISAV-178_Posteriormente al seleccionar el Botón "Comience la experiencia" se despliegue video de YouTube de nombre "EstoEsBci". Y botón "Cerrar"
  Dado Presiona el botón de "Continúe"
  Y Presiona el botón de "Continúe" confirmar
  Y Presiona el botón "Comience la experiencia"
  Entonces Validar video "EstoEsBci"
  Y Validar botón "Cerrar"

@BCISAV-179
Escenario: BCISAV-179_Validar que se visualice el ejecutivo "USUFICT" en la base de datos "prospectos"
  Dado Presiona el botón de "Continúe"
  Y Presiona el botón de "Continúe" confirmar
  Y Presiona el botón "Comience la experiencia"
  Y Obtener datos tabla "viaje"
  Entonces validar que en el campo "vje_jof_cod" se encuentre en estado "USUFICT"
  Y Validar "USUFICT" en base de datos "succorporativa"

@BCISAV-403
Escenario: BCISAV-403_Viaje Estado se encuentre en "2"
  Dado Presiona el botón de "Continúe"
  Y Presiona el botón de "Continúe" confirmar
  Y Presiona el botón "Comience la experiencia"
  Y Obtener datos tabla "viaje"
  Entonces validar que en el campo "vje_estado" se encuentre en estado "02"

@BCISAV-404
Escenario: BCISAV-404_Validar que se reflejen los datos de confirmación de solicitud en la Base de datos "Prospectos" en la tabla "proceso_viaje_batch"
  Dado Presiona el botón de "Continúe"
  Y Presiona el botón de "Continúe" confirmar
  Y Presiona el botón "Comience la experiencia"
  Entonces validar registro tabla "proceso_viaje_batch"

@BCISAV-405
Escenario: BCISAV-405_Validar que Estado Margen se encuentre en "1"
  Dado Presiona el botón de "Continúe"
  Y Presiona el botón de "Continúe" confirmar
  Y Presiona el botón "Comience la experiencia"
  Y Obtener datos tabla "viaje"
  Entonces validar registro tabla "finalizar_viaje"

@BCISAV-406
Escenario: BCISAV-406_Validar que El número de teléfono ingresado en el viaje del cliente sea consistente
  Dado Presiona el botón de "Continúe"
  Y Presiona el botón de "Continúe" confirmar
  Y Presiona el botón "Comience la experiencia"
  Y Obtener datos tabla "viaje"
  Entonces validar numero de telefono movil 983299405

@BCISAV-408
Escenario: BCISAV-408_Validar que se visualice "SUC" o Línea de crédito en la Base de Datos "Succorporativa" en la tabla "det_linea_cred_sol" en los campos "id_cab_lcg_sol" y "monto_max".
  Dado Presiona el botón de "Continúe"
  Y Presiona el botón de "Continúe" confirmar
  Y Presiona el botón "Comience la experiencia"
  Y Obtener datos tabla "viaje"
  Entonces validar linea de credito campos "id_cab_lcg_sol" y "monto_max_pesos"
