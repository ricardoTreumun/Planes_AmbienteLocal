Cuando(/^Se ingresa renta mensual de \$(\d+)\ a \$(\d+) bcinet$/) do |renta_i, renta_f|
  #Desplegar combobox
  sleep 5
  find("#renta > a").click
  sleep 1
  #Buscar opción
  if $bcinet
    if renta_i.to_i == 0 and renta_f.to_i == 449999
        sleep 2
		find("#renta > div > div").send_keys("$0 a $449.999")
    elsif renta_i.to_i == 450000 and renta_f.to_i == 749999
        sleep 2
		find("#renta > div > div").send_keys("$450.000 a $749.999")
    elsif renta_i.to_i == 750000 and renta_f.to_i == 1299999
        sleep 2
		find("#renta > div > div").send_keys("$750.000 a $1.299.999")
	elsif renta_i.to_i == 1300000 and renta_f.to_i == 2499999
        sleep 2
		find("#renta > div > div").send_keys("$1.300.000 a $2.499.999")
	elsif renta_i.to_i == 2500000 and renta_f.to_i == 4000000
        sleep 2
		find("#renta > div > div").send_keys("$2.500.000 a $4.000.000")
	elsif renta_i.to_i == 4000000 and renta_f.to_i == 9999999
        sleep 2
        find("#renta > div > div").send_keys("Mayor o igual a $4.000.000")
    end
	 sleep 2
     find(".ui-select-choices-row-inner").click
  end

  
end

Dado(/^Se selecciona botón soy cliente convenio$/) do
  sleep 2
  save_screenshot 'nuevo formato'
  find("#convenioBtn").click  
end

Dado(/^Se ingresa rut empresa plan convenio "([^"]*)"$/) do |rut_empresa|
  sleep 1
  if rut_empresa != nil && rut_empresa != ''
	 rut_dv = rut_empresa.split('-')[1]
	 fill_in "rutempresa", :with => '111111111'
	 if $bcinet
       find(".btn-success").click
     else
       find(".btn-green").click
     end
	 fill_in "rutempresa", :with => 'abcdefghij'
	 if $bcinet
       find(".btn-success").click
     else
       find(".btn-green").click
     end 
	 fill_in "rutempresa", :with => rut_empresa
  end
end

Dado(/^Se ingresa codigo convenio plan convenio "([^"]*)"$/) do |codigo|
  sleep 1
  if codigo != nil && codigo != ''
	 fill_in "codigoconvenio", :with => '12345'
	 if $bcinet
       find(".btn-success").click
     else
       find(".btn-green").click
     end
	 fill_in "codigoconvenio", :with => codigo
  end
end

Dado(/^Se ingresa plan convenio "([^"]*)"$/) do |plan_convenio|
  sleep 1
  find("#planconvenio > a:nth-child(1) > span:nth-child(1)").click
  sleep 1
  #Buscar opción
  if $bcinet
      sleep 1
      find("#planconvenio > div > div > input").send_keys(plan_convenio)
      sleep 1
      find(".ui-select-choices-row-inner > div:nth-child(1)").click
  end
end


