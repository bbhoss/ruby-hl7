# encoding: UTF-8
$: << '../lib'
require 'test/unit'
require 'ruby-hl7'

class Dg1Segment < Test::Unit::TestCase
  def setup
    @base = "DG1|1|ICD|2859 |Anemia unspecified||"
  end

  def test_initial_read
    dg1 = HL7::Message::Segment::DG1.new @base
    assert_equal( @base, dg1.to_s )
    assert_equal( "1", dg1.set_id ) 
    assert_equal( "ICD", dg1.diagnosis_coding_method ) 
    assert_equal( "2859 ", dg1.diagnosis_code )
    assert_equal( "Anemia unspecified", dg1.diagnosis_description )
  end
                                          
  def test_creation
    dg1 = HL7::Message::Segment::DG1.new
    dg1.set_id = "1"
    dg1.diagnosis_coding_method = "ICD"
    dg1.diagnosis_code = "2859 "
    dg1.diagnosis_description = "Anemia unspecified"
    dg1.diagnosis_date_time = "20090913120900"
    dg1.diagnosis_type = "test"
    dg1.major_diagnostic_category = "category"
  end
end
