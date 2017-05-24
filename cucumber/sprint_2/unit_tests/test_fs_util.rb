require 'minitest/autorun'
require 'date'
require_relative '../features/support/fs_utils.rb'

class TestFS < Minitest::Test
    def test_connection()
        host = '161.131.184.81'
        user = 'sipe'
        pass = 'sipe01'
        fs = Utils::FileSystem.new(host, user, pass)
        hostname = fs.echo_hostname
        assert_equal "kanako", hostname
    end

    def test_connection_gateway()
        host = '161.131.232.185'
        user = 'viajepl'
        pass = 'prospe01'

        gw = {
            :gw_host => '161.131.184.81',
            :gw_user => 'sipe',
            :gw_pass => 'sipe01',
            :gw_port => 10022
        }

        fs = Utils::FileSystem.new(host, user, pass, gw)
        hostname = fs.echo_hostname
        assert_equal "giottoII", hostname
    end

    def test_file_exist()
        host = '161.131.184.81'
        user = 'sipe'
        pass = 'sipe01'
        fs = Utils::FileSystem.new(host, user, pass)
        assert_equal true, fs.exist_file('vacio.txt'), msg = "file not found"
    end

    def test_ejecuta_shell()
        host = '161.131.232.185'
        user = 'viajepl'
        pass = 'prospe01'

        gw = {
            :gw_host => '161.131.184.81',
            :gw_user => 'sipe',
            :gw_pass => 'sipe01',
            :gw_port => 10022
        }

        fs = Utils::FileSystem.new(host, user, pass, gw)
        result = fs.execute_shell("/prospecto/she/LimpiaFS.sh")
        respuesta = false
        if result.include? "SALIR 0 OK"
            respuesta = true
        end
        assert_equal true, respuesta
    end

    def test_connection_bci()
        host = '161.131.184.80'
        user = 'viajepl'
        pass = 'prospe01'

        fs = Utils::FileSystem.new(host, user, pass)
        hostname = fs.echo_hostname
        assert_equal "kiniko", hostname
    end
    def test_ejecuta_shell_bci()
        host = '161.131.184.80'
        user = 'viajepl'
        pass = 'prospe01'

        fs = Utils::FileSystem.new(host, user, pass)
        result = fs.execute_shell("/prospecto/she/LimpiaFS.sh")
        respuesta = false
        if result.include? "SALIR 0 OK"
            respuesta = true
        end
        assert_equal true, respuesta
    end
    def test_obtener_fecha_modificacion()
        host = '161.131.232.185'
        user = 'viajepl'
        pass = 'prospe01'

        fs = Utils::FileSystem.new(host, user, pass)
        result = fs.execute_command("perl -e 'print (scalar localtime((stat($ARGV[0]))[9]));' /prospecto/filenet")
        fecha_archivo = DateTime.parse(result).to_date.to_time.to_i
        fecha_sistema = Date.parse(Time.now.to_s)
        fecha_sistema = (fecha_sistema - 1).to_time.to_i
        if fecha_archivo <= fecha_sistema
          valido =  true
        else
          valido = false
        end
        assert_equal true, valido
    end
    def test_obtener_fecha_modificacion_archivos()
        host = '161.131.232.185'
        user = 'viajepl'
        pass = 'prospe01'

        fs = Utils::FileSystem.new(host, user, pass)
        result = fs.execute_command("ls /prospecto/filenet").split("\n")
        result.each do |archivo|
          result_archivo = fs.execute_command("perl -e 'print (scalar localtime((stat($ARGV[0]))[9]));' /prospecto/filenet/#{archivo}")
          fecha_archivo = DateTime.parse(result_archivo).to_date.to_time.to_i
        end
    end
    def test_fecha()
        host = '161.131.232.185'
        user = 'viajepl'
        pass = 'prospe01'

        gw = {
            :gw_host => '161.131.184.81',
            :gw_user => 'sipe',
            :gw_pass => 'sipe01',
            :gw_port => 10022
        }

        fs = Utils::FileSystem.new(host, user, pass, gw)
        result = fs.get_date()
        respuesta = false
        if result.include? "SALIR 0 OK"
            respuesta = true
        end
        assert_equal true, respuesta
    end
end
