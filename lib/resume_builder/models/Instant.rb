=begin rdoc

Instant.rb - Contains instant messaging handles for Contact

# Time-stamp: <2013-07-17 21:35:26 tamara>
# Copyright (C) 2013 by Tamara Temple Web Development
# Author:     Tamara Temple <tamouse@gmail.com>
# License:    MIT

=end


require 'active_record'

class Instant < ActiveRecord::Base
  belongs_to :contact

  include ActiveModel::Serialization

  def attributes
    attributes_no_ids(self)
  end
  
end
