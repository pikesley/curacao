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
