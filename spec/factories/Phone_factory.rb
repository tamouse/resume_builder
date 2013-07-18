=begin rdoc

Phone_factory.rb -- 

Time-stamp: <2013-07-18 02:52:33 tamara>
Copyright (C) 2013 Tamara Temple Web Development
Author:     Tamara Temple <tamouse@gmail.com>
License:    MIT

=end

require 'factory_girl'

FactoryGirl.define do
  factory :phone, :class => ResumeBuilder::Models::Phone do
    number "800-555-1212"
    label "Home"
    primary true
  end
end
