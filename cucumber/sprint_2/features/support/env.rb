# encoding: UTF-8
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara-screenshot/cucumber'
require 'pry'
require 'capybara/poltergeist'

# Browser Selection
if ENV['BROWSER'] == 'chrome'
  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome, :switches => %w[-incognito --disable-popup-blocking
    #--ignore-certificate-errors --disable-translate])
  end
  Capybara.default_driver = :chrome

elsif ENV['BROWSER'] == 'phantomjs'
	Capybara.javascript_driver = :poltergeist
    Capybara.default_driver = :poltergeist

elsif ENV['BROWSER'] == 'selenium-server'
    caps = Selenium::WebDriver::Remote::Capabilities.firefox
    caps.platform = "WINDOWS"

    caps['app.update.auto'] = false
    caps['app.update.enabled'] = false
    Capybara.default_driver = :selenium

    Capybara.register_driver :selenium do |app|
           Capybara::Selenium::Driver.new(app,
           :browser => :remote,
           :url => "http://172.16.98.225:4444/wd/hub",
           :desired_capabilities => caps
           )
    end
elsif ENV['BROWSER'] == 'selenium-firefox'
    caps = Selenium::WebDriver::Remote::Capabilities.firefox
    caps.platform = "WINDOWS"

    caps['app.update.auto'] = false
    caps['app.update.enabled'] = false
    Capybara.default_driver = :selenium

    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app,
       :browser => :remote,
       :url => "http://#{ENV['IP_SELENIUM']}:#{ENV['PORT_SELENIUM']}/wd/hub",
       :desired_capabilities => caps
      )
    end
else
  Capybara.default_driver = :selenium
end



# Global Settings
Capybara.default_max_wait_time = 40
Capybara::Screenshot.autosave_on_failure = true
Capybara.save_path = 'results/'
#resize_to se utiliza para tomar capturas de pantalla completas en Xvfb.
#Este no efecta la ejecución si se ejecuta en una pantalla con menor resolución.
$resolucion = {ancho: 1366, alto: 2000}
Capybara.page.driver.browser.manage.window.resize_to($resolucion[:ancho],$resolucion[:alto])

# Global Variables
if !ENV['URL'].nil?
  $bcinet_login = ENV['BCINET_LOGIN']
  $bcinet_user = ENV['BCINET_USER']
  $bcinet_pass = ENV['BCINET_PASS']
  $bcinet_planes = ENV['BCINET_PLANES']
  $url_app_bcinet = ENV['URL'] + ENV['WEB_CONTEXT_BCINET']
  $url_app_viajes = ENV['URL'] + ENV['WEB_CONTEXT_SITIO_PUBLICO']

  $url_correo = ENV['URLCORREO']
  $user_correo = ENV['USERCORREO']
  $pass_correo = ENV['PASSCORREO']

  $rut = ENV['RUT']
  $rut_dv = ENV['DV']
  $rut_serie = ENV['SERIE']
  $correo = ENV['CORREO']

  $base_datos = ENV['BD']
  $base_datos_suc = ENV['BD_SUC']
end

# File System
if !ENV['SSH_HOST'].nil?
  $ssh_host = ENV['SSH_HOST']
  $ssh_user = ENV['SSH_USER']
  $ssh_pass = ENV['SSH_PASS']

  if !ENV['SSH_GW_HOST'].nil?
    $ssh_gw_host = ENV['SSH_GW_HOST']
    $ssh_gw_user = ENV['SSH_GW_USER']
    $ssh_gw_pass = ENV['SSH_GW_PASS']
    $ssh_gw_port = ENV['SSH_GW_PORT']
  end

end

$exec_id = nil
$exec_time = Time.now.strftime('%Y%m%d_%H%M%S')
if !ENV['CPM_ID'].nil?
  $exec_id = ENV['CPM_ID']
else
  $exec_id = $exec_time
end

Before do |scenario, step|

  $canal = "publico"
  scenario.feature.tags.each do |tag|
    if tag.name.include?("bcinet")
      $canal = tag.name.split('_').last
      break
    end
  end

  feature_dir =  File.join(Dir.pwd, 'results', "#{$exec_id}", scenario.feature.name.split('_').first + "_#{$canal}")
  scenario_dir = File.join(feature_dir, scenario.name.split('_').first)
  Capybara.save_path = scenario_dir

end

Before do |scenario|
  $logger.info "Se inicia escenario: " + scenario.name
end

After do |scenario|
  $logger.info "Escenario terminado \n"
end
