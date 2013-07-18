=begin rdoc

InfoItem_factory.rb -- 

Time-stamp: <2013-07-18 02:51:36 tamara>
Copyright (C) 2013 Tamara Temple Web Development
Author:     Tamara Temple <tamouse@gmail.com>
License:    MIT

=end

require 'factory_girl'

FactoryGirl.define do
  factory :info_item, :class => ResumeBuilder::Models::InfoItem do
    name 'item1'
    label 'Red'
    description 'a random piece of information'
  end
end
