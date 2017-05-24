Dado(/^Se ingresa a la aplicación viajes$/) do
  visit $url_app_viajes
  $bcinet = false
  sleep 2
  save_screenshot
end

Dado(/^Se ingresa a la aplicación bcinet$/) do
  visit $url_app_bcinet + $bcinet_login
  $bcinet = true
  save_screenshot
  sleep 2
end

Cuando(/^Se ingresa la edad del cliente \((\d+) años\)$/) do |edad|
  fill_in "edad", :with => edad
end

Cuando(/^Se ingresa renta mensual de \$(\d+)\ a \$(\d+)$/) do |arg1, arg2|
  #Desplegar combobox
  sleep 5
  find("#renta > a").click
  sleep 1
  #Buscar opción
  if arg1.to_i >= 0 and arg2.to_i == 399999
    find("#renta > div > div > input").send_keys("$0")
  elsif arg1.to_i >= 0 and arg2.to_i == 449999
    find("#renta > div > div > input").send_keys("$0")
  elsif arg1.to_i == 400000 and arg2.to_i <= 749999
    find("#renta > div > div > input").send_keys("$400.000 a $749.999")
  elsif arg1.to_i == 450000 and arg2.to_i <= 749999
    find("#renta > div > div > input").send_keys("$450.000 a $749.999")
  elsif arg1.to_i >= 750000 and arg2.to_i <= 1299999
    find("#renta > div > div > input").send_keys("$750.000 a $1.299.999")
  elsif arg1.to_i >= 1300000 and arg2.to_i <= 2499999
    find("#renta > div > div > input").send_keys("$1.300.000 a $2.499.999")
  elsif arg1.to_i >= 2500000 and arg2.to_i <= 2999999
    find("#renta > div > div > input").send_keys("$2.500.000 a $2.999.999")
  elsif arg1.to_i >= 2999999
    #Se eliminó el valor en el combobox de bcinet mayor o igual a $3.000.000
        find("#renta > div > div > input").send_keys("$3.000.000 a $3.999.999")
  end
  #Seleccionar opción
  if $bcinet
       find(".ui-select-search").native.send_keys(:enter)
  else
    if arg1.to_i >= 2999999
       find("#ui-select-choices-row-0-0").click
    else
       find("#ui-select-choices-row-0-0 > div:nth-child(1) > div:nth-child(1)").click
    end
  end
end

Dado(/^Se ingresa renta mensual de \$(\d+)$/) do |arg1|
  #Desplegar combobox
  sleep 5
  find("#renta > a").click
  sleep 1
  #Buscar opción
  if $bcinet
      find("#renta > div > div > input").send_keys("Mayor o igual a $3.000.000")
      sleep 1
      find("#ui-select-choices-row-9-0").click
  else
      find("#renta > div > div > input").send_keys("$3.000.000 a $3.999.999")
      sleep 1
      find("#ui-select-choices-row-0-0").click
  end
end


Cuando(/^Presiona el botón de "Quiero conocer mi plan"$/) do
  sleep 5
  save_screenshot
  if $bcinet
    find(".btn-success").click
  else
    find(".btn-green").click
  end
end

Cuando(/^Se marca la casilla "([^"]*)"$/) do |arg1|
  find("#check").click
end

Entonces(/^Se despliega mensaje de error$/) do
  sleep 5
  save_screenshot
  expect(page).to have_content('Lamentamos no poder atender su solicitud')
end

Entonces(/^Se despliega popup trabador independiente.$/) do
  sleep 5
  save_screenshot
  expect(page).to have_content("Plan Bci Independiente")
end

