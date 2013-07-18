=begin rdoc

Resume_factory.rb -- 

Time-stamp: <2013-07-18 02:52:52 tamara>
Copyright (C) 2013 Tamara Temple Web Development
Author:     Tamara Temple <tamouse@gmail.com>
License:    MIT

=end

require 'factory_girl'

FactoryGirl.define do
  factory :resume, :class => ResumeBuilder::Models::Resume do
    last_update Date.today
    name "Dwight T. Smithers"
    title "Resume of the Right Honorable Dwight T. Smither"
    summary "Some lot of twaddle."
    objective "Yes."
  end
end
