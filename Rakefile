###############################################
=begin
require 'rake'
task :default => [:test]

desc "Run all tests"
Spec::Rake::SpecTask.new('test') do |t|
  t.spec_files = FileList['test/test_*.rb']
end

desc "Generate specdocs for examples for inclusion in RDoc"
Spec::Rake::SpecTask.new('specdoc') do |t|
  t.spec_files = FileList['test/test_*.rb']
  t.spec_opts = ["--format", "rdoc"]
  t.out = 'EXAMPLES.rd'
end

desc "Generate HTML report for failing examples"
Spec::Rake::SpecTask.new('failing_examples_with_html') do |t|
  t.spec_files = FileList['test/test_*.rb']
  t.spec_opts = ["--format", "html:failing_examples.html", "--diff"]
  t.fail_on_error = false
end
=end

########################################################

require 'rubygems'

begin
  require 'bundler'
rescue LoadError => e
  STDERR.puts e.message
  STDERR.puts "Run `gem install bundler` to install Bundler."
  exit e.status_code
end

begin
  Bundler.setup(:development)
rescue Bundler::BundlerError => e
  STDERR.puts e.message
  STDERR.puts "Run `bundle install` to install missing gems."
  exit e.status_code
end

require 'rake'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new

task :test => :spec
task :default => :spec

require 'ore/specification'
require 'jeweler'
Jeweler::Tasks.new(Ore::Specification.new)

require 'yard'
YARD::Rake::YardocTask.new
task :doc => :yard

