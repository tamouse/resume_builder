=begin rdoc

Skill.rb -- class to list skills in various categories

# Time-stamp: <2013-07-18 01:17:09 tamara>
# Copyright (C) 2013 by Tamara Temple Web Development
# Author:     Tamara Temple <tamouse@gmail.com>
# License:    MIT

=end

module ResumeBuilder::Models
  
  class Skill < ActiveRecord::Base
    serialize :list_of_skills
    belongs_to :resume

    include ActiveModel::Serialization
    include ResumeBuilder::Helpers

    def attributes
      attributes_no_ids(self)
    end

  end

end
