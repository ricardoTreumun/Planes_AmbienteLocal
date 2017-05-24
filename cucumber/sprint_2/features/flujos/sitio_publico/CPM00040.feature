# language: es
# Codigo: CPM00040
# Autor: CLopez
# TINET

@alm_publico @publico @CPM00040_publico
Característica: CPM00040_Detallar Información de Perfil Prospecto - criterios de aceptación (Direcciones)

Antecedentes: Agregar direcciones de un nuevo cliente
  * Se ingresa a la aplicación viajes
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
  * Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
  * Se selecciona profesión "ABOGADO"
  * Se selecciona tipo de contrato "Director, Gerente o Jefatura"
  * Se selecciona situación laboral "Indefinido"

Escenario: Escenario1_Validar que al tener la dirección particular registrada se desplieguen los datos
  * Se selecciona estado civil "soltero(a)"
  * Presiona el botón de "Continúe"
  * En "Detalle su perfil", subetapa "Datos personales adicionales"
  * El cliente tiene registrado la dirección particular
  * Se despliegan los datos en la subetapa "Dirección Particular y Comercial".
  * Presiona botón "Modificar estos datos"
  * Ingresar datos, Región: "QUINTA REGION", Comuna: "CON-CON"
  * validar no permite avanzar
  * adjuntar documento
  * presiona botón "Guardar cambios"

Escenario: Escenario2_Validar en 'Datos personales adicionales' que se solicite el ingreso de datos
  * Se selecciona estado civil "CASADO"
  * Presiona el botón de "Continúe"
  * validar solicitud de información del conyuge
