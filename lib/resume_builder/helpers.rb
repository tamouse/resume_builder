=begin rdoc

helpers.rb -- Helper functions used in the resume_builder

# Time-stamp: <2013-07-18 01:17:23 tamara>
# Copyright (C) 2013 by Tamara Temple Web Development
# Author: Tamara Temple <tamouse@gmail.com>
# License: MIT

=end

module ResumeBuilder::Helpers
  
  def attributes_no_ids(obj)
    obj.attribute_names.reject{|a| a =~ /id$/ }.reduce({}) do |h,k|
      h[k] = obj[k] unless obj[k].nil?
      h
    end
  end

end
