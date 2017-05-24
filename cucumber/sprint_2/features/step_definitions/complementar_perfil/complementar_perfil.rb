Cuando(/^Presiona el boton Continue$/) do
  find("a.hidden-xs", visible: true).visible?
  sleep 1
  find("a.hidden-xs").click
end

Entonces(/^Se despliega el campo Rut, Código Seguimientos y el boton Ingresar$/) do
  sleep 3
  save_screenshot
end

Cuando(/^Ingresar el rut y codigo seguimiento$/) do
  sleep 2
  find("input.ng-invalid-rut").click
  fill_in "rut", :with => $rut + $rut_dv
  fill_in "codigoSeguimiento", :with => $datos_ticket['tck_atn_codigo']
end

Entonces(/^Presiona el boton Ingresar$/) do
  save_screenshot
  if $bcinet
	find("a.btn:nth-child(3)").click
  else
	click_button "Ingresar"
  end
end

Entonces(/^Se despliega pantalla con Detalle de Perfil$/) do
  find(".uppercase", visible: false).visible?
  sleep 2
  find('.flux-title').assert_text 'Valide su renta'
  sleep 5
  save_screenshot
end

Cuando(/^Valida tipo de ingreso$/) do
  expect(page).to have_content("Seleccione el tipo de ingreso")
end

Cuando(/^Valida renta liquida mensual$/) do
  expect(page).to have_content("Ingrese su renta líquida mensual")
end

Cuando(/^Valida link Ayuda$/) do
  expect(page).to have_content('Ayuda')
end

Cuando(/^Valida Botón Continuar$/) do
  expect(page).to have_content('Continúe')
  save_screenshot
end

Cuando(/^Selecciona tipo de ingreso fijo$/) do
  sleep 2
  find(".select2-arrow").click
  sleep 1
  find(".select2-arrow").send_keys("Mis ingresos son de renta fija")
  sleep 1
  find('span.select2-chosen:nth-child(1)').native.send_keys(:enter)
  save_screenshot
end
Entonces(/^Selecciona tipo de ingreso variable$/) do
  find(".select2-arrow").click
  find(".select2-arrow").send_keys("Mis ingresos son de renta variable")
  find(".ui-select-search").native.send_keys(:enter)
  save_screenshot
end

Entonces(/^validar que no se muestre en Combo Box de Nombre "([^"]*)", "([^"]*)"$/) do |arg1, arg2|
  while find(".uppercase", visible: false).visible? do
  sleep 1
 end
  find("#estadoCivil > a:nth-child(1)").click
  elementos_combobox = find("#estadoCivil > div:nth-child(2) > ul:nth-child(2)").text
  result = false
  if arg1.to_s == "Estado Civil"
    result = elementos_combobox.include? "Acuerdo de Unión Civil"
  end
  expect(result).to be false
  save_screenshot
end

Cuando(/^Ingresar renta liquida mensual \((\d+) pesos\)$/) do |renta|
 sleep 2
 fill_in "renta", :with => renta
 save_screenshot
end

Entonces(/^Seleciona link Ayuda$/) do
  sleep 3
  find("div.loading-box:nth-child(4)", visible: false).visible?
  sleep 5
  find("a.pull-right:nth-child(2)").click
  sleep 1
  save_screenshot
end

Entonces(/^Verifica mensaje link ayuda$/) do
  sleep 2
  save_screenshot
  expect(page).to have_content("La renta líquida es el monto exacto que se le deposita o recibe de su empleador mensualmente como remuneración.")
  find(".btn-nonicon").click
  sleep 2
  save_screenshot
end

Cuando(/^Verifica mensaje Liquidaciones_AFP$/) do
  expect(page).to have_content("Estimado cliente:")
  sleep 2
  expect(page).to have_content("En los próximos pasos se le solicitará que adjunte sus liquidaciones de sueldo y certificado de sus últimas 12 cotizaciones de AFP por separado para poder comprobar su renta líquida mensual.")
  sleep 2
  save_screenshot
end

Entonces(/^Verifica Boton Continúe$/) do
  find("a.btn", :text => "Continúe")
  sleep 2
  save_screenshot
end

Entonces(/^Presiona Boton Continúe$/) do
  sleep 2
  find("a.btn").click
end

Entonces(/^Validar Renta Prospecto con el rut "([^"]*)" y monto "([^"]*)" pesos$/) do |arg1, arg2|
  DBUtils::Sybase.connect($base_datos, :prospectos)
  if arg1 != nil && arg1 != ''
    $rut = arg1.split('-').first
    $rut_dv = arg1.split('-')[1]
  end
  if $rut != nil && $rut != '' && $rut_dv != nil && $rut_dv != ''
    prospecto = DBUtils::Sybase.get_prospecto($rut.to_i, $rut_dv)
    $logger.debug "prospecto : #{prospecto}"
    renta = prospecto['prp_mto_renta_ing']
  end
  DBUtils::Sybase.disconnect()
  $logger.debug "renta : #{renta}"
  $logger.debug "arg2 : #{arg2}"
  expect(renta.to_i).to eql(arg2.to_i)
end

Entonces(/^Validar que Etapa código de viaje es "([^"]*)" en la tabla Viaje en el campo "([^"]*)" del rut "([^"]*)"$/) do |arg1, arg2, arg3|
  DBUtils::Sybase.connect($base_datos, :prospectos)
  etapa = ''
  if arg3 != nil && arg3 != ''
   $rut = arg3.split('-').first
  end
  if arg1 != nil && arg1 != '' && arg2 != nil && arg2 != '' && arg3 != nil && arg3 != ''
  viaje = DBUtils::Sybase.get_viaje_from_rut($rut.to_i)
  $logger.debug "viaje : #{viaje}"
  etapa = viaje['etp_codigo']
  end
  DBUtils::Sybase.disconnect()
  $logger.debug "etapa : #{arg1}"
  $logger.debug "etapa_bd : #{etapa}"
  expect(etapa.to_i).to eql(arg1.to_i)
