=begin rdoc

Job_factory.rb -- 

Time-stamp: <2013-07-18 02:52:15 tamara>
Copyright (C) 2013 Tamara Temple Web Development
Author:     Tamara Temple <tamouse@gmail.com>
License:    MIT

=end

require 'factory_girl'

FactoryGirl.define do
  factory :job, :class => ResumeBuilder::Models::Job  do
    position "Lord High Executioner"
    company "Primatec"
    description "The lonely job I ever loved."
    start_year "1990"
    location "BFE"
    duties ['pipe fitter', 'chief cook', 'bottle washer', 'yak shaver']
  end
end
