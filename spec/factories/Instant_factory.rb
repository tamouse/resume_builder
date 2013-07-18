=begin rdoc

Instant_factory.rb -- 

Time-stamp: <2013-07-18 02:51:56 tamara>
Copyright (C) 2013 Tamara Temple Web Development
Author:     Tamara Temple <tamouse@gmail.com>
License:    MIT

=end

require 'factory_girl'


FactoryGirl.define do
  factory :instant, :class => ResumeBuilder::Models::Instant do
    handle "fruitbasket"
    label "aol"
    primary true
  end
end
