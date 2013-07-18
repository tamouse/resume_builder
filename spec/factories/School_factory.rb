=begin rdoc

School_factory.rb -- 

Time-stamp: <2013-07-18 02:53:10 tamara>
Copyright (C) 2013 Tamara Temple Web Development
Author:     Tamara Temple <tamouse@gmail.com>
License:    MIT

=end

require 'factory_girl'

FactoryGirl.define do
  factory :school, :class => ResumeBuilder::Models::School do
    name "Vita Blue U"
    class_year "1900"
    degree "212 F"
    gpa "2"
  end
end
