Dado(/^Se conecta a FileSystem$/) do
  gw = nil
  if !$ssh_gw_host.nil?
    gw = {
        :gw_host => $ssh_gw_host,
        :gw_user => $ssh_gw_user,
        :gw_pass => $ssh_gw_pass,
        :gw_port => $ssh_gw_port
    }
  end
  $fs = Utils::FileSystem.new($ssh_host, $ssh_user, $ssh_pass, gw)
end

Dado(/^Ejecutar shell "([^"]*)" con resultado "([^"]*)"$/) do |shell, resultado|
  result = $fs.execute_shell(shell, resultado)
  if expect(result).to eql(true)
    $logger.debug "SHELL #{shell} EJECUTADA EXITOSAMENTE CON RESULTADO #{resultado}"
  else
    $logger.debug "SHELL #{shell} NO EJECUTADA"
  end
end

Dado(/^Obtener archivos de directorio "([^"]*)" divididos en (\d+) día$/) do |arg1, arg2|
  $logger.debug "Se valida archivo o directorio : #{arg1}"
  result = $fs.execute_command("ls #{arg1}").split("\n")
  fecha_sistema = $fs.get_date(arg2)
  if $archivos_mayores.nil?
      $archivos_mayores = {}
  end
  if $archivos_menores.nil?
      $archivos_menores = {}
  end
  $archivos_mayores[arg1] = Array.new
  $archivos_menores[arg1] = Array.new
  result.each do |archivo|
    fecha_archivo = $fs.get_date_file("#{arg1}/#{archivo}")
    if fecha_archivo < fecha_sistema
      $archivos_mayores[arg1].push(archivo)
    else
      $archivos_menores[arg1].push(archivo)
    end
  end
end

Dado(/^Validar archivos borrados en directorio "([^"]*)"$/) do |arg1|
  $logger.debug "Se valida archivo o directorio : #{arg1}"
  valido = true
  $archivos_mayores[arg1].each do |archivo|
    fecha_archivo = $fs.get_date_file("#{arg1}/#{archivo}")
    expect(fecha_archivo).to be <= 0
  end
end

Dado(/^Validar archivos no borrados en directorio "([^"]*)"$/) do |arg1|
  $logger.debug "Se valida archivo o directorio : #{arg1}"
  $archivos_menores[arg1].each do |archivo|
    fecha_archivo = $fs.get_date_file("#{arg1}/#{archivo}")
    expect(fecha_archivo).to be > 0
  end
end

Dado(/^Validar creación de archivo log para "([^"]*)"$/) do |arg1|
  $logger.debug "Se valida log para shell : #{arg1}"
  result = $fs.execute_command("ls /prospecto/log").split("\n")
  fecha_sistema = $fs.get_date()
  valido = false
  result.each do |archivo|
    if archivo.include? arg1
      fecha_archivo = $fs.get_date_file("/prospecto/log/#{archivo}")
      if fecha_archivo == fecha_sistema
        valido = true
        break
      end
    end
  end
  expect(valido).to eql(true)
end

Dado(/^Valida archivo "([^"]*)" en directorio "([^"]*)"$/) do |shell,directorio|
  ruta = directorio + "/" + shell
  $logger.debug "Se validará existencia archivo o directorio : #{ruta}"
  existencia = $fs.exist_file(ruta)
  expect(existencia).to eql(true)
end

Dado(/^Valida directorio "([^"]*)" con documentos$/) do |directorio|
  codigoSeguimiento = $datos_ticket['tck_atn_codigo']

  ruta = "#{directorio}#{$rut}#{"/"}#{codigoSeguimiento}"
  rutaCot  = "#{ruta}#{"/cot"}#{"/"}#{"testJPG3.jpg"}"
  rutaLiq  = "#{ruta}#{"/liq"}"
  rutaLiq1 = "#{ruta}#{"/liq"}#{"/"}#{"testJPG.jpg"}"
  rutaLiq2 = "#{ruta}#{"/liq"}#{"/"}#{"testJPG1.jpg"}"
  rutaLiq3 = "#{ruta}#{"/liq"}#{"/"}#{"testJPG2.jpg"}"

  $logger.debug "################***INICIO VALIDACIÓN DE DIRECTORIO #{ruta}***########################"
  $logger.debug "Se validará existencia archivo o directorio del rut #{$rut} en : #{ruta}"

  existencia = $fs.exist_file(ruta)
  expect(existencia).to eql(true)
  $logger.debug "¡Existe archivo o directorio del rut #{$rut} en : #{ruta}"
  $logger.debug "Se validará existencia archivo o directorio del rut #{$rut} en : #{rutaCot}"
  existencia = $fs.exist_file(rutaCot)
  expect(existencia).to eql(true)
  $logger.debug "¡Existe archivo o directorio del rut #{$rut} en : #{rutaCot}"
  $logger.debug "Se validará existencia archivo o directorio del rut #{$rut} en : #{rutaLiq}"
  existencia1 = $fs.exist_file(rutaLiq1)
  existencia2 = $fs.exist_file(rutaLiq2)
  existencia3 = $fs.exist_file(rutaLiq3)
  $logger.debug "¡Existen archivos del rut #{$rut} en : #{rutaLiq}!"
  expect(existencia1).to eql(true)
  expect(existencia2).to eql(true)
  expect(existencia3).to eql(true)
end

Dado(/^Valida que la shell genere carpetas por rut en la ruta "([^"]*)",representada con una carpeta con un ticket que dentro de ella se ingresan los documentos separados por directorios$/) do |directorio|
    codigoSeguimiento = $datos_ticket['tck_atn_codigo']
    $logger.debug "################***INICIO VALIDACIÓN DE DIRECTORIO***########################"
    ruta = "#{directorio}#{$rut}#{"/"}#{codigoSeguimiento}"
    rutaCot  = "#{ruta}#{"/cot"}"
    rutaLiq  = "#{ruta}#{"/liq"}"
    $logger.debug "Se validará existencia de archivo o directorio del rut #{$rut} en : #{ruta}"
    existencia = $fs.exist_file(ruta)
    expect(existencia).to eql(true)
    $logger.debug "¡Existe archivo o directorio del rut #{$rut} en : #{ruta}"
    existencia = $fs.exist_file(rutaCot)
    expect(existencia).to eql(true)
    $logger.debug "¡Existe archivo o directorio del rut #{$rut} en : #{rutaCot}"
    existencia = $fs.exist_file(rutaLiq)
    expect(existencia).to eql(true)
    $logger.debug "¡Existe archivo o directorio del rut #{$rut} en : #{rutaLiq}"
end
