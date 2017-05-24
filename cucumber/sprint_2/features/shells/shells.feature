# language: es

@shell
Característica: Shell-Sin flujo antes de la ejecución de una Shell

@limpiarFS
Escenario: LimpiarFS_Ejecución de shell "LimpiarFS.sh"
  * Se conecta a FileSystem
  * Obtener archivos de directorio "/prospecto/filenet" divididos en 1 día
  * Obtener archivos de directorio "/prospecto/in" divididos en 1 día
  * Obtener archivos de directorio "/prospecto/log" divididos en 1 día
  * Obtener archivos de directorio "/prospecto/out" divididos en 1 día
  * Obtener archivos de directorio "/prospecto/tmp" divididos en 1 día
  * Obtener archivos de directorio "/prospecto/procesados" divididos en 1 día
  * Obtener archivos de directorio "/prospecto/viajes" divididos en 3 día
  * Ejecutar shell "/prospecto/she/LimpiaFS.sh" con resultado "SALIR 0 OK"
  * Validar archivos borrados en directorio "/prospecto/filenet"
  * Validar archivos borrados en directorio "/prospecto/in"
  * Validar archivos borrados en directorio "/prospecto/log"
  * Validar archivos borrados en directorio "/prospecto/out"
  * Validar archivos borrados en directorio "/prospecto/tmp"
  * Validar archivos borrados en directorio "/prospecto/procesados"
  * Validar archivos borrados en directorio "/prospecto/viajes"
  * Validar archivos no borrados en directorio "/prospecto/filenet"
  * Validar archivos no borrados en directorio "/prospecto/in"
  * Validar archivos no borrados en directorio "/prospecto/log"
  * Validar archivos no borrados en directorio "/prospecto/out"
  * Validar archivos no borrados en directorio "/prospecto/tmp"
  * Validar archivos no borrados en directorio "/prospecto/procesados"
  * Validar archivos no borrados en directorio "/prospecto/viajes"
  * Validar creación de archivo log para "LimpiaFS"
