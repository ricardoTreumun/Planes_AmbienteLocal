Entonces(/^Validar costo mensual "Tarjeta de Débito"$/) do
  if $bcinet
    while find("div.loading-box-planes:nth-child(18)", visible: false).visible? do
      sleep 1
    end
    find('b.ng-binding').has_content? 'Costo mensual de'
    find('b.ng-binding').has_content? 'UF IVA incluido'
  else
    find("div.loading-box:nth-child(18)", visible: false).visible?
    find('div.clearfix:nth-child(4) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1)').has_content? 'Costo mensual de'
    find('div.clearfix:nth-child(4) > div:nth-child(1) > div:nth-child(2) > div:nth-child(1)').has_content? 'UF IVA incluido'
  end
end

Entonces(/^Validar monto "Línea de Sobregiro"$/) do
  if $bcinet
    find('div.clearfix:nth-child(8) > div:nth-child(1) > div:nth-child(1) > p:nth-child(1) > b:nth-child(1)').has_content? 'Monto disponible'
    expect('div.clearfix:nth-child(8) > div:nth-child(1) > div:nth-child(1) > p:nth-child(2)').not_to be_nil
  else
    find('div.clearfix:nth-child(8)').has_content? 'Monto disponible'
    expect('div.clearfix:nth-child(8) > div:nth-child(1) > div:nth-child(1) > p:nth-child(2)').not_to be_nil
  end
end

Entonces(/^Validar monto "Tarjeta de Crédito"$/) do
  expect(find('.your-cards').all('li').size).to be > 0
end

Entonces(/^Validar "Sucursal de atención"$/) do
  if $bcinet
    find('div.clearfix:nth-child(12) > div:nth-child(1) > div:nth-child(1)').has_content? 'Sucursal'
  else
    find('div.clearfix:nth-child(12) > div:nth-child(1)').has_content? 'Sucursal'
  end
  expect('div.clearfix:nth-child(12) > div:nth-child(1) > div:nth-child(1) > span:nth-child(1)').not_to be_nil
end

Entonces(/^Validar "Retiro de productos"$/) do
  if $bcinet
    find('div.clearfix:nth-child(15) > div:nth-child(1) > div:nth-child(1)').has_content? 'Dirección'
  else
    find('div.clearfix:nth-child(15) > div:nth-child(1)').has_content? 'Dirección'
  end
  expect('div.clearfix:nth-child(15) > div:nth-child(1) > div:nth-child(1) > span:nth-child(1)').not_to be_nil
end

Entonces(/^Validar botón "Confirmar solicitud"$/) do
  if $bcinet
    find('button.btn').has_content? 'Confirmar solicitud'
  else
    find('.pilot-btn').has_content? 'Confirmar solicitud'
  end
  save_screenshot
end

Entonces(/^Validar que en la parte inferior se visualice el mensaje\.\.\.$/) do
  texto = 'El plan de productos solicitado, se ha estructurado sobre la base de la'
  texto << ' renta que usted nos ha indicado. Sus liquidaciones y certificado de AFP entregados, '
  texto << 'serán previamente verificados, para validar que estén acorde a la renta indicada por usted.'
  texto << ' En caso de que existan diferencias, la oferta de planes propuesta a través de este canal,'
  texto << ' no tendrá validez. En tal caso, nos pondremos en contacto con usted para complementar la'
  texto << ' información o evaluar una nueva oferta.'
  save_screenshot
  find('div.alert:nth-child(16)').has_content? texto
end

Entonces(/^Validar plan contratado$/) do
  if $bcinet
    find("div.loading-box-planes:nth-child(18)", visible: false).visible?
    find('.confirmacion').has_content? 'Ha contratado el'
  else
    find("body > div:nth-child(2)", visible: false).visible?
    sleep 10
    find('.flux-content > div:nth-child(2) > div:nth-child(1)').has_content? 'Ha contratado el'
  end
  expect('.confirmacion > b:nth-child(1)').not_to be_nil
end

Entonces(/^Validar Sucursal de retiro$/) do
  if $bcinet
    find('div.clearfix:nth-child(4) > div:nth-child(1) > div:nth-child(1)').has_content? 'Sucursal de retiro'
    sleep 2
    expect('div.clearfix:nth-child(4) > div:nth-child(1) > div:nth-child(1) > span:nth-child(1)').not_to be_nil
  else
    find('div.breath-top > div:nth-child(1)').has_content? 'Sucursal de retiro'
    sleep 2
    expect('div.breath-top > div:nth-child(1) > div:nth-child(1) > span:nth-child(1)').not_to be_nil
  end
end

