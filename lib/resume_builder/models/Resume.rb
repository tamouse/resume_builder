=begin rdoc

Resume.rb - Top class that holds the other pieces of the resume together

# Time-stamp: <2013-07-18 00:26:03 tamara>
# Copyright (C) 2013 by Tamara Temple Web Development
# Author: Tamara Temple <tamouse@gmail.com>
# License: MIT

=end


require 'active_record'

class Resume < ActiveRecord::Base

  has_one    :contact
  has_many   :skills
  has_many   :schools
  has_many   :courses
  has_many   :jobs
  has_many   :info_items

  include ActiveModel::Serialization

  def attributes
    attributes_no_ids(self)
  end

  def dump
    self.as_json(:root    => true,
                 :include => {
                   :contact => {
                     :include => {
                       :addresses => {},
                       :phones => {},
                       :emails => {},
                       :instants => {},
                       :websites => {}
                     }},
                   :skills => {:root => true},
                   :schools => {:root => true},
                   :courses => {:root => true},
                   :jobs => { :root => true},
                   :info_items => {:root => true}
                 })
  end
  
end