Dado(/^Valida el contenido del plan "([^"]*)" con renta "([^"]*)"$/) do |arg1, arg2|
  if $bcinet
	if arg1 != nil && arg1 != '' && arg2 != nil && arg2 != ''
		$planes = arg1.split(',')
		$logger.debug "planes bcinet convenio: #{$planes}"
		$planes.to_enum.with_index(1).each do |contenido,i|
		$logger.debug "Plan evaluado: #{contenido.to_s}"
			if arg2.to_i >= 750000
				validacion = find(:css , "div.container:nth-child(1) > div:nth-child(2) > div:nth-child(#{i}) > div:nth-child(1) > h3:nth-child(1)").has_content? contenido.to_s
			elsif arg1.to_s == 'Plan Clásico' or arg1.to_s == "Plan Convenio #{i}" and arg2.to_i < 750000
			    validacion = find(:css , "h3.ng-binding").has_content? contenido.to_s
			end
        expect(validacion).to eql(true)
        $logger.debug "planes finalizado ok : #{$planes}" 
	   end	
	end
  end
  save_screenshot  
end

Dado(/^Presiona el botón para seleccionar plan "([^"]*)" con (\d+)$/) do |tipo_plan, rango|
  $logger.debug "Inicia  Presiona el botón para seleccionar plan"
  if $bcinet
    if rango.to_i < 750000
       sleep 6
       find(".btn-success").click
    elsif tipo_plan.to_s == 'Plan Clásico' and rango.to_i >= 750000
       sleep 6
       find("div.container:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > a:nth-child(1)").click
	elsif tipo_plan.to_s == 'Plan Bci/AAdvantage' and rango.to_i == 750000
	   sleep 6
       find("div.container:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > a:nth-child(1)").click
	elsif tipo_plan.to_s == 'Plan Bci/AAdvantage' and rango.to_i >= 1300000
	   sleep 6
       find("div.container:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > a:nth-child(1)").click   
	elsif tipo_plan.to_s == 'Plan Premier' and rango.to_i >= 1300000
	   sleep 6
       find("div.container:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > a:nth-child(1)").click 
    elsif tipo_plan.to_s == 'Plan Preferencial' and rango.to_i >= 2500000
	   sleep 6
       find("div.container:nth-child(1) > div:nth-child(2) > div:nth-child(1) > div:nth-child(1) > div:nth-child(2) > a:nth-child(1)").click
    elsif tipo_plan.to_s == 'Plan Convenio 1' or tipo_plan.to_s == 'Plan Convenio 2' or tipo_plan.to_s == 'Plan Convenio 3' or tipo_plan.to_s == 'Plan Convenio 4' and rango.to_i == 750000 
	   sleep 6
       find("div.container:nth-child(1) > div:nth-child(2) > div:nth-child(2) > div:nth-child(1) > div:nth-child(2) > a:nth-child(1)").click
     elsif tipo_plan.to_s == 'Plan Convenio 1' or tipo_plan.to_s == 'Plan Convenio 2' or tipo_plan.to_s == 'Plan Convenio 3' or tipo_plan.to_s == 'Plan Convenio 4' and rango.to_i >= 1300000
	   sleep 6
       find("div.col-lg-6:nth-child(3) > div:nth-child(1) > div:nth-child(2) > a:nth-child(1)").click 
     end
   end
 end

Dado(/^Se ingresa Su correo electrónico con dos puntos "([^"]*)"$/) do |arg1|
  if arg1 != nil && arg1 != ''
    $correo = arg1
  end
  fill_in "correoElectronico", :with => $correo
end

Dado(/^Validar registro prp_tiene_convenio tabla prospecto "([^"]*)"$/) do |rut|
  $loggerDB.debug "-------------------------------------------------------------"
  $loggerDB.debug "Validar registro prp_tiene_convenio tabla prospecto rut : #{rut.to_i}"
  $loggerDB.debug "#Conectando a base datos : #{$base_datos}"
  DBUtils::Sybase.connect($base_datos, :prospectos)
  if rut != nil && rut != ''
     $logger.debug "rut : #{rut.to_i}"
	 $logger.debug "#Conexión Establecida con base datos : #{$base_datos}"
     prospecto = DBUtils::Sybase.get_prospecto_tiene_convenio(rut.to_i)
     $loggerDB.debug "Query: SELECT * FROM prospecto as p WHERE p.prp_rut = #{rut.to_i}"
     $loggerDB.debug "Resultado Query: #{prospecto}"
	 tiene_convenio = prospecto['prp_tiene_convenio']
	 $logger.info "Registro prp_tiene_convenio : #{prospecto['prp_tiene_convenio']}"
     expect(tiene_convenio).to eql(1)
     DBUtils::Sybase.disconnect()
     $loggerDB.debug "-------------------------------------------------------------"
  end
end

