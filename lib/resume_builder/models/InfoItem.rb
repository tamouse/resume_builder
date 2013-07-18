=begin rdoc

InfoItem.rb -- class to hold additional information items as needed

# Time-stamp: <2013-07-18 00:28:03 tamara>
# Copyright (C) 2013 by Tamara Temple Web Development
# Author:     Tamara Temple <tamouse@gmail.com>
# License:    MIT

=end

class InfoItem < ActiveRecord::Base
  belongs_to :resume

  include ActiveModel::Serialization

  def attributes
    attributes_no_ids(self)
  end

end

