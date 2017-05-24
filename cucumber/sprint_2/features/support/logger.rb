# encoding: UTF-8
require 'logger'
require 'time'

# Tiempo de Ejecucion
$pretty_time = Time.now.strftime('%Y-%m-%d %H:%M:%S')

FileUtils::mkdir_p "results/#{$exec_id}"

$logger = Logger.new("results/#{$exec_id}/cucumber.log", File::WRONLY | File::CREAT)
$logger.sev_threshold = Logger::DEBUG
$logger.formatter = proc do |severity, datetime, progname, msg|
  "[#{severity}][#{datetime}]: #{msg}\n"
end

$logger.debug "*** BCI Cucumber (Exec: #{$pretty_time}) ***"

# Logger
$loggerDB = Logger.new("results/#{$exec_id}/database.log", File::WRONLY | File::CREAT)
$loggerDB.sev_threshold = Logger::DEBUG
$loggerDB.formatter = proc do |severity, datetime, progname, msg|
  "[#{severity}][#{datetime}]: #{msg}\n"
end