Entonces(/^Se despliega planes con renta mensual de \$(\d+)\ a \$(\d+)$/) do |arg1, arg2|
  sleep 5
  save_screenshot
  if arg1.to_i >= 400000 and arg2.to_i <= 749999
    expect(page).to have_content("Plan Clásico")
    expect(page).to have_no_content("Plan Bci/AAdvantage")

    expect(page).to have_no_content("Plan Premier")
    expect(page).to have_no_content("Plan Preferencial")
  elsif arg1.to_i >= 750000 and arg2.to_i <= 1299999
    expect(page).to have_content("Plan Clásico")
    expect(page).to have_content("Plan Bci/AAdvantage")

    expect(page).to have_no_content("Plan Premier")
    expect(page).to have_no_content("Plan Preferencial")
  elsif arg1.to_i >= 1300000 and arg2.to_i <= 2499999
    expect(page).to have_content("Plan Premier")
    expect(page).to have_content("Plan Bci/AAdvantage")

    expect(page).to have_no_content("Plan Clásico")
    expect(page).to have_no_content("Plan Preferencial")
  elsif arg1.to_i >= 2500000 and arg2.to_i <= 2999999
    expect(page).to have_content("Plan Preferencial")
    expect(page).to have_content("Plan Bci/AAdvantage")

    expect(page).to have_no_content("Plan Clásico")
    expect(page).to have_no_content("Plan Premier")
  end
end

Entonces(/^Se despliega planes con renta mensual de \$(\d+)$/) do |arg1|
  sleep 5
  save_screenshot
  if arg1.to_i >= 2999999
    expect(page).to have_content("Plan Preferencial")
    expect(page).to have_content("Plan Bci/AAdvantage")

    expect(page).to have_no_content("Plan Clásico")
    expect(page).to have_no_content("Plan Premier")
  end
end

Entonces(/^Se despliega el checkbox "([^"]*)"$/) do |arg1|
  page.check('check')
  save_screenshot
  expect(page).to have_content("Soy trabajador independiente")
end

Entonces(/^No se despliega el checkbox "([^"]*)"$/) do |arg1|
  save_screenshot
  expect(page).to have_no_content("Soy trabajador independiente")
end

Dado(/^Ingresar usuario bcinet$/) do
  fill_in "nombreUsuario", :with => $bcinet_user
end

Dado(/^Ingresar contraseña bcinet$/) do
  fill_in "clave", :with => $bcinet_pass
end

Dado(/^Presiona el botón de "Ingresar"$/) do
  save_screenshot
  find(".btn").click
end

Dado(/^Se ingresa a la sub-aplicación viajes$/) do
  sleep 20
  visit $url_app_bcinet + $bcinet_planes
  save_screenshot
  sleep 5
end
Dado(/^Se ingresa a la sub-aplicación viajes no-login$/) do
  sleep 3
  visit $url_app_bcinet + $bcinet_planes
  save_screenshot
  sleep 5
end

Cuando(/^Presiona el botón de "Quiero este Plan"$/) do
  if $bcinet
    while find("div.container:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(3) > div:nth-child(1) > div:nth-child(1)", visible: false).visible? do
     sleep 1
    end
  else
    while find("div.loading-box:nth-child(3)", visible: false).visible? do
     sleep 1
    end
  end
  while find("div.col-lg-6:nth-child(2) > div:nth-child(1) > div:nth-child(3) > div:nth-child(1) > div:nth-child(1)", visible: false).visible? do
   sleep 1
  end
  sleep 2
  save_screenshot
  if $bcinet
    find(:css , "div.container:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > a:nth-child(1)").click
  else
    find(:css , "div.container:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > a:nth-child(1)").click
  end

end

Cuando(/^Presiona el botón de "Comience"$/) do
  find('.main-flux').has_content? 'Para comenzar debe tener a mano'
  sleep 1
  save_screenshot
  find("button.btn:nth-child(2)").click
end

