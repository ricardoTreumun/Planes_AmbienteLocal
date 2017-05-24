# language: es
# Codigo: CPM00001
# Autor: Mluna
# TINET

@alm_publico @publico @CPM00001_publico
Característica: CPM00001_Registrar identidad de prospecto por Equifax - criterios de aceptación
  Se ofertan planes correctos de acuerdo a rango de rentas y edad declaradas

@independiente
Escenario: Escenario_Registrar identidad de prospecto por Equifax - INDEPENDIENTE
  * Se ingresa a la aplicación viajes
  * Se ingresa la edad del cliente (35 años)
  * Se ingresa renta mensual de $1300000 a $2499999
  * Se marca CheckBox Soy trabajador independiente
  * Presiona el botón de "Quiero conocer mi plan"
  * Se despliega información de Plan Bci Independiente
  * Se ingresa su nombre "Juan"
  * Se ingresa su apellido paterno "Perez"
  * Se ingresa su apellido materno "Perez"
  * Se limpia el proceso_viaje_batch
  * Se ingresa su rut Plan Independiente
  * Se ingresa Su correo electrónico "prueba.bci.cucumber@gmail.com"
  * Se ingresa numero de telefono movil 983299405
  * Presiona el boton enviar solicitud
  * Obtener datos tabla proceso
  * Validar que en el campo "vje_jof_cod" se encuentre en estado "USUFICT"
