#--
# Surround.
#
# Veselin Todorov <hi@vesln.com>
# MIT License.
#++

require 'rspec/core/rake_task'
require 'rake'
require 'echoe'

Echoe.new('surround', '0.0.1') do |p|
  p.description    = "Surround a method, save a polar be"
  p.url            = "http://github.com/ryanb/uniquify"
  p.author         = "Veselin Todorov"
  p.email          = "hi@vesln.com"
  p.ignore_pattern = ["tmp/*"]
  p.development_dependencies = ['rspec', 'rake']
end

RSpec::Core::RakeTask.new('spec')
