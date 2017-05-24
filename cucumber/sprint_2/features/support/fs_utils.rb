require 'net/ssh'
require 'net/ssh/gateway'
require 'pry'

module Utils
    class FileSystem
        def initialize(host, user, pass, hsh = nil)
            @ssh = nil
            unless hsh.nil?
                gateway = Net::SSH::Gateway.new(hsh[:gw_host], hsh[:gw_user], :password => hsh[:gw_pass])
                if gateway.active?
                    gateway.open(host, 22, hsh[:gw_port])
                    @ssh = Net::SSH.start('127.0.0.1', user, :password => pass, :port => hsh[:gw_port])
                end
            else
                @ssh = Net::SSH.start(host, user, :password => pass)
            end
        end

        def echo_hostname()
            hostname = @ssh.exec!('hostname')
            return hostname.strip
        end

        def exist_file(filename)
            file_out = @ssh.exec!("ls -l #{filename}")
            unless file_out.strip.include? "#{filename} not found"
                return true
            else
                return false
            end
        end

        def execute_shell(shell, result)
            if self.exist_file(shell)
                out = @ssh.exec!("sh -x #{shell}")
                if out.include? result
                  return true
                else
                  return false
                end
            end
        end

        def execute_command(shell)
            out = @ssh.exec!("#{shell}")
            return out
        end

        def get_date_file(file)
            out = @ssh.exec!("perl -e 'print (scalar localtime((stat($ARGV[0]))[9]));' #{file}")
            return DateTime.parse(out).to_date.to_time.to_i
        end

        def get_date(restar = nil)
            out = @ssh.exec!("date")
            if !out.nil?
              if restar.nil?
                return DateTime.parse(out).to_date.to_time.to_i
              else
                fecha = DateTime.parse(out).to_date
                return (fecha - restar.to_i).to_time.to_i
              end
            else
              return nil
            end
        end

        def validar_contenido_mapa_epiphany(contenido)
            out = @ssh.exec!("ls -ltr | i=\"`awk 'END{print $9}'`\"; grep #{contenido} $i | wc -l")
            return out
        end
    end
end
