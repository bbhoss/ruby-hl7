# encoding: UTF-8
$: << '../lib'
require 'test/unit'
require 'ruby-hl7'

class Gt1Segment < Test::Unit::TestCase
  def setup
    @base = "GT1|1||TEST^TC24C||4771 Regent Blvd^^Irving^TX^675063|||||"
  end

  def test_initial_read
    gt1 = HL7::Message::Segment::GT1.new @base
    assert_equal( @base, gt1.to_s )
    assert_equal( "1", gt1.set_id )
    assert_equal( "", gt1.guarantor_number )
    assert_equal( "TEST^TC24C", gt1.guarantor_name )
    assert_equal( "", gt1.guarantor_spouse_name )
    assert_equal( "4771 Regent Blvd^^Irving^TX^675063", gt1.guarantor_address )
    assert_equal( "", gt1.guarantor_phone_number_home )
    assert_equal( "", gt1.guarantor_phone_number_business )
    assert_equal( "", gt1.guarantor_date_time_of_birth )
    assert_equal( "", gt1.guarantor_sex )
  end

  def test_creation
    gt1 = HL7::Message::Segment::GT1.new
    gt1.set_id = "1"
  end
end
