=begin rdoc

db_connect.rb -- establish connection to the data base.

# Time-stamp: <2013-07-17 10:03:50 tamara>
# Copyright (C) 2013 by Tamara Temple Web Development
# Author: Tamara Temple <tamouse@gmail.com>
# License: MIT

== Description

This uses the ActiveRecord gem from Rails, but in a stand-alone
fashion. AR is used to aid with building models and interacting with
them. The database is not expected to persist from
invocation-to-invocation, but data is persisted with a user-editable
YAML file instead.

=end

require 'active_record'

# TODO: make this configurable

ActiveRecord::Base.establish_connection(:adapter => 'sqlite3',
                                        :database => ':memory:')

