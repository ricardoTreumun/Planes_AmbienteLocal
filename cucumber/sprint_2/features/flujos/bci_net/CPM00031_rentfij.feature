# language: es
# Código: CPM00031
# Autor: Mluna
# TINET

@alm_bcinet @bcinet @CPM00031_bcinet
Característica: CPM00031_Ingresar Renta Fija Prospecto (Viaje Presencial)

Antecedentes:
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
  * Obtener ticket de atención
  * Cerrar sesion
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes

Escenario: Escenario1_Validar que en sitio de Bcinet se ingrese nombre de Usuario y Contraseña de ejecutivo, se presione el botón Ingresar y se desplieguen los campos Rut y Código Seguimientos, y el Botón Ingresar.
  * Se ingresa rut y código de seguimiento
  * Presiona el botón Ingresar
  * Se despliega pantalla con Detalle su Perfil
  * Valida tipo de ingreso bcinet
  * Valida renta liquida mensual bcinet
  * Valida link Ayuda bcinet
  * Verifica mensaje Liquidaciones_AFP bcinet
  * Valida Botón Continuar bcinet
  * Selecciona tipo de ingreso fijo bcinet seguimiento
  * Ingresar renta liquida mensual (2999999 pesos)
  * Seleciona link Ayuda bcinet
  * Verifica mensaje link ayuda bcinet
  * Presiona Boton Continúe bcinet
  * Validar Renta Prospecto con el rut "" y monto "2999999" pesos
  * Obtener datos tabla "viaje"
  * validar que en el campo "vje_estado" se encuentre en estado "01"
  * validar que en el campo "etp_codigo" se encuentre en estado "3"
