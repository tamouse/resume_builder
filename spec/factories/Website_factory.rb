=begin rdoc

Website_factory.rb -- 

Time-stamp: <2013-07-18 02:53:47 tamara>
Copyright (C) 2013 Tamara Temple Web Development
Author:     Tamara Temple <tamouse@gmail.com>
License:    MIT

=end

require 'factory_girl'

FactoryGirl.define do
  factory :website, :class => ResumeBuilder::Models::Website do
    url "http://me.example.com"
    label "my site"
    primary true
  end
end
