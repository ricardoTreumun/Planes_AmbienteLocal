Cuando(/^Se selecciona pais uno "([^"]*)"$/) do |arg1|
  if $bcinet
     sleep 5
  else
     while find("div.loading-box:nth-child(3)", visible: false).visible? do
     sleep 1
     end
  end
   save_screenshot 'Respuesta Servicio Datos Personales'
   if find("#paisNacimiento > a:nth-child(1)").has_no_content? 'Selecciona País'      
      find("#paisNacimiento > a:nth-child(1)").click
      sleep 1
	  find(:xpath, '//*[@id="paisNacimiento"]/div/div/input').send_keys("CHILE")    
   else
       save_screenshot 'No contiene paisNacimiento'
       exit
   end
  if $bcinet
    find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else  
	find("#ui-select-choices-row-2-0").click 
  end
end

Cuando(/^Se selecciona estado civil uno "([^"]*)"$/) do |arg1|

   if find("#estadoCivil > a:nth-child(1)").has_no_content? 'Selecciona estado civil'
	  find("#estadoCivil > a:nth-child(1)").click
      sleep 1
	  find("#estadoCivil > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys("SOLTERO(A)")

    else
       save_screenshot 'No contiene estadoCivil'
       exit
    end
  if $bcinet
     find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else
     find("#ui-select-choices-row-4-0").click
  end
end

Cuando(/^Se selecciona profesión uno "([^"]*)"$/) do |arg1|

   if find("#profesion > a:nth-child(1)").has_no_content? 'Selecciona una profesión'
      find("#profesion > a:nth-child(1)").click
      sleep 1
      find("#profesion > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys("ABOGADO")

   else
       save_screenshot 'No contiene profesion'
       exit
   end
  if $bcinet
     find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else
     find("#ui-select-choices-row-6-0").click
  end
end

Cuando(/^Se selecciona rubro en que se desempeña uno "([^"]*)"$/) do |arg1|

   if find("#actividadLaboral > a:nth-child(1)").has_content? 'OTRAS ACTIV. SERVICIOS PERSONALES N.C.P.'
      find("#actividadLaboral > a:nth-child(1)").click
      sleep 1
      find("#actividadLaboral > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys("ACABADO DE PRODUCTOS TEXTIL")
 
   else
       save_screenshot 'No contiene actividadLaboral'
       exit
   end

  if $bcinet
     find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else
     find("#ui-select-choices-row-7-0").click
  end
end

Cuando(/^Se selecciona nivel de estudio retomar bcinet "([^"]*)"$/) do |arg1|

  find("#nivelEstudios > a:nth-child(1)").click
  sleep 1
  find("#nivelEstudios > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys(arg1)
  if $bcinet
     find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else
     find("#ui-select-choices-row-5-0").click
  end
end

Cuando(/^Se selecciona tipo de contrato retomar bcinet "([^"]*)"$/) do |arg1|
  find("#tipoContrato > a:nth-child(1)").click
  sleep 1
  find("#tipoContrato > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys(arg1)
  if $bcinet
     find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else
     find("#ui-select-choices-row-8-0").click
  end
end

Cuando(/^Se selecciona situación laboral retomar bcinet "([^"]*)"$/) do |arg1|
  find("#situacionLaboral > a:nth-child(1)").click
  sleep 1
  find("#situacionLaboral > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys(arg1)
  if $bcinet
     find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else
     find("#ui-select-choices-row-9-0").click
  end
end




Cuando(/^Se selecciona pais dos "([^"]*)"$/) do |arg1|
  if $bcinet
     sleep 5
  else
     while find("div.loading-box:nth-child(3)", visible: false).visible? do
     sleep 1
     end
  end
   
   save_screenshot 'Respuesta Servicio Datos Personales'
   if find("#paisNacimiento > a:nth-child(1)").has_no_content? 'Selecciona País'      
      find("#paisNacimiento > a:nth-child(1)").click
      sleep 1
	  find(:xpath, '//*[@id="paisNacimiento"]/div/div/input').send_keys("CHILE")    
   else
       save_screenshot 'No contiene paisNacimiento'
       exit
   end
  if $bcinet
    find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else  
	find("#ui-select-choices-row-2-0").click 
  end
end