Cuando(/^Se limpia el prospecto y viaje$/) do
  if $rut != nil && $rut != ''
     DBUtils::Sybase.connect($base_datos, :prospectos)
     $logger.debug "rut : #{$rut.to_i}"
     viaje = DBUtils::Sybase.get_viaje_from_rut($rut.to_i)
     cod_viaje = viaje['vje_codigo']
     $logger.debug "codigo viaje : #{cod_viaje}"
     error = DBUtils::Sybase.clean_prospecto_viaje($rut.to_i,cod_viaje.to_i)
     DBUtils::Sybase.disconnect()
  end
end

Entonces(/^Se despliega pantalla Ingrese sus datos personales$/) do
  expect(page).to have_content('Ingrese sus datos personales')
end

Dado(/^Prospecto se encuentra en pantalla Ingrese sus datos personales$/) do
  expect(page).to have_content('Ingrese sus datos personales')
end

Cuando(/^Se ingresa numero de telefono fijo (\d+)$/) do |arg1|
  fill_in "telefono", :with => arg1
  save_screenshot
end

Entonces(/^Bordes del campo Numero de telefono se depliegan en color verde$/) do
  save_screenshot
end

Cuando(/^Se ingresa numero de telefono movil (\d+)$/) do |arg1|
  fill_in "telefono", :with => arg1
end

Cuando(/^Se ingresa Su correo electrónico "([^"]*)"$/) do |arg1|
  if arg1 != nil && arg1 != ''
    $correo = arg1
  end
  fill_in "correoElectronico", :with => $correo
end

Entonces(/^Bordes del campo Su correo electrónico se depliegan en color verde$/) do
  sleep 2
  save_screenshot
end

Entonces(/^Presiona link volver$/) do
  find(".simple-link").click
  sleep 2
end

Cuando(/^Se ingresa su nombre "([^"]*)"$/) do |arg1|
  fill_in "nombre", :with => arg1
end

Cuando(/^Se ingresa su apellido paterno "([^"]*)"$/) do |arg1|
  fill_in "apellidoPaterno", :with => arg1
end

Cuando(/^Se ingresa su apellido materno "([^"]*)"$/) do |arg1|
  fill_in "apellidoMaterno", :with => arg1
end

Cuando(/^Se ingresa su Rut "([^"]*)"$/) do |arg1|
  if arg1 != nil && arg1 != ''
    $rut_backup = $rut
    $rut_dv_backup = $rut_dv
    $rut = arg1.split('-').first
    $rut_dv = arg1.split('-')[1]
  elsif $rut_backup != nil
    $rut = $rut_backup
    $rut_dv = $rut_dv_backup
  end
  fill_in "rut", :with => $rut + $rut_dv
end

Cuando(/^Se ingresa Número de serie de su cédula "([^"]*)"$/) do |arg1|
  if arg1 != nil && arg1 != ''
    $rut_serie_backup = $rut_serie
    $rut_serie = arg1
  elsif $rut_serie_backup != nil
    $rut_serie = $rut_serie_backup
  end
  fill_in "numeroSerieDocumento", :with => $rut_serie
end

Cuando(/^Restablecer rut inicial$/) do
  if $rut_backup != nil
    $rut = $rut_backup
    $rut_dv = $rut_dv_backup
    $rut_serie = $rut_serie_backup
  end
end

Cuando(/^Presiona el botón de "Continuar"$/) do
  sleep 1
  save_screenshot
  if $bcinet
    find(:css , ".btn-success").click
  else
    find(:css , "a.btn").click
  end
end

Cuando(/^Presiona el botón de "Continúe"$/) do
  sleep 3
  save_screenshot
  if find('a.btn')
    find('a.btn').click
  else
    click_on('Continúe')
  end
end

Cuando(/^Se despliega mensaje de error "([^"]*)"$/) do |arg1|
  find('.alert').has_content? 'Estimado cliente: No se pudo validar su identidad con preguntas. Debe continuar con la validación de identidad con Transferencia Bancaria.'
end

