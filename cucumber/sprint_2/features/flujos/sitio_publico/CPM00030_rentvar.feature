# language: es
# Código: CPM00030
# Autor: SAcevedo
# TINET

@alm_publico @publico @CPM00030_publico
Característica: CPM00030_Registrar Prospecto.Obtener Codigo de seguimiento

Antecedentes:
  * Se ingresa a la aplicación viajes
  * Se ingresa la edad del cliente (45 años)
  * Se ingresa renta mensual de $2500000 a $2999999
  * Presiona el botón de "Quiero conocer mi plan"
  * Se valida Acceso a Base de Datos "Prospectos"
  * Presiona el botón de "Quiero este Plan"
  * Presiona el botón de "Comience"
  * Se limpia el prospecto y viaje
  * Se ingresa su nombre "Juan"
  * Se ingresa su apellido paterno "Perez"
  * Se ingresa su apellido materno "Perez"
  * Se ingresa su Rut ""
  * Se ingresa Número de serie de su cédula ""
  * Se ingresa numero de telefono movil 983299405
  * Se ingresa Su correo electrónico "jpaineq@bcicert.cl"
  * Se limpia el prospecto y viaje
  * Presiona el botón de "Continuar"
  * Se despliegan preguntas equifax
  * Responder pregunta 1
  * Responder pregunta 2
  * Responder pregunta 3
  * Responder pregunta 4
  * Presiona el botón de "Validar Identidad"
  * Se despliega el código de seguimiento
  * Obtener ticket de atención
  * Se ingresa a la aplicación viajes
  * Obtener datos tabla "viaje"
  * Se Valida Código Seguimiento en la tabla ticket_atencion en el campo tck_atn_codigo
  * validar que en el campo "etp_codigo" se encuentre en estado "3"
  * validar que en el campo "vje_estado" se encuentre en estado "01"

Escenario: Escenario1_Validar que en sitio de Web Publica en la parte superior se visualice el botón Continúe, se presione y se desplieguen los campos Rut y Código Seguimientos, y el Botón Ingresar.
  * Presiona el boton Continue
  * Ingresar el rut y codigo seguimiento
  * Presiona el boton Ingresar
  * Se despliega pantalla con Detalle de Perfil
  * Valida tipo de ingreso
  * Valida renta liquida mensual
  * Valida link Ayuda
  * Valida Botón Continuar
  * Verifica mensaje Liquidaciones_AFP
  * Verifica Boton Continúe
  * Selecciona tipo de ingreso variable
  * Se ingresa renta liquida de $2999999
  * Seleciona link Ayuda
  * Verifica mensaje link ayuda
  * Presiona el botón de "Continúe"
  * Validar Renta Prospecto con el rut "" y monto "2999999" pesos
  * Obtener datos tabla "viaje"
  * validar que en el campo "vje_estado" se encuentre en estado "01"
  * validar que en el campo "etp_codigo" se encuentre en estado "3"
  * validar que no se muestre en Combo Box de Nombre "Estado Civil", "Acuerdo de Unión Civíl"
