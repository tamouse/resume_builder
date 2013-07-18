=begin rdoc

Address.rb - Contains addresses for Contact

# Time-stamp: <2013-07-18 01:16:00 tamara>
# Copyright (C) 2013 by Tamara Temple Web Development
# Author:     Tamara Temple <tamouse@gmail.com>
# License:    MIT

== Discussion

The Address model keeps addresses for the Contact.

=end

module ResumeBuilder::Models
  class Address < ActiveRecord::Base

    belongs_to :contact

    include ActiveModel::Serialization
    include ResumeBuilder::Helpers

    def attributes
      attributes_no_ids(self)
    end
    
  end
end