Cuando(/^Se despliega el código de seguimiento$/) do
  if $bcinet
    find('.main-bg').has_content? 'Le hemos enviado su código seguimiento'
  else
    find('body > div.ng-scope > ui-view > div.main-bg.ng-scope > div.main-flux > div > div.row > div.col-sm-12').has_content? 'Le hemos enviado su código seguimiento'
  end
  save_screenshot
end


Entonces(/^Se despliega pantalla datos de transferencia$/) do
  sleep 5
  expect(page).to have_content('Para su seguridad, valide su identidad con otro banco')
end

Dado(/^Prospecto ingresa datos, para realizar la transferencia$/) do
  while find("div.loading-box:nth-child(6)", visible: false).visible? do
   sleep 1
  end
  expect(page).to have_content('Transferiremos un pequeño monto a su otro banco, para que lo ingrese en el siguiente paso.')
end

Cuando(/^Se ingresa Banco "([^"]*)"$/) do |arg1|
  find("#bancoSeleccionado").click
  sleep 1
  find(:xpath, '//*[@id="bancoSeleccionado"]/div/div/input').send_keys(arg1)
  find("#ui-select-choices-row-1-0").click
end

Cuando(/^Se ingresa Tipo de Cuenta "Cuenta Corriente"$/) do
   find("#cuentaSeleccionada").click
   find("#ui-select-choices-row-2-0 > div:nth-child(1) > div:nth-child(1)").click
end

Cuando(/^Se ingresa Número de cuenta \(a su nombre\) (\d+)$/) do |arg1|
   fill_in "numeroCuenta", :with => arg1
end

Entonces(/^Presiona boton "Siguiente"$/) do
  sleep 5
  save_screenshot
  find("body > div.ng-scope > ui-view > div.main-bg.ng-scope > div.main-flux > div > form > div.clearfix.align-center > a.btn.pilot-btn.pull-right").click
end

Dado(/^Conectar a base de datos "Culyssses_I"$/) do
  if $base_datos != nil && $base_datos != ''
     $logger.debug "conectando base_datos : #{$base_datos}"
     DBUtils::Sybase.connect($base_datos, :prospectos)
     $logger.debug "conexion ok base_datos : #{$base_datos}"
     DBUtils::Sybase.disconnect()
  else
      $logger.debug "conexion nok base_datos : #{$base_datos}"
  end
end

Entonces(/^Conectar a base de datos "Culysses_II"$/) do
  if $base_datos_suc != nil && $base_datos_suc != ''
     $logger.debug "conectando base_datos : #{$base_datos_suc}"
     DBUtils::Sybase.connect($base_datos_suc, :succorporativa)
     $logger.debug "conexion ok base_datos : #{$base_datos_suc}"
     DBUtils::Sybase.disconnect()
  else
     $logger.debug "conexion nok base_datos : #{$base_datos_suc}"
  end
end

Entonces(/^se inicializa rut "([^"]*)"$/) do |arg1|
  if arg1 != nil && arg1 == '12643142-2'
     $rut_cliente = arg1
     $logger.debug "rut_cliente : #{$rut_cliente}"
  elsif arg1 != nil && arg1 == '15824391-1'
     $rut_fc = arg1
     $rut_cliente = nil
     $logger.debug "rut_fc : #{$rut_fc}"
  else
     $logger.debug "no se inicializa rut"
  end
end

Dado(/^Prospecto ingresó datos de transferencia$/) do
    sleep 5
    expect(page).to have_content('Para completar estos datos, revise su cartola de transferencias')
end

Cuando(/^Se obtiene codigo de viaje, desde la tabla viaje, consultando por rut (\d+)\-"([^"]*)", en base de datos prospecto$/) do |arg1, arg2|
  DBUtils::Sybase.connect($base_datos, :prospectos)
  if $rut != nil && $rut != ''
     $logger.debug "rut : #{$rut.to_i}"
     viaje = DBUtils::Sybase.get_viaje_from_rut($rut.to_i)
     expect(viaje).not_to be_empty
     rut_cliente = viaje['prp_rut']
     expect($rut.to_i).to eql(rut_cliente.to_i)
     DBUtils::Sybase.disconnect()
  end
