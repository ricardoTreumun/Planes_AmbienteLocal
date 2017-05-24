# language: es
# Código Jira:BCISAV
# Autor: MLuna
# TINET

@alm_publico @sitiopublico @CPM00090
Característica: BCISAV-Reutilización de Caso de prueba

Antecedentes: Obtener código de seguimiento
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
* Obtener ticket de atención
* Se ingresa a la aplicación viajes


Escenario: BCISAV-Retomar viaje de planes para prospectos registrados
* Presiona el boton Continue
* Ingresar el rut y codigo seguimiento
* Presiona el boton Ingresar
* Se despliega pantalla con Detalle de Perfil
* Valida tipo de ingreso
* Valida renta liquida mensual
* Valida Botón Continuar
* Verifica mensaje Liquidaciones_AFP
* Verifica Boton Continúe
* Se selecciona "Tipo de ingreso"
* Se ingresa renta liquida de $2999999
* Presiona el botón de "Continúe"
* Se selecciona pais "CHILE"
* Se selecciona estado civil "SOLTERO(A)"
* Se selecciona nivel de estudio "CARRERA UNIVERSITARIA Y/O POSTGRADO COMPLETA"
* Se selecciona profesión "ABOGADO"
* Se selecciona tipo de contrato "Director, Gerente o Jefatura"
* Se selecciona situación laboral "Indefinido"
* Presiona el botón de "Continúe" y espera 2 segundos
* Presiona el botón de Continue dirección
* Presiona el botón de "Continúe" equipos
* se adjuntan 3 liquidaciones
* se adjuntan cotizaciones
* Presiona el botón de "Continúe"
* Presiona el botón de "Continúe" sucursal
* Presiona el botón de "Continúe"
* Presiona el botón de "Continúe" confirmar
* Presiona el botón "Comience la experiencia"
