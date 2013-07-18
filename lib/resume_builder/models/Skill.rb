=begin rdoc

Skill.rb -- class to list skills in various categories

# Time-stamp: <2013-07-17 21:56:42 tamara>
# Copyright (C) 2013 by Tamara Temple Web Development
# Author:     Tamara Temple <tamouse@gmail.com>
# License:    MIT

=end

class Skill < ActiveRecord::Base
  serialize :list_of_skills
  belongs_to :resume

  include ActiveModel::Serialization

  def attributes
    attributes_no_ids(self)
  end

end

