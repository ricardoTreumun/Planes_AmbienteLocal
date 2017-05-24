# language: es
# Codigo: CPM00040
# Autor: Gparedes
# TINET

@alm_bcinet @bcinet @CPM00040_bcinet
Característica: CPM00040_Detallar Información de Perfil Prospecto - criterios de aceptación (Direcciones)

Antecedentes: Agregar datos personales de un nuevo cliente
  * Se ingresa a la aplicación bcinet
  * Ingresar usuario bcinet
  * Ingresar contraseña bcinet
  * Presiona el botón de "Ingresar"
  * Se ingresa a la sub-aplicación viajes
  * Se limpia el prospecto y viaje
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
  * Presiona el botón de "Continuar"
  * Se despliega el código de seguimiento
  * Presiona el botón de "Continuar"
  * Selecciona tipo de ingreso fijo bcinet
  * Ingresar renta liquida mensual (2500000 pesos)
  * Presiona el botón de "Continuar"
  * Validar que no ingresa a la subetapa "Valide su renta"
  * Se selecciona pais "CHILE"
  * Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión "ABOGADO"
  * Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  * Se selecciona situación laboral "Indefinido"

Escenario: Escenario1_Validar que al tener la dirección particular registrada se desplieguen los datos
  * Se selecciona estado civil "soltero(a)"
  * Presiona el botón de "Continuar"
  * En "Detalle su perfil", subetapa "Datos personales adicionales"
  * El cliente tiene registrado la dirección particular
  * Se despliegan los datos en la subetapa "Dirección Particular y Comercial".
  * Presiona botón "Modificar estos datos"
  * Ingresar datos, Región: "QUINTA REGION", Comuna: "CON-CON"
  * validar no permite avanzar
  * adjuntar documento
  * presiona botón "Guardar cambios"
  * Cerrar sesion


Escenario: Escenario2_Validar en 'Datos personales adicionales' que se solicite el ingreso de datos
   * Se selecciona estado civil "CASADO"
   * Presiona el botón de "Continuar"
   * validar solicitud de información del conyuge
   * Cerrar sesion
