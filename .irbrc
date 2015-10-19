require 'briar'
require 'briar/irbrc'

puts 'loaded briar'

require 'pry'

if ENV['APP']
  app = ENV['APP']
else
  app = File.expand_path('Products/app/LPSimpleExample.app')
  ENV['APP'] = app
end

unless File.exist?(app)
  raise "Expected app '#{app}' to exist.\nYou can build the app with `make app`"
end

puts_calabash_environment

puts "APP => '#{app}'"
briar_message_of_the_day

def make_app
  system('make', 'app')
end