end

Entonces(/^Validar que viaje Estado es "([^"]*)" en la tabla Viaje en el campo "([^"]*)" del rut "([^"]*)"$/) do |estado, vjestado, rut|
  DBUtils::Sybase.connect($base_datos, :prospectos)
  viaje_estado = ''
  if rut != nil && rut != ''
   $rut = rut.split('-').first
  end
  if estado != nil && estado != '' && vjestado != nil && vjestado != '' && rut != nil && rut != ''
  viaje = DBUtils::Sybase.get_viaje_from_rut($rut.to_i)
  $logger.debug "viaje : #{viaje}"
  viaje_estado = viaje['vje_estado']
  end
  DBUtils::Sybase.disconnect()
  $logger.debug "Viaje_Estado : #{estado}"
  $logger.debug "Viaje_Estado_BD : #{viaje_estado}"
  expect(viaje_estado.to_i).to eql(estado.to_i)
end

Entonces(/^Validar que en la tabla viajes exista plan seleccionado luego de ingresar la renta del rut "([^"]*)"$/) do |arg1|
  DBUtils::Sybase.connect($base_datos, :prospectos)
  if arg1 != nil && arg1 != ''
    $rut = arg1.split('-').first
  end
  if $rut != nil && $rut != ''
    viaje = DBUtils::Sybase.get_viaje_from_rut($rut.to_i)
    $logger.debug "viaje : #{viaje}"
    plan_selec = viaje['vje_plan_seleccionado']
  end
  DBUtils::Sybase.disconnect()
  $logger.debug "Plan Seleccionado : #{plan_selec}"
  expect(plan_selec).not_to be_empty
end

Entonces(/^Se valida Acceso a Base de Datos "([^"]*)"$/) do |arg1|

  if $base_datos != nil && $base_datos != ''
     $logger.debug "#Conectando a base datos : #{$base_datos}"
     DBUtils::Sybase.connect($base_datos, :prospectos)
     $logger.debug "#Conexión Establecida con base datos : #{$base_datos}"
     DBUtils::Sybase.disconnect()
  else
      $logger.debug "¡Conexión FALLIDA! base datos : #{$base_datos}"
  end
end

