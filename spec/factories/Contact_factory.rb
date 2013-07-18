=begin rdoc

Contact_factory.rb -- factory_girl implementation

Time-stamp: <2013-07-18 02:55:09 tamara>
Copyright (C) 2013 Tamara Temple Web Development
Author:     Tamara Temple <tamouse@gmail.com>
License:    MIT

=end

require 'factory_girl'

FactoryGirl.define do
  factory :contact, :class => ResumeBuilder::Models::Contact do
    last_name "Smiters"
    first_name "Dwight"
    middle_name "T."
    titles "Esq."
  end
end
