lib = File.join(File.dirname(__FILE__),'lib')
require File.join(lib,'resume_builder/version.rb')
spec = Gem::Specification.new do |s| 
  s.name = 'resume_builder'
  s.version = ResumeBuilder::VERSION
  s.author = 'Tamara Temple'
  s.email = 'tamouse@gmail.com'
  s.homepage = 'http://tamouse.github.io/resume_builder'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A set of commands to build a resume web site and various other forms'
  s.files = `git ls-files`.split($/)
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','resume_builder.rdoc']
  s.rdoc_options << '--title' << 'resume_builder' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'resume_builder'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_development_dependency('rspec')
  s.add_dependency('gli','2.7.0')
end
