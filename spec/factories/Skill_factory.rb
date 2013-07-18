=begin rdoc

Skill_factory.rb -- 

Time-stamp: <2013-07-18 02:53:30 tamara>
Copyright (C) 2013 Tamara Temple Web Development
Author:     Tamara Temple <tamouse@gmail.com>
License:    MIT

=end

require 'factory_girl'


FactoryGirl.define do
  factory :skill, :class => ResumeBuilder::Models::Skill do
    category "Blivits"
    list_of_skills 0.upto(5).to_a
  end
end
