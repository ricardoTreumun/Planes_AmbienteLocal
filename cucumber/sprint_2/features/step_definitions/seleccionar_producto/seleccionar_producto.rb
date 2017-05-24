Entonces(/^validar que en el campo "([^"]*)" se encuentre en estado "([^"]*)"$/) do |arg1, arg2|
  $logger.debug "datos_viaje  : #{$datos_viaje}"
  expect($datos_viaje[arg1.to_s]).not_to be_nil
  expect($datos_viaje[arg1.to_s].to_s).to eql(arg2.to_s)
end

Entonces(/^Validar que en el campo "([^"]*)" se encuentre en estado "([^"]*)"$/) do |arg1, arg2|
  $logger.debug "datos_proceso  : #{$datos_proceso}"
  expect($datos_proceso[arg1.to_s]).not_to be_nil
  expect($datos_proceso[arg1.to_s].to_s).to eql(arg2.to_s)
end

Entonces(/^validar el datos del perfil$/) do
  $logger.debug "datos_prospecto  : #{$datos_prospecto}"
  expect($datos_prospecto['prp_direccion']).not_to be_nil
  expect($datos_prospecto['prp_email']).not_to be_nil
  expect($datos_prospecto['prp_telefono']).not_to be_nil
end

Then(/^Existe contenido "([^"]*)"$/) do |arg1|
  sleep 5
  a = find('.main-flux').has_content? arg1.to_s
  expect(a).to equal(true)
  save_screenshot
end

Then(/^Existe botón "No quiero este plan propuesto"$/) do
  find('button.btn:nth-child(2)').has_content? "No quiero este plan propuesto"
end

Then(/^Existe botón "Continúe" equipos$/) do
  find('button.pilot-btn:nth-child(1)').has_content? "Continúe"
end

Then(/^Existe botón "Continúe"$/) do
  save_screenshot
  if $bcinet
      find('button.btn').has_content? "Continúe"
  else
      find('a.btn').has_content? "Continúe"
  end
end

Then(/^Permite distribuir cupo en (\d+) tarjetas de credito$/) do |arg1|
  cantidad = 0
  i = 0
  while i < find('div.clearfix:nth-child(5)').all('div').size  do
    if !find('div.clearfix:nth-child(5)').all('div')[i]['ng-repeat'].nil? && find('div.clearfix:nth-child(5)').all('div')[i]['ng-repeat'] == "card in oferta.tarjetasDeCredito"
      cantidad += 1
    end
    i += 1
  end
  save_screenshot
  expect(cantidad).to eql(arg1.to_i)
end

Then(/^Se visualizan hasta (\d+) alternativas de elección de nombre prospecto, permita seleccionar nombre y se visualice en imagen de cheque\.$/) do |arg1|
  expect(find('.check-name-list').all('li').size).to eql(arg1.to_i)
end

Entonces(/^Validar que en la parte inferior se visualice mensaje que posee la estructura definida en el archivo de diseño$/) do
  texto = 'El plan de productos solicitado, se ha estructurado sobre la base de la renta '
  texto << 'que usted nos ha indicado. Sus liquidaciones y certificado de AFP entregados, '
  texto << 'serán previamente verificados, para validar que estén acorde a la renta indicada '
  texto << 'por usted. En caso de que existan diferencias, la oferta de planes propuesta a través'
  texto << ' de este canal, no tendrá validez. En tal caso, nos pondremos en contacto con usted '
  texto << 'para complementar la información o evaluar una nueva oferta.'
  save_screenshot
  find('.main-flux').has_content? texto
end

Cuando(/^Existe botón "Buscar"$/) do
  find('.info').has_content? "Buscar"
end

Cuando(/^Existe Link "Volver"$/) do
  find('.simple-link').has_content? 'Volver'
end

Entonces(/^Existe botón "Continúe" sucursal$/) do
  find('.pilot-btn').has_content? 'Continúe'
end

Entonces(/^Existe botón "Continúe" retiro$/) do
  find('.btn-success').has_content? 'Continúe'
end

Entonces(/^Solicita (\d+) liquidaciones$/) do |arg1|
  sleep 5
  save_screenshot
  expect(find('ul.upload-list:nth-child(10)').all('li').size).to eql(arg1.to_i)
end

Entonces(/^Existen producto en base de datos$/) do
  sleep 5
  $logger.debug "conectando base_datos : #{$base_datos}"
  DBUtils::Sybase.connect($base_datos, :prospectos)
  $logger.debug "conexion ok base_datos : #{$base_datos}"
  producto = DBUtils::Sybase.get_producto_form_rut($rut)
  DBUtils::Sybase.disconnect()
  expect(producto['codigo']).not_to be_nil
  expect(producto['nombre']).not_to be_nil
end

Dado(/^Existe contenido de plan "([^"]*)" con renta (\d+)$/) do |arg1, arg2|
if $bcinet
  if arg2.to_i == 450000
     while find("div.loading-box-planes:nth-child(1)", visible: false).visible? do
       sleep 1
     end
  elsif arg2.to_i == 0
     find('.error-title').has_content? arg1.to_s
  else
     while find("div.container:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(3) > div:nth-child(1) > div:nth-child(1)", visible: false).visible? do
        sleep 1
     end
  end
