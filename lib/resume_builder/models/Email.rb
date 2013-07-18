=begin rdoc

Email.rb - Contains email addresses for Contact

# Time-stamp: <2013-07-17 21:34:31 tamara>
# Copyright (C) 2013 by Tamara Temple Web Development
# Author:     Tamara Temple <tamouse@gmail.com>
# License:    MIT

=end

require 'active_record'

class Email < ActiveRecord::Base
  belongs_to :contact

  include ActiveModel::Serialization

  def attributes
    attributes_no_ids(self)
  end

end


