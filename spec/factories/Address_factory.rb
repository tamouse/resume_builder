=begin rdoc

Address_factory.rb -- factory_girl implementation for Address model

Time-stamp: <2013-07-18 02:50:21 tamara>
Copyright (C) 2013 Tamara Temple Web Development
Author:     Tamara Temple <tamouse@gmail.com>
License:    MIT

=end

require 'factory_girl'

FactoryGirl.define do
  factory :address, :class => ResumeBuilder::Models::Address do
    street1 "123 Main Street"
    street2 "Apartment B"
    city    "Anytown"
    state   "Confusion"
    postal_code "99999"
    primary true
  end
end
