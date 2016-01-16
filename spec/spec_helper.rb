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

class Writer
  def self.write words, path = 'written'
    File.open path, 'w' do |f|
      f.write words
    end
  end
end