Cuando(/^Se selecciona estado civil dos "([^"]*)"$/) do |arg1|

   if find("#estadoCivil > a:nth-child(1)").has_no_content? 'Selecciona estado civil'
	  find("#estadoCivil > a:nth-child(1)").click
      sleep 1
	  find("#estadoCivil > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys("SOLTERO(A)")
  
    else
       save_screenshot 'No contiene estadoCivil'
       exit
    end
  if $bcinet
     find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else
     find("#ui-select-choices-row-4-0").click
  end
end

Cuando(/^Se selecciona profesión dos "([^"]*)"$/) do |arg1|

   if find("#profesion > a:nth-child(1)").has_content? 'Selecciona una profesión'
      find("#profesion > a:nth-child(1)").click
      sleep 1
      find("#profesion > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys(arg1)
   else
       save_screenshot 'No contiene profesion'
       exit
   end
  if $bcinet
     find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else
     find("#ui-select-choices-row-6-0").click
  end
end

Cuando(/^Se selecciona rubro en que se desempeña dos "([^"]*)"$/) do |arg1|

   if find("#actividadLaboral > a:nth-child(1)").has_content? 'OTRAS ACTIV. SERVICIOS PERSONALES N.C.P.'
      find("#actividadLaboral > a:nth-child(1)").click
      sleep 1
      find("#actividadLaboral > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys(arg1)
   else
       save_screenshot 'No contiene actividadLaboral'
       exit
   end

  if $bcinet
     find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else
     find("#ui-select-choices-row-7-0").click
  end
end

Cuando(/^Se selecciona pais tres "([^"]*)"$/) do |arg1|
  if $bcinet
     sleep 5
  else
     while find("div.loading-box:nth-child(3)", visible: false).visible? do
     sleep 1
     end
  end

   if find("#paisNacimiento > a:nth-child(1)").has_content? 'Selecciona País'  
      #binding.pry 
      sleep 3
      find("#paisNacimiento > a:nth-child(1)").click
      sleep 1
	  find(:xpath, '//*[@id="paisNacimiento"]/div/div/input').send_keys(arg1)    
   else
       save_screenshot 'paisNacimiento'
       exit
   end
  if $bcinet
    find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else  
	find("#ui-select-choices-row-2-0").click 
  end
end

Cuando(/^Se selecciona estado civil tres "([^"]*)"$/) do |arg1|

   if find("#estadoCivil > a:nth-child(1)").has_content? 'Selecciona estado civil'
	  find("#estadoCivil > a:nth-child(1)").click
      sleep 1
	  find("#estadoCivil > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys(arg1)
    else
       save_screenshot 'No contiene estadoCivil'
       exit
    end
  if $bcinet
     find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else
     find("#ui-select-choices-row-4-0").click
  end
end

Cuando(/^Se selecciona profesión tres "([^"]*)"$/) do |arg1|

   if find("#profesion > a:nth-child(1)").has_content? 'Selecciona una profesión'
      find("#profesion > a:nth-child(1)").click
      sleep 1
      find("#profesion > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys(arg1)
   else
       save_screenshot 'No contiene profesion'
       exit
   end
  if $bcinet
     find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else
     find("#ui-select-choices-row-6-0").click
  end
end

Cuando(/^Se selecciona rubro en que se desempeña tres "([^"]*)"$/) do |arg1|

   if find("#actividadLaboral > a:nth-child(1)").has_content? 'OTRAS ACTIV. SERVICIOS PERSONALES N.C.P.'
      find("#actividadLaboral > a:nth-child(1)").click
      sleep 1
      find("#actividadLaboral > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys(arg1)
   else
       save_screenshot 'No contiene actividadLaboral'
       exit
   end

  if $bcinet
     find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else
     find("#ui-select-choices-row-7-0").click
  end
end

Cuando(/^Se selecciona la situación laboral "([^"]*)"$/) do |arg1|
  sleep 1
  find("#situacionLaboral > a:nth-child(1)").click
  sleep 1
  find("#situacionLaboral > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys(arg1)

  if $bcinet
     find('.ui-select-choices-row-inner > div:nth-child(1)').click  
  else
     find("#ui-select-choices-row-9-0").click
  end
end

Entonces(/^validar solicitud de información conyuge$/) do
  sleep 5
  find('.flux-content').has_content? 'Datos del Cónyuge'
 
end


Dado(/^Se ingresa rut conyuge uno "([^"]*)"$/) do |arg1|
  save_screenshot 'Respuesta Servicio Datos Cónyuge'
  sleep 1
  fill_in "rutConyuge", :with => arg1
  sleep 1
  find("#some-id > div.row > div.col-sm-8 > button").click
  sleep 5
end

Dado(/^Se ingresa nombre conyuge uno "([^"]*)"$/) do |arg1|
  sleep 7
  valor = find('#nombreConyuge').value
  if valor != '' && valor != nil
 		save_screenshot
  else
    save_screenshot 'No contiene nombreConyuge'
	exit
  end
end

Dado(/^Se ingresa apellido paterno conyuge uno "([^"]*)"$/) do |arg1|
  valor = find('#apellidoPaternoConyuge').value
  if valor != '' && valor != nil
 		save_screenshot
  else
    save_screenshot 'No contiene apellidoPaternoConyuge'
	exit
  end
end

Dado(/^Se ingresa apellido materno conyuge uno "([^"]*)"$/) do |arg1|
  valor = find('#apellidoMaternoConyuge').value
  if valor != '' && valor != nil
 		save_screenshot
  else
    save_screenshot 'No contiene apellidoMaternoConyuge'
	exit
  end
end

