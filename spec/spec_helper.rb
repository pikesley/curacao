require 'coveralls'
Coveralls.wear!

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'curacao'

#RSpec.configure do |config|
#  config.order = 'random'
#
#  # Suppress CLI output. This *will* break Pry
#  original_stderr = $stderr
#  original_stdout = $stdout
#  config.before(:all) do
#    # Redirect stderr and stdout
#    $stderr = File.new '/dev/null', 'w'
#    $stdout = File.new '/dev/null', 'w'
#  end
#
#  config.after(:all) do
#    $stderr = original_stderr
#    $stdout = original_stdout
#  end
#end

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each {|f| require f}
