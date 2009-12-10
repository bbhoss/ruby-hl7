# encoding: UTF-8
require 'ruby-hl7'
class HL7::Message::Segment::ORC < HL7::Message::Segment
  weight 0 # obr.weight-1
  add_field :order_control
  add_field :placer_order_number
  add_field :verified_by
  add_field :ordering_provider

end