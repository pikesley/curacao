require 'coveralls'
Coveralls.wear!

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'curacao'

class Writer
  def self.write words, path = 'written'
    File.open path, 'w' do |f|
      f.write words
    end
  end
end

class Exiter
  def self.exit status, message: nil, error_message: nil
    STDOUT.puts message if message
    STDERR.puts error_message if error_message
    exit status
  end
end
