require 'active_record'

class Address < ActiveRecord::Base

  belongs_to :contact

  include ActiveModel::Serialization

  def attributes
    att={}
    self.attribute_names.reject{|a| a =~ /id$/ }.each do |a|
      att[a] = self[a] unless self[a].nil?
    end
    att
  end
    
end
