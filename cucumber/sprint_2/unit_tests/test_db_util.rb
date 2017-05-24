require "minitest/autorun"
require_relative "../features/support/db_utils.rb"

class TestDB < Minitest::Test

  def test_get_max_from_table()
    DBUtils::Sybase.connect($base_datos, :prospectos)
    assert true, DBUtils::Sybase.get_max_from_table('viaje', 'vje_codigo')
    DBUtils::Sybase.disconnect()
  end

  def test_insert_into_table()
    DBUtils::Sybase.connect($base_datos, :prospectos)
    assert true, DBUtils::Sybase.insert_into_table('viaje', {:vje_codigo => '\'1234\'', :asdf => '\'1234\'', :werwqer => '\'1234\'', :fasdf => '\'1234\''})
    DBUtils::Sybase.disconnect()
  end

  def test_check_tabla_prospecto()
    DBUtils::Sybase.connect($base_datos, :prospectos)
    prospecto = DBUtils::Sybase.get_prospecto(12643142, '2')
    refute_empty prospecto
    assert 12643142, prospecto[:prp_rut]
    DBUtils::Sybase.disconnect()
  end

  def test_check_tabla_viaje()
    DBUtils::Sybase.connect($base_datos, :prospectos)
    viaje = DBUtils::Sybase.get_viaje_from_rut(12643142)
    refute_empty viaje
    assert 12643142, viaje[:prp_rut]
    DBUtils::Sybase.disconnect()
  end

  def test_check_tabla_ticket_atencion()
    DBUtils::Sybase.connect($base_datos, :prospectos)
    ticket_atencion = DBUtils::Sybase.get_ticket_atencion_form_rut(12643142)
    refute_empty ticket_atencion
    DBUtils::Sybase.disconnect()
  end

  def test_select_from_table()
    DBUtils::Sybase.connect($base_datos, :prospectos)
    result = DBUtils::Sybase.select_from_table('prospecto', {:prp_rut => 15173469, :prp_dv => '3'})
    refute_nil result
    result = DBUtils::Sybase.select_from_table('viaje', {:vje_codigo => 4191})
    print result
    refute_nil result
    DBUtils::Sybase.disconnect()
  end

  def test_check_autentica_transf()
    DBUtils::Sybase.connect($base_datos, :prospectos)
    transferencia = DBUtils::Sybase.check_transferencia(4198)
    refute_empty transferencia
    DBUtils::Sybase.disconnect()
  end

  def test_clean_prospecto_viaje()
    DBUtils::Sybase.connect($base_datos, :prospectos)
    transferencia = DBUtils::Sybase.clean_prospecto_viaje(12643142, 4274)
    DBUtils::Sybase.disconnect()
  end

  def test_check_solicitud()
    DBUtils::Sybase.connect("culyses_ii", :succorporativa)
    sol = DBUtils::Sybase.check_solicitud(12643142, 13000871769)
    assert_equal sol.first["rut"].to_i, 12643142
    DBUtils::Sybase.disconnect()
  end

end
