=begin rdoc

Contact.rb - holds contact information for the resume owner

# Time-stamp: <2013-07-18 01:16:22 tamara>
# Copyright (C) 2013 by Tamara Temple Web Development
# Author: Tamara Temple <tamouse@gmail.com>
# License: MIT

=end


module ResumeBuilder::Models

  class Contact < ActiveRecord::Base

    belongs_to :resume
    has_many   :phones
    has_many   :addresses
    has_many   :emails
    has_many   :instants
    has_many   :websites

    include ActiveModel::Serialization
    include ResumeBuilder::Helpers

    def attributes
      attributes_no_ids(self)
    end

  end
end
