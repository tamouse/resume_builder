=begin rdoc

Email_factory.rb -- 

Time-stamp: <2013-07-18 02:51:19 tamara>
Copyright (C) 2013 Tamara Temple Web Development
Author:     Tamara Temple <tamouse@gmail.com>
License:    MIT

=end

require 'factory_girl'

FactoryGirl.define do
  factory :email, :class => ResumeBuilder::Models::Email do
    label "Home"
    address "smithers@home.example.com"
    primary true
  end
end