Entonces(/^Se Valida Código Seguimiento en la tabla ticket_atencion en el campo tck_atn_codigo$/) do
  DBUtils::Sybase.connect($base_datos, :prospectos)
  if $rut != nil && $rut != ''
    codsegmto = DBUtils::Sybase.get_ticket_atencion_form_rut($rut.to_i)
    $logger.debug " "
    codigoSeguimiento = codsegmto['tck_atn_codigo']
  end
  DBUtils::Sybase.disconnect()
  $logger.debug "Codigo_Seguimiento_BD : #{codigoSeguimiento}"
  expect(codigoSeguimiento.to_i).not_to be_nil
end

Entonces(/^Se despliega el campo rut, codigo de seguimiento y el botón Ingresar$/) do
  sleep 5
  find(:css,'input.ng-invalid-rut')
  sleep 1
  find(:css,'div.form-group:nth-child(2) > input:nth-child(1)')
  sleep 1
  find(:css,'a.btn:nth-child(3)')
  sleep 1
  page.save_screenshot
end

Cuando(/^Se ingresa rut y código de seguimiento$/) do
  sleep 2
  find("input.ng-invalid-rut").click
  fill_in "rut", :with => $rut + $rut_dv
  fill_in "Código Seguimiento", :with => $datos_ticket['tck_atn_codigo']
end

Cuando(/^Presiona el botón Ingresar$/) do
find("a.btn:nth-child(3)").click
sleep 3
end

Entonces(/^Se despliega pantalla con Detalle su Perfil$/) do
  sleep 5
  expect(page).to have_content('Valide su renta')
  sleep 2
  save_screenshot
end

Cuando(/^Valida tipo de ingreso bcinet$/) do
  sleep 2
  expect(page).to have_content("Seleccione el tipo de ingreso")
end

Cuando(/^Valida renta liquida mensual bcinet$/) do
  sleep 2
  expect(page).to have_content("Ingrese su renta líquida mensual")
end

Cuando(/^Valida link Ayuda bcinet$/) do
  sleep 2
  expect(page).to have_content('Ayuda')
end

Entonces(/^Valida Botón Continuar bcinet$/) do
  expect(page).to have_content('Continúe')
end

Cuando(/^Selecciona tipo de ingreso fijo bcinet seguimiento$/) do
  sleep 5
  find(".loading-box-planes", visible: false).visible?
  sleep 2
  find(".select2-arrow").click
  sleep 1
  find(".ui-select-search").send_keys("Mis ingresos son de renta fija")
  find('span.select2-chosen:nth-child(1)').native.send_keys(:enter)
  save_screenshot
end

Cuando(/^Selecciona tipo de ingreso fijo bcinet$/) do
  sleep 10
  while find(".loading-box-planes", visible: false).visible? do
   sleep 1
  end
  sleep 2
  find("#tipoIngreso").click
  sleep 1
  find(".ui-select-search").send_keys("Mis ingresos son de renta fija")
  find('.ui-select-search').native.send_keys(:enter)
  save_screenshot
end

Entonces(/^Selecciona tipo de ingreso variable bcinet$/) do
  sleep 10
  while find(".loading-box-planes", visible: false).visible? do
   sleep 1
  end
  sleep 2
  find(".select2-arrow").click
  sleep 3
  find(".select2-arrow").send_keys("Mis ingresos son de renta variable")
  sleep 3
  find('.ui-select-search').native.send_keys(:enter)
  sleep 1
  save_screenshot
end

Entonces(/^Seleciona link Ayuda bcinet$/) do
  sleep 3
  find(".loading-box-planes", visible: false).visible?
  sleep 5
  find("a.pull-right").click
  sleep 2
end

Entonces(/^Verifica mensaje link ayuda bcinet$/) do
  expect(page).to have_content("La renta líquida es el monto exacto que se le deposita o recibe de su empleador mensualmente como remuneración.")
  sleep 2
  save_screenshot
  find(".btn-nonicon").click
  sleep 2
end

Cuando(/^Verifica mensaje Liquidaciones_AFP bcinet$/) do
  expect(page).to have_content("Estimado cliente:")
  sleep 2
end
Entonces(/^Verifica Boton Continúe bcinet$/) do
  expect(page).to have_content("Continúe")
  sleep 2
  save_screenshot
end

Entonces(/^Presiona Boton Continúe bcinet$/) do
  sleep 2
  find("button.btn").click
