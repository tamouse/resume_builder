require 'active_record'

class Contact < ActiveRecord::Base

  has_many :phones
  has_many :addresses
  has_many :emails
  has_many :instants
  has_many :websites

  include ActiveModel::Serialization

  def attributes
    att={}
    self.attribute_names.reject{|a| a =~ /id$/ }.each do |a|
      att[a] = self[a] unless self[a].nil?
    end
    att
  end

  def dump
    self.as_json(root: true,
                 include: [ :addresses,
                            :phones,
                            :emails,
                            :instants,
                            :websites
                          ])
  end
  
end
