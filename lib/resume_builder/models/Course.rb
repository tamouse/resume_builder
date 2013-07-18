=begin rdoc

Course.rb - Class for additional courses and trainings taken
independently of a school program

# Time-stamp: <2013-07-17 21:53:46 tamara>
# Copyright (C) 2013 by Tamara Temple Web Development
# Author:     Tamara Temple <tamouse@gmail.com>
# License:    MIT

=end


require 'active_record'

class Course < ActiveRecord::Base
  belongs_to :resume

  include ActiveModel::Serialization

  def attributes
    attributes_no_ids(self)
  end
  
end