end

Entonces(/^Presiona Boton Continúe confirmación bcinet$/) do
  find("div.loading-box-planes:nth-child(18)", visible: false).visible?
  sleep 2
  find("button.btn").click
end

Dado(/^En "([^"]*)", subetapa "([^"]*)"$/) do |arg1, arg2|
  find('.flux-content').has_content? 'Datos personales adicionales'
end

Entonces(/^Validar solcitud de ingreso de campos "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)", "([^"]*)"$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7|
  find('.flux-content').has_content? 'País de nacimiento'
  find('.flux-content').has_content? 'Estado civil'
  find('.flux-content').has_content? 'Nivel de estudios'
  find('.flux-content').has_content? 'Profesión o carrera técnica'
  find('.flux-content').has_content? 'Rubro en que se desempeña'
  find('.flux-content').has_content? 'Tipo de contrato laboral'
  find('.flux-content').has_content? 'Situación laboral'
  save_screenshot
end

Entonces(/^validar solicitud de información del conyuge$/) do
  sleep 5
  find('.flux-content').has_content? 'Datos del Cónyuge'
  save_screenshot
end

Cuando(/^El cliente tiene registrado la dirección particular$/) do
  $logger.debug "conectando base_datos : #{$base_datos}"
  DBUtils::Sybase.connect($base_datos, :prospectos)
  $logger.debug "conexion ok base_datos : #{$base_datos}"
  prospecto = DBUtils::Sybase.get_prospecto($rut, $rut_dv)
  expect(prospecto['prp_comuna']).not_to be_empty
  $logger.debug "Comuna : #{prospecto['prp_comuna']}"
  expect(prospecto['prp_direccion']).not_to be_empty
  $direccion_db = prospecto['prp_direccion']
  $logger.debug "Dirección : #{prospecto['prp_direccion']}"
  DBUtils::Sybase.disconnect()
end

Entonces(/^Se despliegan los datos en la subetapa "([^"]*)"\.$/) do |arg1|
  direccion = find('div.nonedit-content:nth-child(1) > div:nth-child(3) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2)').text
  expect($direccion_db).to eql(direccion)
  save_screenshot
end

Entonces(/^Validar opción de modificar direcciones$/) do
  find('div.clearfix:nth-child(4) > button:nth-child(1)').has_content? 'Modificar estos datos'
  find('div.clearfix:nth-child(4) > button:nth-child(1)').click
  save_screenshot
end

Cuando(/^Presiona botón "Modificar estos datos"$/) do
  find('div.clearfix:nth-child(4) > button:nth-child(1)').has_content? 'Modificar estos datos'
  sleep 5
  find('div.clearfix:nth-child(4) > button:nth-child(1)').click
end

