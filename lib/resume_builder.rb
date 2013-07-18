=begin rdoc

resume_builder.rb - manage loading libraries

# Time-stamp: <2013-07-18 01:12:20 tamara>
# Copyright (C) 2013 by Tamara Temple Web Development
# Author: Tamara Temple <tamouse@gmail.com>
# License: MIT

=end

require 'active_record'

# Just suck in the whole blame tree why don't you?
Dir.glob(File.join(File.dirname(__FILE__),"resume_builder","**","*.rb")).each {|f| require f}

