=begin rdoc

Email.rb - Contains email addresses for Contact

# Time-stamp: <2013-07-18 01:16:33 tamara>
# Copyright (C) 2013 by Tamara Temple Web Development
# Author:     Tamara Temple <tamouse@gmail.com>
# License:    MIT

=end

module ResumeBuilder::Models

  class Email < ActiveRecord::Base
    belongs_to :contact

    include ActiveModel::Serialization
    include ResumeBuilder::Helpers

    def attributes
      attributes_no_ids(self)
    end

  end


end