When(/^Ingresar datos, Región: "([^"]*)", Comuna: "([^"]*)"$/) do |region, comuna|
  sleep 1
  find("#region > a:nth-child(1)").click
  sleep 2
  find(:xpath, '//*[@id="region"]/div/div/input').send_keys(region)
  if $bcinet
      find('#ui-select-choices-row-14-1').click
      sleep 3
      find(".loading-box-planes", visible: false).visible?
  else
      find("#ui-select-choices-row-10-1").click
      sleep 2
      find("div.loading-box:nth-child(7)", visible: false).visible?
  end
  sleep 1
  find("#comuna > a:nth-child(1)").click
  sleep 2
  find('#comuna > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)').send_keys(comuna)
  if $bcinet
     find('#ui-select-choices-row-15-0').click
  else
     find("#ui-select-choices-row-11-0").click
  end
  save_screenshot
end

Cuando(/^validar no permite avanzar$/) do
  find('div.buttons-at-bottom:nth-child(3) > a:nth-child(1)').click
  expect(find('span.help-block:nth-child(5)').text).to eql('Se deben adjuntar archivo')
  save_screenshot
end

Cuando(/^adjuntar documento$/) do
  execute_script("window.$('<input/>').attr({ id: 'fileFakeInput', type: 'file' }).appendTo('body');")
  page.attach_file('fileFakeInput', File.join(Dir.pwd, 'test_attachments', 'testJPG.jpg'))
  begin
    execute_script("angular.element($('#boleta')).scope().agregarBoleta($('#fileFakeInput').get(0).files[0], null);")
  rescue Selenium::WebDriver::Error::UnknownError => e
    #Se controla este error debido a un problema en Selenium al ejecuar el script
    $logger.debug e
  end
end

Entonces(/^presiona botón "Guardar cambios"$/) do
  sleep 5
  save_screenshot
  find('div.buttons-at-bottom:nth-child(3) > a:nth-child(1)').click
  sleep 5
  save_screenshot
end

Dado(/^Registrar renta$/) do
  $logger.debug "conectando base_datos : #{$base_datos}"
  DBUtils::Sybase.connect($base_datos, :prospectos)
  $logger.debug "conexion ok base_datos : #{$base_datos}"
  DBUtils::Sybase.insert_renta($rut)
  $logger.debug "insert ok : #{$rut}"
  DBUtils::Sybase.disconnect()
end

Entonces(/^Validar que no ingresa a la subetapa "Valide su renta"$/) do
  find('.main-flux').has_content? 'Datos personales adicionales'
end

Entonces(/^Validar acceso a Sybase Motor ulysses_I y bases de datos prospectos$/) do
  $logger.debug "conectando base_datos : #{$base_datos}"
  DBUtils::Sybase.connect($base_datos, :prospectos)
  $logger.debug "conexion ok base_datos : #{$base_datos}"
  expect(DBUtils::Sybase.is_active()).to eql(true)
  DBUtils::Sybase.disconnect()
end

Entonces(/^Validar acceso a Sybase Motor ulysses_II y bases de datos succorporativa$/) do
  $logger.debug "conectando base_datos : #{$base_datos_suc}"
  DBUtils::Sybase.connect($base_datos_suc, :succorporativa)
  $logger.debug "conexion ok base_datos : #{$base_datos_suc}"
  expect(DBUtils::Sybase.is_active()).to eql(true)
  DBUtils::Sybase.disconnect()
end

Cuando(/^Obtener datos tabla "prospecto"$/) do
  $logger.debug "conectando base_datos : #{$base_datos}"
  DBUtils::Sybase.connect($base_datos, :prospectos)
  $logger.debug "conexion ok base_datos : #{$base_datos}"
  $datos_prospecto = DBUtils::Sybase.get_prospecto($rut, $rut_dv)
  DBUtils::Sybase.disconnect()
end

Entonces(/^validar que tiene la dirección particular registrada$/) do
  expect($datos_prospecto['prp_comuna']).not_to be_empty
  $logger.debug "Comuna : #{$datos_prospecto['prp_comuna']}"
  expect($datos_prospecto['prp_ciudad']).not_to be_empty
  $logger.debug "Ciudad : #{$datos_prospecto['prp_ciudad']}"
  expect($datos_prospecto['prp_direccion']).not_to be_empty
  $logger.debug "Dirección : #{$datos_prospecto['prp_direccion']}"
end

Entonces(/^validar que tiene la dirección comercial sin registros$/) do
  $logger.debug "datos_prospecto : #{$datos_prospecto}"
  expect($datos_prospecto['prp_direccion_comercial']).to be_nil
  expect($datos_prospecto['prp_region_comercial']).to be_nil
  expect($datos_prospecto['prp_comuna_comercial']).to be_nil
end

Entonces(/^Obtener datos tabla "renta"$/) do
  $logger.debug "conectando base_datos : #{$base_datos}"
  DBUtils::Sybase.connect($base_datos, :prospectos)
  $logger.debug "conexion ok base_datos : #{$base_datos}"
  $datos_renta = DBUtils::Sybase.get_renta_from_rut($rut)
  DBUtils::Sybase.disconnect()
end

Entonces(/^valida que tiene la renta registrada$/) do
  $logger.debug "datos_renta : #{$datos_renta}"
  expect($datos_renta).not_to be_nil
end

Cuando(/^Obtener datos tabla "viaje"$/) do
  $logger.debug "conectando base_datos : #{$base_datos}"
  DBUtils::Sybase.connect($base_datos, :prospectos)
  $logger.debug "conexion ok base_datos : #{$base_datos}"
  $datos_viaje = DBUtils::Sybase.get_viaje_from_rut($rut)
  DBUtils::Sybase.disconnect()
end

Cuando(/^Obtener datos tabla proceso$/) do
  $logger.debug "conectando base_datos : #{$base_datos}"
  DBUtils::Sybase.connect($base_datos, :prospectos)
  $logger.debug "conexion ok base_datos : #{$base_datos}"
  $datos_proceso = DBUtils::Sybase.get_proceso_viaje_batch_from_rut($rut)
  DBUtils::Sybase.disconnect()
end

Cuando(/^Obtener ticket de atención$/) do
  $logger.debug "conectando base_datos : #{$base_datos}"
  DBUtils::Sybase.connect($base_datos, :prospectos)
  $logger.debug "conexion ok base_datos : #{$base_datos}"
  $datos_ticket = DBUtils::Sybase.get_ticket_atencion_form_rut($rut)
  DBUtils::Sybase.disconnect()
end

Entonces(/^validar que en el campo "etp_codigo" se encuentre en estado "3" y el campo "vje_estado" en "01"$/) do
  expect($datos_viaje['etp_codigo']).not_to be_nil
  expect($datos_viaje['etp_codigo']).to eql(3)
  expect($datos_viaje['vje_estado']).not_to be_nil
  expect($datos_viaje['vje_estado']).to eql("01")
end

Entonces(/^validar que dispone de codigo de seguimiento$/) do
  $logger.debug "datos_ticket : #{$datos_ticket}"
  expect($datos_ticket['tck_atn_codigo']).not_to be_nil
end

Cuando(/^Se selecciona "Tipo de ingreso"$/) do
  sleep 5
  while find("div.loading-box:nth-child(4)", visible: false).visible? do
   sleep 1
  end
  sleep 2
  find(".select2-choice").click
  sleep 1
  find(".ui-select-search").send_keys("Mis ingresos son de renta fija")
  find("#ui-select-choices-row-1-0").click
end

Cuando(/^Se selecciona "([^"]*)" Variable$/) do |arg1|
  sleep 5
  while find("div.loading-box:nth-child(4)", visible: false).visible? do
   sleep 1
  end
  find(".select2-choice").click
  sleep 1
  find(".ui-select-search").send_keys("Mis ingresos son de renta variable")
  find("#ui-select-choices-row-1-0").click
