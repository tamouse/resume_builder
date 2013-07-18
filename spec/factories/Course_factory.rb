=begin rdoc

Course_factory.rb -- 

Time-stamp: <2013-07-18 02:50:58 tamara>
Copyright (C) 2013 Tamara Temple Web Development
Author:     Tamara Temple <tamouse@gmail.com>
License:    MIT

=end

require 'factory_girl'

FactoryGirl.define do
  factory :course, :class => ResumeBuilder::Models::Course do
    title 'Underwater Basketweaving III'
    notes 'lorem ipsum'
  end
end