Entonces(/^Validar que en la parte inferior se visualice el mensaje\.\.\. \(Confirmar\)$/) do
  texto = 'El plan de productos solicitado, se ha estructurado sobre la base de la'
  texto << ' renta que usted nos ha indicado. Sus liquidaciones y certificado de AFP entregados, '
  texto << 'serán previamente verificados, para validar que estén acorde a la renta indicada por usted.'
  texto << ' En caso de que existan diferencias, la oferta de planes propuesta a través de este canal,'
  texto << ' no tendrá validez. En tal caso, nos pondremos en contacto con usted para complementar la'
  texto << ' información o evaluar una nueva oferta.'
  save_screenshot
  if $bcinet
    find('.alert-warning').has_content? texto
  else
    find('div.alert-warning:nth-child(5)').has_content? texto
  end
end

Entonces(/^Validar link "Imprimir comprobante"$/) do
  find('.simple-link').has_content? 'Imprimir Comprobante'
end

Entonces(/^Validar botón "Comience la experiencia"$/) do
  if $bcinet
    find('button.btn').has_content? 'Comience la experiencia'
  else
    find('button.breath-top').has_content? 'Comience la experiencia'
  end
end

Entonces(/^Validar credito pre aprobado$/) do
  find('.lr-pad > h5:nth-child(1)').has_content? 'Tienes un crédito pre-aprobado'
  expect('h4.ng-binding').not_to be_nil
end

Entonces(/^Validar imagen credito pre aprobado$/) do
  imagen = find('.panel-exito-bg').native.css_value('background-image')
  save_screenshot
  $logger.info "Imagen credito pre aprobado: #{imagen}"
end

Entonces(/^Presiona el botón de "Imprimir comprobante"$/) do
  if $bcinet
    find("div.loading-box-planes:nth-child(18)", visible: false).visible?
  else
    find("body > div:nth-child(2)", visible: false).visible?
  end
  sleep 4
  find('.simple-link').click
  sleep 2
  save_screenshot
end

Entonces(/^Validar estado de la "SUC"$/) do
  $logger.debug "#Conectando a base datos : #{$base_datos}"
  DBUtils::Sybase.connect($base_datos, :prospectos)
  $logger.debug "#Conexión Establecida con base datos : #{$base_datos}"
  viaje = DBUtils::Sybase.get_viaje_from_rut($rut)
  DBUtils::Sybase.disconnect()
  expect(viaje).not_to be_nil
  expect(viaje['vje_cod_suc']).not_to be_nil

  $logger.debug "#Conectando a base datos : #{$base_datos_suc}"
  DBUtils::Sybase.connect($base_datos_suc, :succorporativa)
  solicitud = DBUtils::Sybase.get_solicitud_suc(viaje['vje_cod_suc'])
  $logger.debug "#Conexión Establecida con base datos : #{$base_datos_suc}"
  DBUtils::Sybase.disconnect()
  expect(solicitud).not_to be_nil
  expect(solicitud['id_estado']).not_to be_nil
  expect(solicitud['id_estado'].to_i).to eql(140)
end

Entonces(/^Validar video "EstoEsBci"$/) do
  within_frame(find('.col-md-12 > div:nth-child(1) > div:nth-child(2) > div:nth-child(1) > iframe:nth-child(1)')) do
    find('.ytp-title-link').has_content? 'EstoEsBci'
  end
  save_screenshot
end

Entonces(/^Validar botón "Cerrar"$/) do
  find('.e-modal-footer > button:nth-child(1)').has_content? 'Cerrar'
end

Cuando(/^Validar "USUFICT" en base de datos "succorporativa"$/) do
  $logger.debug "#Conectando a base datos : #{$base_datos_suc}"
  DBUtils::Sybase.connect($base_datos_suc, :succorporativa)
  solicitud = DBUtils::Sybase.get_solicitud_suc($datos_viaje['vje_cod_suc'])
  $logger.debug "#Conexión Establecida con base datos : #{$base_datos_suc}"
  DBUtils::Sybase.disconnect()
  expect(solicitud).not_to be_nil
  $logger.info "ejecutivo_solicitante : #{solicitud['ejecutivo_solicitante']}"
  expect(solicitud['ejecutivo_asignado']).not_to be_nil
  $logger.info "ejecutivo_asignado : #{solicitud['ejecutivo_asignado']}"
end

Entonces (/^validar registro tabla "proceso_viaje_batch"$/) do
  $logger.debug "#Conectando a base datos : #{$base_datos}"
  DBUtils::Sybase.connect($base_datos, :prospectos)
  $logger.debug "#Conexión Establecida con base datos : #{$base_datos}"
  proceso = DBUtils::Sybase.get_proceso_viaje_batch_from_rut($rut)
  DBUtils::Sybase.disconnect()
  expect(proceso).not_to be_nil
  expect(proceso['id_proceso']).not_to be_nil
  $logger.info "id_proceso : #{proceso['id_proceso']}"
  expect(proceso['tck_atn_codigo']).not_to be_nil
  $logger.info "tck_atn_codigo : #{proceso['tck_atn_codigo']}"
  expect(proceso['etp_descripcion']).not_to be_nil
  $logger.info "etp_descripcion : #{proceso['etp_descripcion']}"
