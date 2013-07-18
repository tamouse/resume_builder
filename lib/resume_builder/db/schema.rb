=begin rdoc

shema.rb -- create the database schema

# Time-stamp: <2013-07-17 17:33:39 tamara>
# Copyright (C) 2013 by Tamara Temple Web Development
# Author: Tamara Temple <tamouse@gmail.com>
# License: MIT

== Discussion

Create the tables for use in the sqlite database.

=end

require 'active_record'

ActiveRecord::Schema.define do
  create_table :contacts do |t|
    t.string :salutation        # M, Mr, Ms, Mrs, etc
    t.string :first_name
    t.string :middle_name
    t.string :last_name
    t.string :suffix            # Sr, Jr, III, etc
    t.string :titles            # MD, PhD, BCS, FACS, etc
  end

  add_index :contacts, [:last_name, :first_name]

  create_table :addresses do |t|
    t.string :street1
    t.string :street2
    t.string :street3
    t.string :street4
    t.string :city
    t.string :state
    t.string :country
    t.string :postal_code
    t.boolean :primary, :default => 0
    t.belongs_to :contact
  end

  create_table :phones do |t|
    t.string :number
    t.string :label
    t.boolean :primary, :default => 0
    t.belongs_to :contact
  end

  create_table :emails do |t|
    t.string :address
    t.string :label
    t.boolean :primary, :default => 0
    t.belongs_to :contact
  end

  create_table :instants do |t|
    t.string :handle
    t.string :label
    t.boolean :primary, :default => 0
    t.belongs_to :contact
  end

  create_table :websites do |t|
    t.string :url
    t.string :label
    t.boolean :primary, :default => 0
    t.belongs_to :contact
  end
  
end
