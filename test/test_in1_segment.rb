# encoding: UTF-8
$: << '../lib'
require 'test/unit'
require 'ruby-hl7'

class In1Segment < Test::Unit::TestCase
  def setup
    @base = "IN1|1||UHMTH|United Health Care - PHCS|PO Box 30555^^Salt Lake City^UT^84130|||12345678||||||||TEST^TC24C|1||4771 Regent Blvd^^Irving^TX^75063|||||||||||||||||00000000|||||||||||T||007|"
  end

  def test_initial_read
    in1 = HL7::Message::Segment::IN1.new @base
    assert_equal( @base, in1.to_s )
    assert_equal( "1", in1.set_id )
    assert_equal( "", in1.insurance_plan_id )
    assert_equal( "UHMTH", in1.insurance_company_id )
    assert_equal( "United Health Care - PHCS", in1.insurance_company_name )
    assert_equal( "PO Box 30555^^Salt Lake City^UT^84130", in1.insurance_company_address )
    assert_equal( "", in1.insurance_company_contact_person )
    assert_equal( "", in1.insurance_company_phone_number )
    assert_equal( "12345678", in1.group_number )
    assert_equal( "", in1.group_name )
    assert_equal( "", in1.insureds_group_employee_id )
    assert_equal( "", in1.insureds_group_employee_name )
    assert_equal( "", in1.plan_effective_date )
    assert_equal( "", in1.plan_expiration_date )
    assert_equal( "", in1.authorization_information )
    assert_equal( "", in1.plan_type )
    assert_equal( "TEST^TC24C", in1.name_of_insured )
    assert_equal( "1", in1.insureds_relationship_to_patient )
    assert_equal( "", in1.insureds_date_of_birth )
    assert_equal( "4771 Regent Blvd^^Irving^TX^75063", in1.insureds_address )
    assert_equal( "", in1.assignment_of_benefits )
    assert_equal( "", in1.coordination_of_benefits )
    assert_equal( "", in1.coordination_of_benefits_priority )
    assert_equal( "", in1.notice_of_admission_flag )
    assert_equal( "", in1.notice_of_admission_date )
    assert_equal( "", in1.report_of_eligibility_flag )
    assert_equal( "", in1.report_of_eligibility_date )
    assert_equal( "", in1.release_information_code )
    assert_equal( "", in1.pre_admit_cert )
    assert_equal( "", in1.verification_date_time )
    assert_equal( "", in1.verification_by )
    assert_equal( "", in1.type_of_agreement_code )
    assert_equal( "", in1.billing_status )
    assert_equal( "", in1.lifetime_reserve_days )
    assert_equal( "", in1.delay_before_lr_day )
    assert_equal( "", in1.company_plan_code )
    assert_equal( "00000000", in1.policy_number )
    assert_equal( "", in1.policy_deductible )
    assert_equal( "", in1.policy_limit_amount )
    assert_equal( "", in1.policy_limit_days )
    assert_equal( "", in1.room_rate_semi_private )
    assert_equal( "", in1.room_rate_private )
    assert_equal( "", in1.insureds_employment_status )
    assert_equal( "", in1.insureds_sex )
    assert_equal( "", in1.insureds_employer_address )
    assert_equal( "", in1.verification_status )
    assert_equal( "", in1.prior_insurance_plan_id )
    assert_equal( "T", in1.coverage_type )
    assert_equal( "", in1.handicap )
    assert_equal( "007", in1.insureds_id_number )
  end

  def test_creation
    in1 = HL7::Message::Segment::IN1.new
    in1.set_id = "1"
  end
end