else
  if arg2.to_i == 0
     find('.error-title').has_content? arg1.to_s
  else
     while find("div.loading-box:nth-child(3)", visible: false).visible? do
       sleep 1
     end
     find('.container > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > h3:nth-child(1)').has_content? arg1.to_s
  end
end
  save_screenshot
end


Dado(/^Presiona el botón de plan (\d+)$/) do |arg1|
  if $bcinet
    if arg1.to_i >= 750000
       sleep 2
       find(:css , ".container > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > a:nth-child(1)").click
    else
       sleep 2
       find(".btn-success").click
    end
  else
    if arg1.to_i >= 750000
       sleep 1
       find(:css , ".container > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > a:nth-child(1)").click
    else
       sleep 1
       find(".btn-green").click
    end
  end
end

Cuando(/^Se ingresa su Rut continuar "([^"]*)"$/) do |arg1|
  if arg1 != nil && arg1 != ''
    $rut = arg1.split('-').first
    $rut_dv = arg1.split('-')[1]
  end
end

Dado(/^Presiona el botón de plan aadvantage$/) do
    if $bcinet
      sleep 2
      find(:css , "div.container:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > a:nth-child(1)").click
    else
      sleep 1
      find(:css , ".container > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > a:nth-child(1)").click
    end
end

Dado(/^Existe contenido de plan aadvantage "([^"]*)"$/) do |arg1|
if $bcinet
   while find("div.container:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(3) > div:nth-child(1) > div:nth-child(1)", visible: false).visible? do
     sleep 1
   end
else
  while find("div.loading-box:nth-child(3)", visible: false).visible? do
     sleep 1
  end
end
  find('.container > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > h3:nth-child(1)').has_content? arg1.to_s
  save_screenshot
end

Entonces(/^Existe contenido de plan "([^"]*)"$/) do |arg1|
  if arg1 != nil && arg1 != ''
    save_screenshot
     $tarjetas = arg1.split(',')
     $logger.debug "tarjetas  : #{$tarjetas}"
     $tarjetas.to_enum.with_index(1).each do |contenido,i|
         $logger.debug "Tarjeta evaluada: #{contenido.to_s}"
         validacion = find("div.choose-card-col:nth-child(#{i}) > div:nth-child(1) > div:nth-child(1) > h6:nth-child(1)").has_content? contenido.to_s
         expect(validacion).to eql(true)
     end
  end
end

Cuando(/^Presiona el botón de "Continúe" y espera (\d+) segundos$/) do |arg1|
  sleep arg1.to_i
  save_screenshot
  if find('a.btn')
    find('a.btn').click
  else
    click_on('Continúe')
  end
end

Cuando(/^Presiona el botón de "Continúe" bcinet y espera (\d+) segundos$/) do |arg1|
  sleep arg1.to_i
  save_screenshot
  find(".btn-success").click
end

Cuando(/^Presiona el botón de Continue dirección$/) do
  sleep 2
  save_screenshot
  find("div.clearfix:nth-child(1) > a:nth-child(1)").click
  while find(".spinner-container > div:nth-child(1)", visible: false).visible? do
    sleep 1
  end
  sleep 2
end

Cuando(/^se adjuntan (\d+) liquidaciones$/) do |arg1|
  sleep 10
  execute_script("$('#liquidacion').removeClass('ng-hide')")
  page.attach_file('liquidacion', File.join(Dir.pwd, 'test_attachments', 'testJPG.jpg'))
  sleep 3
  page.execute_script("$('#liquidacion').val('');")
  page.attach_file('liquidacion', File.join(Dir.pwd, 'test_attachments', 'testJPG1.jpg'))
  sleep 3
  page.execute_script("$('#liquidacion').val('');")
  page.attach_file('liquidacion', File.join(Dir.pwd, 'test_attachments', 'testJPG2.jpg'))
  execute_script("$('#liquidacion').addClass('ng-hide')")
end

Cuando(/^se adjuntan cotizaciones$/) do
  execute_script("window.$('<input/>').attr({ id: 'fileFakeInput', type: 'file' }).appendTo('body');")
  page.attach_file('fileFakeInput', File.join(Dir.pwd, 'test_attachments', 'testJPG3.jpg'))
  begin
    execute_script("angular.element($('button.info:nth-child(1)')).scope().agregarCertificado($('#fileFakeInput').get(0).files[0], null);")
  rescue Selenium::WebDriver::Error::UnknownError => e
    #Se controla este error debido a un problema en Selenium al ejecuar el script
    $logger.debug e
  end
  sleep 5
  execute_script("$('#fileFakeInput').addClass('ng-hide')")
end

Cuando(/^Presiona el botón de "([^"]*)" sucursal$/) do |arg1|
  sleep 1
  save_screenshot
  if $bcinet
    while find(".loading-box-planes", visible: false).visible? do
     sleep 1
    end
    find(".btn-success").click
  else
    while find("div.loading-box:nth-child(6)", visible: false).visible? do
     sleep 1
    end
    find(".pilot-btn").click
  end
end