end

Cuando(/^Se obtiene monto de transferencia, desde la tabla autentica_transferencia, consultando por codigo del viaje, en base de datos prospecto$/) do
  sleep 10
  if $rut != nil && $rut != ''
    DBUtils::Sybase.connect($base_datos, :prospectos)
    $logger.debug "rut : #{$rut.to_i}"
    transferencia = DBUtils::Sybase.check_transferencia_from_rut($rut.to_i)
    expect(transferencia).not_to be_empty
    $logger.debug "transferencia : #{transferencia}"
    DBUtils::Sybase.disconnect()
  end
end

Cuando(/^Se ingresa Monto Transferido, del campo monto de transferencia, desde la tabla autentica_transferencia, consultando por codigo del viaje, en base de datos prospecto$/) do
  DBUtils::Sybase.connect($base_datos, :prospectos)
  monto_transferencia = ''
  if $rut != nil && $rut != ''
     $logger.debug "rut : #{$rut.to_i}"
     transferencia = DBUtils::Sybase.check_transferencia_from_rut($rut.to_i)
     expect(transferencia).not_to be_empty
     $logger.debug "transferencia : #{transferencia}"
     monto_transferencia = transferencia['aut_trf_monto']
  end
  DBUtils::Sybase.disconnect()
  fill_in "montoTransferido", :with => monto_transferencia
  save_screenshot
end

Cuando(/^Presiona el botón de "Valide su identidad"$/) do
  sleep 3
  save_screenshot
  find("a.btn").click
end

Cuando(/^Se despliega mensaje "([^"]*)"$/) do |arg1|
  expect(page).to have_content('Le hemos enviado su código seguimiento')
  sleep 5
  save_screenshot
end

Cuando(/^Se obtiene datos del prospecto, desde la tabla prospecto, consultando por rut (\d+)\-"([^"]*)", en base de datos prospecto$/) do |arg1, arg2|
  DBUtils::Sybase.connect($base_datos, :prospectos)
  if $rut != nil && $rut != '' && $rut_dv != nil && $rut_dv != ''
     $logger.debug "rut : #{$rut.to_i}"
     $logger.debug "dv : #{$rut_dv}"
     prospecto = DBUtils::Sybase.get_prospecto($rut.to_i,$rut_dv)
     expect(prospecto).not_to be_empty
     $logger.debug "prospecto : #{prospecto}"
  end
  DBUtils::Sybase.disconnect()
end

Cuando(/^Se obtiene datos del viaje, desde la tabla viaje, consultando por rut, en base de datos prospecto$/) do
  DBUtils::Sybase.connect($base_datos, :prospectos)
  if $rut != nil && $rut != ''
     $logger.debug "rut : #{$rut.to_i}"
     viaje = DBUtils::Sybase.get_viaje_from_rut($rut.to_i)
     expect(viaje).not_to be_empty
  end
  DBUtils::Sybase.disconnect()
end

Entonces(/^Se despliega codigo de seguimiento obtenido desde la tabla ticket_atencion, consultando por codigo de viaje, en base de datos prospecto$/) do
  DBUtils::Sybase.connect($base_datos, :prospectos)
  if $rut != nil && $rut != ''
     $logger.debug "rut : #{$rut.to_i}"
     ticket_atencion = DBUtils::Sybase.get_ticket_atencion_form_rut($rut.to_i)
     expect(ticket_atencion).not_to be_empty
     $logger.debug "ticket atencion: #{ticket_atencion}"
  end
  DBUtils::Sybase.disconnect()
end

