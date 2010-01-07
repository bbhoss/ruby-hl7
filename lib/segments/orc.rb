# encoding: UTF-8
require 'ruby-hl7'
class HL7::Message::Segment::ORC < HL7::Message::Segment
  add_field :order_control
  add_field :placer_order_number
  add_field :filer_order_number
  add_field :placer_group_number
  add_field :order_status
  add_field :response_flag
  add_field :quantity_timing
  add_field :parent
  add_field :date_time_of_transaction
  add_field :entered_by
  add_field :verified_by
  add_field :ordering_provider
  add_field :enterers_location
  add_field :call_back_phone_number
  add_field :order_effective_date_time
  add_field :order_control_code_reason
  add_field :entering_organization
  add_field :entering_device
  add_field :action_by
end
