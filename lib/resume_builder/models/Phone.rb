=begin rdoc

Phone.rb - Contains phone numbers for Contact

# Time-stamp: <2013-07-17 21:36:09 tamara>
# Copyright (C) 2013 by Tamara Temple Web Development
# Author:     Tamara Temple <tamouse@gmail.com>
# License:    MIT

=end

require 'active_record'

class Phone < ActiveRecord::Base
  belongs_to :contact

  include ActiveModel::Serialization

  def attributes
    attributes_no_ids(self)
  end

end
