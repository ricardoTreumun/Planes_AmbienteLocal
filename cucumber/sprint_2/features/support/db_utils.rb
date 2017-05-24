require 'tiny_tds'
require 'pry'

module DBUtils
  class Sybase
    @@conn = nil

    @@db_info = {
      "culyses_i" => {
        prospectos: {
        host: '161.131.232.222',
        port: '17000',
        username: 'tycdata',
        password: 'c3er29se',
        database: 'prospectos'
        }
      },
      "dulyses_i" => {
        prospectos: {
        host: '161.131.184.81',
        port: '17000',
        username: 'compila',
        password: 'compilar1',
        database: 'prospectos'
        }
      },
      "dulyses_ii" => {
        succorporativa: {
        host: '161.131.184.81',
        port: '18000',
        username: 'compila',
        password: 'compilar1',
        database: 'succorporativa'
        }
      },
      "culyses_ii" => {
        succorporativa: {
        host: '161.131.232.223',
        port: '18000',
        username: 'tycdata',
        password: 'c3er29se',
        database: 'succorporativa'
        }
      },
      "cepimeteo_i" => {
        prospectos: {
        host: '161.131.232.211',
        port: '11000',
        username: 'tycdata',
        password: 'c3er29se',
        database: 'prospectos'
        }
      }
    }

    def self.connect(env, database)
      db = @@db_info[env][database]
      @@conn = TinyTds::Client.new username: db[:username],
        password: db[:password],
        host: db[:host],
        port: db[:port],
        database: db[:database],
        tds_version: '42'
    end

    def self.disconnect()
      unless @@conn.closed?
        @@conn.close
      end
    end

    def self.is_active()
      if @@conn.active?
        return true
      else
        return false
      end
    end

    def self.get_result(query)
      if @@conn.active?
        res = @@conn.execute(query)
        unless $log.nil?
          $log.debug "QUERY: #{query}"
          $log.debug "RESULT: #{res.to_a}"
        end
        return res
      end
    end

    def self.get_max_from_table(table, column)
      query = "SELECT MAX(#{column}) as val FROM #{table}"
      res = self.get_result(query)
      max_val = nil
      res.each do |row|
        max_val = row["val"]
      end
      return max_val
    end

    def self.insert_into_table(table, data)
      if table && data
        query = StringIO.new
        query << "INSERT INTO #{table} "
        data.each_with_index do |(k, v), i|
          query << (if i == 0 then "(" else "" end) + "#{k}" + (if i + 1 < data.size then ", " else ") " end)
        end
        query << "VALUES "
        data.each_with_index do |(k, v), i|
          query << (if i == 0 then "(" else "" end) + "#{v}" + (if i + 1 < data.size then ", " else ") " end)
        end
        res = @@conn.execute(query.string)
        print res.return_code
      end
    end

    def self.insert_renta(rut)
      query = StringIO.new
      query << "insert into renta (rta_id, prp_rut, rta_rfi_cal, rta_rvr_cal, rta_cal_liq, rta_ori, rta_fec_ing, rta_usr_act, rta_fec_act)"
      query << " values (1000, #{rut}, 2500000, 0, 2500000, 'PROSPECTO', convert(datetime, '01/01/2017'), 'PROSPECTO', convert(datetime, '04-01-2017 12:34:23'))"
      res = @@conn.execute(query.string)
      print res.return_code
    end

    def self.get_prospecto(rut, dv)
      query = ""
      query << "SELECT * FROM prospecto as p WHERE p.prp_rut = #{rut} AND p.prp_dv = \'#{dv}\'"
      result = @@conn.execute(query)
      prospecto = {}
      result.each do |r|
        prospecto = r
      end
      return prospecto
    end

    def self.get_viaje_from_rut(prp_rut)
      query = ""
      query << "SELECT * FROM viaje as v WHERE v.prp_rut = #{prp_rut} order by v.vje_fec_hms_actualiza"

      result = @@conn.execute(query)
      viaje = {}

      result.each do |r|
        viaje = r
      end
      return viaje
    end

    def self.get_renta_from_rut(prp_rut)
      query = ""
      query << "SELECT * FROM renta as v WHERE v.prp_rut = #{prp_rut}"

      result = @@conn.execute(query)
      viaje = {}

      result.each do |r|
        viaje = r
      end
      return viaje
    end

    def self.get_ticket_atencion_form_rut(prp_rut)
      query = ""
      query << "SELECT ta.* FROM ticket_atencion as ta, viaje as v, prospecto as p "
      query << "WHERE ta.vje_codigo = v.vje_codigo "
      query << "AND v.prp_rut = p.prp_rut "
      query << "AND p.prp_rut = #{prp_rut}"

      result = @@conn.execute(query)
      ticket_atencion = {}

      result.each do |r|
        ticket_atencion = r
      end
      return ticket_atencion
    end

    def self.get_producto_form_rut(prp_rut)
      query = ""
      query << "SELECT pr.* FROM producto as pr, viaje as v, prospecto as p "
      query << "WHERE pr.vje_codigo = v.vje_codigo "
      query << "AND v.prp_rut = p.prp_rut "
      query << "AND p.prp_rut = #{prp_rut}"

      result = @@conn.execute(query)
      producto = {}

      result.each do |r|
        producto = r
      end
      return producto
    end

    def self.select_from_table(table, data)
      query = StringIO.new
      query << "SELECT * FROM #{table} "
      data.each_with_index do |(k, v), i|
        query << (i == 0 ? "WHERE " : "AND ") + "#{k} = "
        if v.is_a?(String)
          v = "\'#{v}\'"
        end
        query << "#{v} "
      end
      res = @@conn.execute(query.string)
      result = []
      res.each do |r|
        result << r
      end
      return result
    end

	  def self.check_transferencia(cod_viaje)
      query = ""
      query << "SELECT a.* FROM autentica_transferencia as a WHERE a.vje_codigo = #{cod_viaje}"
      $logger.debug query.to_s
      result = @@conn.execute(query)
      transferencia = {}

      result.each do |r|
        transferencia = r
      end
      return transferencia
    end

    def self.check_transferencia_from_rut(prp_rut)
    query = ""
    query << "SELECT a.aut_trf_monto FROM viaje as v, autentica_transferencia as a "
    query << "WHERE v.prp_rut = #{prp_rut} "
    query << "AND v.vje_codigo = a.vje_codigo"

    result = @@conn.execute(query.to_s)
    res = {}
    result.each do |r|

      res = r
    end
    return res
   end

    def self.clean_prospecto_viaje(rut, cod_viaje)
      begin

        query = "DELETE FROM finalizar_viaje WHERE vje_codigo = #{cod_viaje}"
        res = @@conn.execute(query)
        res.cancel

        query = "DELETE FROM convenio_empresa WHERE vje_codigo = #{cod_viaje}"
        res = @@conn.execute(query)
        res.cancel

        query = "DELETE FROM proceso_viaje_batch WHERE prp_rut = #{rut} "
        res = @@conn.execute(query)
        res.cancel

        query = "DELETE FROM antecedente_laboral WHERE prp_rut = #{rut} "
        res = @@conn.execute(query)
        res.cancel

        query = "DELETE FROM autentica_transferencia WHERE vje_codigo = #{cod_viaje} "
        res = @@conn.execute(query)
        res.cancel

        query = "DELETE FROM producto WHERE vje_codigo = #{cod_viaje} "
        res = @@conn.execute(query)
        res.cancel

        query = "DELETE FROM renta WHERE prp_rut = #{rut} "
        res = @@conn.execute(query)
        res.cancel

        query = "DELETE FROM ticket_atencion  WHERE vje_codigo = #{cod_viaje} "
        res = @@conn.execute(query)
        res.cancel

        query = "DELETE FROM viaje WHERE prp_rut = #{rut} "
        res = @@conn.execute(query)
        res.cancel

        query = "DELETE FROM conyugue WHERE prp_rut = #{rut} "
        res = @@conn.execute(query)
        res.cancel

        query = "DELETE FROM prospecto WHERE prp_rut = #{rut} "
        res = @@conn.execute(query)
        res.cancel
      rescue TinyTds::Error => err
        p query
        p err.to_s
      end
    end

    def self.check_solicitud(rut, cod_solicitud)
      query = StringIO.new
      query << "SELECT * FROM solicitud as so, cliente_solicitud as cs"
      query << " WHERE cs.rut = #{rut} "
      query << " AND so.nro_solicitud = #{cod_solicitud}"
      query << " AND so.nro_solicitud = cs.nro_solicitud"
      res = @@conn.execute(query.string)
      return res.each(:first => true)
    end

    def self.get_solicitud_suc(nro_solicitud)
      query = ""
      query << "SELECT * FROM solicitud as s WHERE s.nro_solicitud = #{nro_solicitud}"

      result = @@conn.execute(query)
      solicitud = {}

      result.each do |r|
        solicitud = r
      end
      return solicitud
    end

    def self.get_proceso_viaje_batch_from_rut(rut)
      query = ""
      query << "SELECT * FROM proceso_viaje_batch as p WHERE p.prp_rut = #{rut}"

      result = @@conn.execute(query)
      proceso = {}

      result.each do |r|
        proceso = r
      end
      return proceso
    end

    def self.get_finalizar_viaje(codigo)
      query = ""
      query << "SELECT * FROM finalizar_viaje as f WHERE f.vje_codigo = #{codigo}"

      result = @@conn.execute(query)
      viaje = {}

      result.each do |r|
        viaje = r
      end
      return viaje
    end

    def self.get_linea_credito_from_rut(rut,nro_solicitud)
      query = ""
      query << "SELECT * FROM cab_linea_cred_sol WHERE rut = #{rut} AND nro_solicitud = #{nro_solicitud}"

      result = @@conn.execute(query)
      linea = {}

      result.each do |r|
        linea = r
      end
      return linea
    end
	
	def self.get_prospecto_tiene_convenio(rut)
      query = ""
      query << "SELECT * FROM prospecto as p WHERE p.prp_rut = #{rut}"
      result = @@conn.execute(query)
      prospecto = {}
      result.each do |r|
        prospecto = r
      end
      return prospecto
    end
	
	def self.get_convenio_empresa(codigo)
      query = ""
      query << "SELECT cnv_emp_rut, cnv_emp_cod_convenio, cnv_emp_plan_convenio FROM convenio_empresa as c WHERE c.vje_codigo = #{codigo}"
      result = @@conn.execute(query)
      viaje = {}
      result.each do |r|
        viaje = r
      end
      return viaje
    end
  end
end
