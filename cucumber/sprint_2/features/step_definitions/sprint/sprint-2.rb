Cuando(/^Se ingresa renta mensual de \$(\d+)\ a \$(\d+) webpublico$/) do |renta_i, renta_f|
  #Desplegar combobox
  sleep 5
  find("#renta > a").click
  sleep 1
  #Buscar opción
  if renta_i.to_i >= 0 and renta_f.to_i == 399999
    find("#renta > div > div > input").send_keys("$0")
  elsif renta_i.to_i >= 0 and renta_f.to_i == 449999
    find("#renta > div > div > input").send_keys("$0")
  elsif renta_i.to_i == 450000 and renta_f.to_i <= 749999
    find("#renta > div > div > input").send_keys("$450.000 a $749.999")
  elsif renta_i.to_i >= 750000 and renta_f.to_i <= 1299999
    find("#renta > div > div > input").send_keys("$750.000 a $1.299.999")
  elsif renta_i.to_i >= 1300000 and renta_f.to_i <= 2499999
    find("#renta > div > div > input").send_keys("$1.300.000 a $2.499.999")
  elsif renta_i.to_i >= 2500000 and renta_f.to_i <= 4000000
    find("#renta > div > div > input").send_keys("$2.500.000 a $4.000.000")
  elsif renta_i.to_i >= 4000000
    find("#renta > div > div > input").send_keys("Mayor o igual a $4.000.000")
  end
  #Seleccionar opción
    if renta_i.to_i >= 2999999
       find("#ui-select-choices-row-0-0").click
    else
       find("#ui-select-choices-row-0-0 > div:nth-child(1) > div:nth-child(1)").click
    end
end

Cuando(/^Se valida el mensaje de error$/) do
   sleep 3
   texto =  'Estimado(a) Cliente: En base a los antecedentes proporcionados por usted, '
   texto << 'le informamos que de acuerdo a nuestras políticas de riesgo, '
   texto << 'no podremos acoger por el momento su solicitud.'
   expect(page).to have_content(texto)
end

Cuando(/^Valida mensaje Autorización servicio Previred$/) do
  sleep 6
  expect(page).to have_content('Autorización servicio Previred')
end

Cuando(/^Selecciona autoriza servicio Previred$/) do
  sleep 6
  find('.botonAutorizado').click
end

Cuando(/^Selecciona no autoriza servicio Previred$/) do
  sleep 3
  find('.botonNoAutorizado').click

end

Cuando(/^Se despliega pantalla Datos personales adicionales$/) do
  find('.flux-content').has_content? 'Datos personales adicionales'
end

Dado(/^Se despliegan preguntas equifax bcinet$/) do
  find('div.flux-content:nth-child(1)').has_content? 'Validación de identidad con preguntas'
end

Cuando(/^Presiona el botón de "Validar Identidad" bcinet$/) do
  save_screenshot
  sleep 1
  find(:css , 'div.clearfix:nth-child(4) > a:nth-child(1)').click
end

Cuando(/^Responder pregunta 1 bcinet no valido$/) do
  sleep 5
  find(:css , '.form-container > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > ul:nth-child(3) > li:nth-child(1) > label:nth-child(1)').click
end

Cuando(/^Responder pregunta 2 bcinet no valido$/) do
  sleep 1
  find(:css , '.form-container > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > ul:nth-child(3) > li:nth-child(2) > label:nth-child(1)').click
end

Cuando(/^Responder pregunta 3 bcinet no valido$/) do
  sleep 1
  find(:css , 'div.row:nth-child(3) > div:nth-child(1) > div:nth-child(1) > ul:nth-child(3) > li:nth-child(3) > label:nth-child(1)').click
end

Cuando(/^Responder pregunta 4 bcinet no valido$/) do
  sleep 1
  find(:css , 'div.row:nth-child(4) > div:nth-child(1) > div:nth-child(1) > ul:nth-child(3) > li:nth-child(4) > label:nth-child(1)').click
end

Cuando(/^Presiona el botón de "Continuar" bcinet$/) do
  find('.alert').has_content? 'Estimado cliente: No se pudo validar su identidad con preguntas. Debe continuar con la validación de identidad con Transferencia Bancaria.'
  save_screenshot
  if $bcinet
    find(:css , ".btn-success").click
  else
    find(:css , "a.btn").click
  end
end

Dado(/^Validar que el campo vje_estado de la tabla viaje se encuentre rechazado en estado "([^"]*)" "([^"]*)"$/) do |arg1, arg2|
  DBUtils::Sybase.connect($base_datos, :prospectos)
    rut = arg2.split('-').first
    $logger.debug "rut formateado vje_estado : #{rut.to_i}"
  if rut != nil && rut != ''
     $logger.debug "rut : #{arg2.to_i}"
     viaje = DBUtils::Sybase.get_viaje_from_rut(rut.to_i)
     etp_codigo = viaje['vje_estado']
     $logger.info "vje_estado : #{viaje['vje_estado']}"
     expect(etp_codigo.to_s).to eql(arg1.to_s)
     $logger.info "vje_estado finalizado correctamente"
  end
  DBUtils::Sybase.disconnect()
end

