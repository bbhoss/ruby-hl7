# encoding: UTF-8
$: << '../lib'
require 'test/unit'
require 'ruby-hl7'

class OrcSegment < Test::Unit::TestCase
  def setup
    @base = "ORC|NW|54932-6||||||||||1234567893^Ranger^Lone^^^^^^NPI||||||||"
  end

  def test_initial_read
    orc = HL7::Message::Segment::ORC.new @base
    assert_equal( @base, orc.to_s )
    assert_equal( "NW", orc.order_control )
    assert_equal( "54932-6", orc.placer_order_number )
    assert_equal( "", orc.filer_order_number )
    assert_equal( "", orc.placer_group_number )
    assert_equal( "", orc.order_status )
    assert_equal( "", orc.response_flag )
    assert_equal( "", orc.quantity_timing )
    assert_equal( "", orc.parent )
    assert_equal( "", orc.date_time_of_transaction )
    assert_equal( "", orc.entered_by )
    assert_equal( "", orc.verified_by )
    assert_equal( "1234567893^Ranger^Lone^^^^^^NPI", orc.ordering_provider )
    assert_equal( "", orc.enterers_location )
    assert_equal( "", orc.call_back_phone_number )
    assert_equal( "", orc.order_effective_date_time )
    assert_equal( "", orc.order_control_code_reason )
    assert_equal( "", orc.entering_organization )
    assert_equal( "", orc.entering_device )
    assert_equal( "", orc.action_by )
  end

  def test_creation
    orc = HL7::Message::Segment::ORC.new
    orc.order_control = "NW"
  end
end