Dado(/^Se selecciona regimen conyugal uno "([^"]*)"$/) do |arg1|  
  if $bcinet
     sleep 1
     find("#regimenConyugal > a > span.select2-chosen:nth-child(1)").click
     sleep 1
     find('#ui-select-choices-row-11-0 > div:nth-child(1) > div:nth-child(1)').send_keys("COMUNIDAD") 
     find('#ui-select-choices-row-11-0 > div > div').click
     sleep 1
     find(:css , ".btn-success").click
  else
    sleep 1
    find("#regimenConyugal > a > span.select2-chosen:nth-child(1)").click
    sleep 1
    find("#ui-select-choices-row-10-0 > div > div").send_keys("COMUNIDAD") 
    find("#ui-select-choices-row-10-0 > div > div").click
      
    sleep 1
    if find('a.btn')
       find('a.btn').click
    else
       click_on('Continúe')
    end
  end 
end



Dado(/^Se ingresa rut conyuge dos "([^"]*)"$/) do |arg1|
  sleep 7
  save_screenshot 'Respuesta Servicio Datos Cónyuge'
  sleep 1
  fill_in "rutConyuge", :with => arg1
  sleep 1
  find("#some-id > div.row > div.col-sm-8 > button").click
  sleep 5
end

Dado(/^Se ingresa nombre conyuge dos "([^"]*)"$/) do |arg1|
  valor = find('#nombreConyuge').value
  if valor != '' && valor != nil
 		save_screenshot
  else
    save_screenshot 'No contiene nombreConyuge'
	exit
  end
end

Dado(/^Se ingresa apellido paterno conyuge dos "([^"]*)"$/) do |arg1|
  valor = find('#apellidoPaternoConyuge').value
  if valor != '' &&  valor != nil
 		save_screenshot
  else
    save_screenshot 'No contiene apellidoPaternoConyuge'
	exit
  end
end

Dado(/^Se ingresa apellido materno conyuge dos "([^"]*)"$/) do |arg1|
  valor = find('#apellidoMaternoConyuge').value
  if valor != '' && valor != nil
 		save_screenshot
  else
    save_screenshot 'No contiene apellidoMaternoConyuge'
	exit
  end
end

Dado(/^Se selecciona regimen conyugal dos "([^"]*)"$/) do |arg1|  
  if $bcinet
     sleep 1
     find("#regimenConyugal > a > span.select2-chosen:nth-child(1)").click
     sleep 1
     find("#ui-select-choices-row-14-0 > div:nth-child(1) > div:nth-child(1)").send_keys("COMUNIDAD") 
     find('#ui-select-choices-row-14-0 > div > div').click
     sleep 1
     find(:css , ".btn-success").click
  else
    sleep 1
    find("#regimenConyugal > a > span.select2-chosen:nth-child(1)").click
    sleep 1
    find("#ui-select-choices-row-10-0 > div > div").send_keys("COMUNIDAD") 
    find("#ui-select-choices-row-10-0 > div > div").click
    sleep 1
    if find('a.btn')
       find('a.btn').click
    else
       click_on('Continúe')
    end
  end 
end



Dado(/^Se ingresa rut conyuge tres "([^"]*)"$/) do |arg1|
  sleep 7
  find("#some-id > div.row > div.col-sm-8 > button").click
  sleep 5
  save_screenshot 'Respuesta Servicio Datos Cónyuge'
  fill_in "rutConyuge", :with => arg1
end

Dado(/^Se ingresa nombre conyuge tres "([^"]*)"$/) do |arg1|
    sleep 1
	fill_in "nombreConyuge", :with => arg1
end

Dado(/^Se ingresa apellido paterno conyuge tres "([^"]*)"$/) do |arg1|
    sleep 1
  	fill_in "apellidoPaternoConyuge", :with => arg1
end

Dado(/^Se ingresa apellido materno conyuge tres "([^"]*)"$/) do |arg1|
    sleep 1
    fill_in "apellidoMaternoConyuge", :with => arg1
end

Dado(/^Se selecciona regimen conyugal tres "([^"]*)"$/) do |arg1|   

  if $bcinet
     sleep 1
     find("#regimenConyugal > a > span.select2-chosen:nth-child(1)").click
     sleep 1
     find("#ui-select-choices-row-15-0 > div:nth-child(1) > div:nth-child(1)").send_keys("COMUNIDAD") 
     find('#ui-select-choices-row-15-0 > div > div').click
     sleep 1
     find(:css , ".btn-success").click
  else
    sleep 1
    find("#regimenConyugal > a > span.select2-chosen:nth-child(1)").click
    sleep 1
    find("#ui-select-choices-row-10-0 > div > div").send_keys("COMUNIDAD") 
    find("#ui-select-choices-row-10-0 > div > div").click
    sleep 1
    if find('a.btn')
       find('a.btn').click
    else
       click_on('Continúe')
    end
  end 
end

Cuando(/^Se selecciona estado civil Casado$/) do
	  find("#estadoCivil > a:nth-child(1)").click
      sleep 1
	  find("#estadoCivil > div:nth-child(2) > div:nth-child(1) > input:nth-child(1)").send_keys("CASADO(A)")

  if $bcinet
     find('.ui-select-choices-row-inner > div:nth-child(1)').click
  else
     find("#ui-select-choices-row-4-0").click
  end
end