end

Entonces(/^validar registro tabla "finalizar_viaje"$/) do
  $logger.debug "#Conectando a base datos : #{$base_datos}"
  DBUtils::Sybase.connect($base_datos, :prospectos)
  $logger.debug "#Conexión Establecida con base datos : #{$base_datos}"
  finalizar_viaje = DBUtils::Sybase.get_finalizar_viaje($datos_viaje['vje_codigo'])
  DBUtils::Sybase.disconnect()
  expect(finalizar_viaje).not_to be_nil
  expect(finalizar_viaje['fvje_est_margen']).not_to be_nil
  $logger.info "fvje_est_margen : #{finalizar_viaje['fvje_est_margen']}"
end

Cuando(/^validar numero de telefono movil (\d+)$/) do |arg1|
  $logger.debug "#Conectando a base datos : #{$base_datos}"
  DBUtils::Sybase.connect($base_datos, :prospectos)
  $logger.debug "#Conexión Establecida con base datos : #{$base_datos}"
  prospecto = DBUtils::Sybase.get_prospecto($rut, $rut_dv)
  DBUtils::Sybase.disconnect()
  expect(prospecto).not_to be_nil
  expect(prospecto['prp_telefono']).not_to be_nil
  $logger.info "prp_telefono : #{prospecto['prp_telefono']}"
  expect(prospecto['prp_telefono'].to_s).to eql(arg1.to_s)
  save_screenshot
end


Entonces(/^validar linea de credito campos "([^"]*)" y "([^"]*)"$/) do |arg1, arg2|
  $logger.debug "$datos_viaje  : #{$datos_viaje}"
  DBUtils::Sybase.connect($base_datos_suc, :succorporativa)
  $logger.debug "#Conexión Establecida con base datos : #{$base_datos_suc}"
  $linea_credito = DBUtils::Sybase.get_linea_credito_from_rut($rut, $datos_viaje['vje_cod_suc'])
  $logger.debug "$linea_credito  : #{$linea_credito}"
  DBUtils::Sybase.disconnect()
  expect($linea_credito[arg1.to_s]).not_to be_nil
  expect($linea_credito[arg2.to_s]).not_to be_nil
end


Entonces(/^validar que el campo "([^"]*)" y "([^"]*)" se encuentra el nombre "([^"]*)"$/) do |arg1, arg2, arg3|
  $logger.debug "datos_renta  : #{$datos_renta}"
  expect($datos_renta[arg1.to_s]).not_to be_nil
  expect($datos_renta[arg2.to_s]).not_to be_nil
  expect($datos_renta[arg1.to_s]).to eql(arg3.to_s)
  expect($datos_renta[arg2.to_s]).to eql(arg3.to_s)
end

Entonces(/^Existe productos para "([^"]*)"$/) do |arg1|
  find('.flux-title').has_content? arg1
end

Cuando(/^Presiona el botón de "([^"]*)" confirmar$/) do |arg1|
  sleep 5
  if $bcinet
    find(".loading-box-planes", visible: false).visible?
  else
    find("div.loading-box:nth-child(18)", visible: false).visible?
  end
  sleep 5
  save_screenshot

  if $bcinet
    find(:css , ".btn-success").click
  else
    find(:css , ".pilot-btn").click
  end
  sleep 10
end

Entonces(/^Presiona el botón "Comience la experiencia"$/) do
  if $bcinet
    find("body > div:nth-child(2)", visible: false).visible?
  else
    find("body > div:nth-child(2)", visible: false).visible?
  end
  sleep 5
  save_screenshot
  if $bcinet
    find(:css , "button.btn").click
  else
    find(:css , "button.breath-top").click
  end
  sleep 10
  save_screenshot
end

Entonces(/^Cerrar sesion$/) do
  find("a.uppercase").click
  sleep 2
  find(".edge-dropdown-right > li:nth-child(3)").click
  sleep 2
end

Dado(/^validar mapa epyphany campo "([^"]*)"$/) do |arg1|
  if arg1 != nil && arg1 != 'rut'
    result = $fs.validar_contenido_mapa_epiphany(arg1).split("\n")
    arreglo = result.to_a
    expect(arreglo.count).to be > 0
  else
    result = $fs.validar_contenido_mapa_epiphany($rut).split("\n")
    arreglo = result.to_a
    expect(arreglo.count).to be > 0
  end
end

Dado(/^validar imagen y monto de credito pre\-aprobado$/) do
  monto = find("h4.ng-binding").text
  monto.gsub! '.', ''
  monto_formateado = monto.gsub! '$', ''
  expect(monto.to_i).to be > 0
  find(:xpath, '//*[contains(@style, \'background-image: url(assets/img/planes/check-out-bg.jpg)\')]')
end
