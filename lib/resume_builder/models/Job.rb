=begin rdoc

Job.rb -- class containing information about jobs held

# Time-stamp: <2013-07-18 00:11:15 tamara>
# Copyright (C) 2013 by Tamara Temple Web Development
# Author:     Tamara Temple <tamouse@gmail.com>
# License:    MIT

=end

class Job < ActiveRecord::Base
  serialize :duties
  belongs_to :resume

  include ActiveModel::Serialization

  def attributes
    attributes_no_ids(self)
  end

  def current_job?
    self.end_year.nil?
  end

end