Cuando(/^Se obtiene mail desde la tabla prospecto, consultando por rut (\d+)\-"([^"]*)", en base de datos prospecto$/) do |arg1, arg2|
DBUtils::Sybase.connect($base_datos, :prospectos)
  if $rut != nil && $rut != ''
     $logger.debug "rut : #{$rut.to_i}"
     prospecto = DBUtils::Sybase.get_prospecto($rut.to_i,$rut_dv)
     expect(prospecto).not_to be_empty
     mail = prospecto['prp_email']
     expect(mail).not_to be_empty
  end
  DBUtils::Sybase.disconnect()
end

Cuando(/^Prospecto ingresa a bandeja de entrada de su correo y valida que mantega correo enviado por banco$/) do
  $logger.debug "url_correo : #{$url_correo}"
  visit $url_correo
  expect(page).to have_content('Bci Certificación / Integración')
  if $user_correo != nil && $user_correo != '' && $pass_correo != nil && $pass_correo != ''
    fill_in "user", :with => $user_correo
    fill_in "passwd", :with => $pass_correo
  end
  find("#loginBox > p:nth-child(5) > input:nth-child(1)").click
  expect(page).to have_content('Confirmación código de ticket')
  sleep 5
  save_screenshot
end

Cuando(/^Prospecto abre correo y busca codigo de seguimiento$/) do
  find("tr.odd:nth-child(2) > td:nth-child(6) > a:nth-child(1)").click
  codigo_seguimiento = ''
  sleep 2
  DBUtils::Sybase.connect($base_datos, :prospectos)
  if $rut != nil && $rut != ''
     $logger.debug "rut : #{$rut.to_i}"
     sleep 2
     ticket_atencion = DBUtils::Sybase.get_ticket_atencion_form_rut($rut.to_i)
     expect(ticket_atencion).not_to be_empty
     $logger.debug "ticket atencion : #{ticket_atencion}"
     codigo_seguimiento = ticket_atencion['tck_atn_codigo']
  end
  sleep 5
  expect(page).to have_content(codigo_seguimiento)
  save_screenshot
  DBUtils::Sybase.disconnect()
end

Cuando(/^Ingresar rut del cliente$/) do
 find('input.ng-invalid-rut').send_keys $rut + $rut_dv
end

Cuando(/^Ingresar codigo de seguimiento$/) do
 codigo_seguimiento = ''
 DBUtils::Sybase.connect($base_datos, :prospectos)
 if $rut != nil && $rut != ''
    $logger.debug "rut : #{$rut.to_i}"
    ticket_atencion = DBUtils::Sybase.get_ticket_atencion_form_rut($rut.to_i)
    expect(ticket_atencion).not_to be_empty
    $logger.debug "ticket atencion : #{ticket_atencion}"
    codigo_seguimiento = ticket_atencion['tck_atn_codigo']
 end
 find('div.form-group:nth-child(2) > input:nth-child(1)').send_keys codigo_seguimiento
 DBUtils::Sybase.disconnect()
end

Cuando (/^Presiona el botón de "Ingreso"$/) do
 find("a.btn:nth-child(3)").click
 sleep 5
 save_screenshot
end


Cuando(/^Ingresa a la aplicacion de planes en bcinet$/) do
  find('body').text 'Valide su renta'
  save_screenshot
end

Entonces(/^Validar que el ejecutivo asociado al viaje sea igual al que lo registro.$/) do
  ejecutivo = ''
  DBUtils::Sybase.connect($base_datos, :prospectos)
  $logger.debug "rut_cliente : #{$rut.to_i}"
  sleep 2
  ticket_atencion = DBUtils::Sybase.get_viaje_from_rut($rut.to_i)
  expect(ticket_atencion).not_to be_empty
  $logger.debug "ticket_atencion : #{ticket_atencion}"
  ejecutivo = ticket_atencion['vje_cod_ejecutivo_bcinet']
  $logger.debug "bcinet_user : #{$bcinet_user}"
  $logger.debug "ejecutivo : #{ejecutivo}"
  expect(ejecutivo.capitalize).to eql($bcinet_user.capitalize)
  DBUtils::Sybase.disconnect()
