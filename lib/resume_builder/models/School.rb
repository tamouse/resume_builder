=begin rdoc

School.rb -- class for information regarding schools, degress, and such

# Time-stamp: <2013-07-17 21:49:42 tamara>
# Copyright (C) 2013 by Tamara Temple Web Development
# Author:     Tamara Temple <tamouse@gmail.com>
# License:    MIT

== Discussion

The School model contains information regarding the resume owner's
school attendance, degrees and so on.

See Course model for just listing additional courses taken outside of
a particular school degree program.

=end

class School < ActiveRecord::Base
  
  belongs_to :resume

  include ActiveModel::Serialization

  def attributes
    attributes_no_ids(self)
  end

end