end


Cuando(/^Se ingresa renta liquida de \$([^"]*)$/) do |arg1|
  fill_in "renta", :with => arg1
  sleep 2
end

Cuando(/^Se selecciona pais "([^"]*)"$/) do |arg1|
  if $bcinet
     sleep 10
  else
     while find("div.loading-box:nth-child(3)", visible: false).visible? do
     sleep 1
     end
  end
  find("#paisNacimiento > a:nth-child(1)").click
  sleep 3
  find(:xpath, '//*[@id="paisNacimiento"]/div/div/input').send_keys(arg1)
  if $bcinet
    find('input.ng-dirty').native.send_keys(:enter)
  else
    find("#ui-select-choices-row-2-0").click
  end
end

Cuando(/^Se selecciona estado civil "([^"]*)"$/) do |arg1|
  find("#estadoCivil > a:nth-child(1)").click
  sleep 1
  find("#estadoCivil > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys(arg1)
  if $bcinet
     find('#estadoCivil > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)').native.send_keys(:enter)
  else
     find("#ui-select-choices-row-4-0").click
  end
end

Cuando(/^Se selecciona nivel de estudio "([^"]*)"$/) do |arg1|
  find("#nivelEstudios > a:nth-child(1)").click
  sleep 1
  find("#nivelEstudios > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys(arg1)
  if $bcinet
     find('input.ng-valid-parse').native.send_keys(:enter)
  else
     find("#ui-select-choices-row-5-0").click
  end
end

Cuando(/^Se selecciona profesión "([^"]*)"$/) do |arg1|
  find("#profesion > a:nth-child(1)").click
  sleep 1
  find("#profesion > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys(arg1)
  if $bcinet
     find('#profesion > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)').native.send_keys(:enter)
  else
     find("#ui-select-choices-row-6-0").click
  end
end

Cuando(/^Se selecciona tipo de contrato "([^"]*)"$/) do |arg1|
  find("#tipoContrato > a:nth-child(1)").click
  sleep 1
  find("#tipoContrato > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys(arg1)
  if $bcinet
     find('#tipoContrato > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)').native.send_keys(:enter)
  else
     find("#ui-select-choices-row-8-0").click
  end
end

Cuando(/^Se selecciona situación laboral "([^"]*)"$/) do |arg1|
  find("#situacionLaboral > a:nth-child(1)").click
  sleep 1
  find("#situacionLaboral > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys(arg1)
  if $bcinet
     find('#situacionLaboral > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)').native.send_keys(:enter)
  else
     find("#ui-select-choices-row-9-0").click
  end
end

Cuando(/^Presiona el botón de "([^"]*)" dirección$/) do |arg1|
  sleep 2
  save_screenshot
  if $bcinet
    find("div.clearfix:nth-child(1) > a:nth-child(1)").click
    while find(".spinner-container > div:nth-child(1)", visible: false).visible? do
     sleep 1
    end
  else
    find("div.clearfix:nth-child(1) > a:nth-child(1)").click
    while find("div.loading-box:nth-child(10)", visible: false).visible? do
     sleep 1
    end
  end
  sleep 2
end

Cuando(/^Presiona el botón de "([^"]*)" equipos$/) do |arg1|
  find('.main-flux').has_content? 'Importante'
  save_screenshot
  if $bcinet
    find(:css , ".btn-success").click
  else
    find(:css , "button.pilot-btn:nth-child(1)").click
  end