Dado(/^Validar registro cnv_emp_rut, cnv_emp_cod_convenio y cnv_emp_plan_convenio en tabla convenio_empresa "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)"$/) do |rut, rut_empresa, codigo_convenio, plan_convenio|
  $logger.debug "#Conectando a base datos : #{$base_datos}"
  DBUtils::Sybase.connect($base_datos, :prospectos)
  if rut_empresa != nil && rut_empresa != ''
     $logger.debug "rut_empresa : #{rut_empresa.to_i}"
	 $logger.debug "#Conexión Establecida con base datos : #{$base_datos}"
     viaje = DBUtils::Sybase.get_viaje_from_rut(rut.to_i)
	 $logger.debug "Este es el viaje: #{viaje}"
     convenio_empresa = DBUtils::Sybase.get_convenio_empresa(viaje['vje_codigo'])
	 $logger.debug "Este es el convenio empresa: #{convenio_empresa}"
	 rut = convenio_empresa['cnv_emp_rut']
	 codigo = convenio_empresa['cnv_emp_cod_convenio']
	 plan = convenio_empresa['cnv_emp_plan_convenio']
	 $logger.info "Registro cnv_emp_rut : #{convenio_empresa['cnv_emp_rut']}"
	 expect(rut.to_i).to eql(rut_empresa.to_i)
	 $logger.info "Registro cnv_emp_cod_convenio : #{convenio_empresa['cnv_emp_cod_convenio']}"
	 expect(codigo.to_s).to eql(codigo_convenio.to_s)
	 $logger.info "Registro cnv_emp_plan_convenio : #{convenio_empresa['cnv_emp_plan_convenio']}"
	   if plan.to_s == 'H'
	      plan_nuevo = 'Plan Convenio 1'
	      expect(plan_nuevo.to_s).to eql(plan_convenio.to_s)
	   elsif plan.to_s == '0'
	      plan_nuevo = 'Plan Convenio 2'
	      expect(plan_nuevo.to_s).to eql(plan_convenio.to_s)
	   elsif plan.to_s == 'R'
	      plan_nuevo = 'Plan Convenio 3'
	      expect(plan_nuevo.to_s).to eql(plan_convenio.to_s)
	   elsif plan.to_s == '8'
	      plan_nuevo = 'Plan Convenio 4'
	      expect(plan_nuevo.to_s).to eql(plan_convenio.to_s)
	   end
	 $logger.debug "#Finaliza conexión con base datos : #{$base_datos}"
     DBUtils::Sybase.disconnect()
  end
end

Dado(/^Validar que contenga vje_codigo en la tabla viaje "([^"]*)"$/) do |arg1|
  DBUtils::Sybase.connect($base_datos, :prospectos)
     rut = arg1.split('-').first
   $logger.debug "rut formateado vje_codigo : #{rut.to_i}"
  if rut != nil && rut != ''
     $logger.debug "rut : #{rut.to_i}"
     viaje = DBUtils::Sybase.get_viaje_from_rut(rut.to_i)
     vje_codigo = viaje['vje_codigo']
     $logger.info "vje_codigo : #{viaje['vje_codigo']}"
     expect(vje_codigo.to_i).to be > 0
     $logger.info "vje_codigo finalizado correctamente"
     DBUtils::Sybase.disconnect()
  end
end

Dado(/^Validar que prp_rut sea igual al rut "([^"]*)" ingresado$/) do |arg1|
  DBUtils::Sybase.connect($base_datos, :prospectos)
     rut = arg1.split('-').first
  if rut != nil && rut != ''
     $logger.debug "rut : #{arg1.to_i}"
     viaje = DBUtils::Sybase.get_viaje_from_rut(rut.to_i)
     prp_rut = viaje['prp_rut']
     $logger.info "prp_rut : #{viaje['prp_rut']}"
     expect(prp_rut.to_i).to eql(rut.to_i)
     $logger.info "prp_rut finalizado correctamente"
     DBUtils::Sybase.disconnect()
  end
end