end

Cuando(/^Se ingresa su Rut "([^"]*)" en continuar viaje$/) do |arg1|
  if arg1 != nil && arg1 != ''
    $rut = arg1.split('-').first
    $rut_dv = arg1.split('-')[1]
  end
  find('input.ng-invalid-rut').send_keys $rut + $rut_dv
end

Cuando(/^Se ingresa codigo de seguimiento$/) do
  DBUtils::Sybase.connect($base_datos, :prospectos)
  ticket_atencion = ''
  codigo_seguimiento = ''
  if $rut != nil && $rut != ''
     $logger.debug "rut_continuar_viaje : #{$rut.to_i}"
     ticket_atencion = DBUtils::Sybase.get_ticket_atencion_form_rut($rut.to_i)
     expect(ticket_atencion).not_to be_empty
     $logger.debug "ticket atencion: #{ticket_atencion}"
     codigo_seguimiento = ticket_atencion['tck_atn_codigo']
  end
  find('div.form-group:nth-child(2) > input:nth-child(1)').send_keys codigo_seguimiento
  DBUtils::Sybase.disconnect()
end

Cuando(/^Se despliega pagina de renta$/) do
  sleep 5
  save_screenshot
end

Entonces(/^Cerrar sesion correo$/) do
   find("#header > ul:nth-child(2) > li:nth-child(3) > a:nth-child(1)").click
end

Dado(/^Se despliegan preguntas equifax$/) do
  find('div.flux-content:nth-child(1)').has_content? 'Validación de identidad con preguntas'
end

Cuando(/^Responder pregunta 1$/) do
  sleep 5
  find(:css , '.form-container > div:nth-child(1) > div:nth-child(1) > div:nth-child(1) > ul:nth-child(3) > li:nth-child(1) > label:nth-child(1)').click
end

Cuando(/^Responder pregunta 2$/) do
  sleep 1
  find(:css , '.form-container > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > ul:nth-child(3) > li:nth-child(2) > label:nth-child(1)').click
end

Cuando(/^Responder pregunta 3$/) do
  sleep 1
  find(:css , 'div.row:nth-child(3) > div:nth-child(1) > div:nth-child(1) > ul:nth-child(3) > li:nth-child(3) > label:nth-child(1)').click
end

Cuando(/^Responder pregunta 4$/) do
  sleep 1
  find(:css , 'div.row:nth-child(4) > div:nth-child(1) > div:nth-child(1) > ul:nth-child(3) > li:nth-child(4) > label:nth-child(1)').click
end

Cuando(/^Presiona el botón de "Validar Identidad"$/) do
  save_screenshot
  sleep 1
  find(:css , 'div.clearfix:nth-child(4) > a:nth-child(1)').click
end

Cuando(/^Presiona el botón de "Continuar" fc$/) do
  find('.alert').has_content? 'Estimado cliente: No se pudo validar su identidad con preguntas. Debe continuar con la validación de identidad con Transferencia Bancaria.'
  save_screenshot
  if $bcinet
    find(:css , ".btn-success").click
  else
    find(:css , "a.btn").click
  end
end

Cuando(/^Se ingresa "Monto transferido"$/) do
  sleep 10
  DBUtils::Sybase.connect($base_datos, :prospectos)
  transferencia = DBUtils::Sybase.check_transferencia_from_rut($rut.to_i)
  monto_transferencia = transferencia['aut_trf_monto']
  $logger.debug monto_transferencia
  fill_in "montoTransferido", :with => monto_transferencia.to_i
  DBUtils::Sybase.disconnect()
end

Cuando(/^Presiona el botón "Valide su identidad"$/) do
  sleep 1
  save_screenshot
  click_on "Valide su identidad"
  find('body').has_content? 'Guarde este número'
end
