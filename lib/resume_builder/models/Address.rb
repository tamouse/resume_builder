=begin rdoc

Address.rb - Contains addresses for Contact

# Time-stamp: <2013-07-17 21:26:33 tamara>
# Copyright (C) 2013 by Tamara Temple Web Development
# Author:     Tamara Temple <tamouse@gmail.com>
# License:    MIT

== Discussion

The Address model keeps addresses for the Contact.

=end

require 'active_record'

class Address < ActiveRecord::Base

  belongs_to :contact

  include ActiveModel::Serialization

  def attributes
    attributes_no_ids(self)
  end
    
end