Dado(/^Validar que vje_estado se encuentre en "([^"]*)" "([^"]*)"$/) do |arg1, arg2|
  DBUtils::Sybase.connect($base_datos, :prospectos)
    rut = arg2.split('-').first
   $logger.debug "rut formateado vje_estado : #{rut.to_i}"
  if rut != nil && rut != ''
     $logger.debug "rut : #{rut.to_i}"
     viaje = DBUtils::Sybase.get_viaje_from_rut(rut.to_i)
     vje_estado = viaje['vje_estado']
     $logger.info "vje_estado : #{viaje['vje_estado']}"
     expect(vje_estado.to_s).to eql(arg1.to_s)
     $logger.info "vje_estado finalizado correctamente"
  end
  DBUtils::Sybase.disconnect()
end

Dado(/^Validar que la etp_codigo se encuentre en estado "([^"]*)" "([^"]*)"$/) do |arg1, arg2|
  DBUtils::Sybase.connect($base_datos, :prospectos)
    rut = arg2.split('-').first
   $logger.debug "rut formateado etp_codigo : #{rut.to_i}"
  if rut != nil && rut != ''
     $logger.debug "rut : #{arg2.to_i}"
     viaje = DBUtils::Sybase.get_viaje_from_rut(rut.to_i)
     etp_codigo = viaje['etp_codigo']
     $logger.info "etp_codigo : #{viaje['etp_codigo'].to_s}"
     expect(etp_codigo.to_s).to eql(arg1.to_s)
     $logger.info "etp_codigo finalizado correctamente"
  end
  DBUtils::Sybase.disconnect()
end

Dado(/^Validar que en el campo tck_atn_codigo se encuentre en la tabla ticket_atencion "([^"]*)"$/) do |arg1|
  DBUtils::Sybase.connect($base_datos, :prospectos)
   rut = arg1.split('-').first
   $logger.debug "rut formateado ck_atn_codigo : #{rut.to_i}"
  if rut != nil && rut != ''
     $logger.debug "rut : #{arg1.to_i}"
     ticket_atencion = DBUtils::Sybase.get_ticket_atencion_form_rut(rut.to_i)
     tck_atn_codigo = ticket_atencion['tck_atn_codigo']
     $logger.info "tck_atn_codigo : #{ticket_atencion['tck_atn_codigo']}"
     expect(tck_atn_codigo.to_i).to be > 0
     $logger.info "tck_atn_codigo finalizado correctamente"
  end
  DBUtils::Sybase.disconnect()
end

Dado(/^Se ingresa a la sub-aplicación viajes bcinet$/) do
  sleep 15
  visit $url_app_bcinet + $bcinet_planes
  save_screenshot
  sleep 5
end

Cuando(/^Selecciona tipo de ingreso fijo bcinet codigo seguimiento$/) do
  sleep 25
  find(".loading-box-planes", visible: false).visible?
  sleep 2
  find(".select2-arrow").click
  sleep 1
  find(".ui-select-search").send_keys("Mis ingresos son de renta fija")
  find('span.select2-chosen:nth-child(1)').native.send_keys(:enter)
  save_screenshot
end

Cuando(/^Se selecciona pais bcinet "([^"]*)"$/) do |arg1|
  if $bcinet
     sleep 15
  else
     while find("div.loading-box:nth-child(3)", visible: false).visible? do
     sleep 1
     end
  end
      sleep 15
      find("#paisNacimiento > a:nth-child(1)").click
      sleep 1
	  find(:xpath, '//*[@id="paisNacimiento"]/div/div/input').send_keys(arg1)    

  if $bcinet
    find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else  
	find("#ui-select-choices-row-2-0").click 
  end
end

Cuando(/^Se selecciona estado civil bcinet "([^"]*)"$/) do |arg1|
	  find("#estadoCivil > a:nth-child(1)").click
      sleep 1
	  find("#estadoCivil > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys(arg1)

  if $bcinet
     find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else
     find("#ui-select-choices-row-4-0").click
  end
end

Cuando(/^Se selecciona profesión bcinet "([^"]*)"$/) do |arg1|
      find("#profesion > a:nth-child(1)").click
      sleep 1
      find("#profesion > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys(arg1)

  if $bcinet
     find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else
     find("#ui-select-choices-row-6-0").click
  end
end

Dado(/^Se selecciona rubro en que se desempeña bcinet "([^"]*)"$/) do |arg1|
      find("#actividadLaboral > a:nth-child(1)").click
      sleep 1
      find("#actividadLaboral > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys(arg1)

  if $bcinet
     find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else
     find("#ui-select-choices-row-7-0").click
  end
end

Cuando(/^Presiono Continuar$/) do 
    if $bcinet
       find('.btn-success').click
    else
       click_on('Continúe')
    end
end