end

Cuando(/^Se selecciona Combo Box de Nombre "([^"]*)"$/) do |arg1|
  find("#estadoCivil > a:nth-child(1)").click
  save_screenshot
end

Entonces(/^No se encuentra la opción "([^"]*)"$/) do |arg1|
  if find("#estadoCivil > div:nth-child(2)").has_no_content?(arg1)
    save_screenshot
  else
    $logger.debug "Error opción encontrada : #{$arg1}"
    save_screenshot
  end
end

Cuando(/^Selecciona tipo de ingreso variable bcinet seguimiento$/) do
  find(".loading-box-planes", visible: false).visible?
  sleep 2
  find(".select2-arrow").click
  find(".ui-select-search").send_keys("Mis ingresos son de renta variable")
  find('span.select2-chosen:nth-child(1)').native.send_keys(:enter)
  save_screenshot
end

Dado(/^Se marca CheckBox Soy trabajador independiente$/) do
  find('.checkbox > label:nth-child(1)').has_content? 'Soy trabajador independiente'
  save_screenshot
  if $bcinet
    find(:css , "#check").click
  else
    find(:css , "#check").click
  end
end

Dado(/^Se despliega información de Plan Bci Independiente$/) do
  sleep 3
  find(:css,'.header-pre > div:nth-child(1)')
  sleep 1
  find(:css,'.contents > div:nth-child(1)')
  sleep 1
  find(:css,'.flux-content > h4:nth-child(1)')
  sleep 1
  save_screenshot
end

Cuando(/^Se ingresa su rut Plan Independiente$/) do
  sleep 2
  find("#rut").click
  fill_in "rut", :with => $rut + $rut_dv
end

Dado(/^Presiona el boton enviar solicitud$/) do
  sleep 2
  find("a.btn").click
  save_screenshot
  while find(".ng-hide", visible: false).visible? do
   sleep 1
  end
  find(:css,'.error-title')
  save_screenshot
end

Dado(/^Se limpia el proceso_viaje_batch$/) do
  if $rut != nil && $rut != ''
     DBUtils::Sybase.connect($base_datos, :prospectos)
     $logger.debug "rut : #{$rut.to_i}"
     datosproceso = DBUtils::Sybase.get_proceso_viaje_batch_from_rut($rut.to_i)
     idproceso = datosproceso['id_proceso']
     $logger.debug "ID Proceso : #{idproceso}"
     error = DBUtils::Sybase.clean_prospecto_viaje($rut.to_i,idproceso.to_i)
     expect(error).to eql(true)
     $logger.debug "...LIMPIEZA EXITOSA..."
     DBUtils::Sybase.disconnect()
  end
end
