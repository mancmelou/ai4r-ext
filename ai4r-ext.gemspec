require 'rubygems'
require 'rake'

Gem::Specification.new do |s|
  s.name = 'ai4r-ext'
  s.version = '0.0'
  s.author = 'Vladimir Ivic'
  s.homepage = 'https://github.com/mancmelou/ai4r-ext'
  s.platform = Gem::Platform::RUBY
  s.summary = <<-DESC.strip.gsub(/\n\s+/, ' ')
    Additional methods for Ai4r
  DESC
  s.files = FileList['{examples,lib}/**/*'].to_a
  s.require_path = 'lib'
  s.test_files = FileList['{test}/**/*test.rb'].to_a
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc']
end
