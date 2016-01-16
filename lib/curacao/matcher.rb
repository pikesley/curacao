require 'curacao/matcher/have_content'
require 'curacao/matcher/produce_file'

RSpec.configure do |config|
  # Use tmp/ to write files
  $pwd = FileUtils.pwd
  config.before(:each) do
    tmp_path = File.join(File.dirname(__FILE__), '..', '..', 'tmp')
    FileUtils.rm_rf tmp_path
    FileUtils.mkdir_p tmp_path
    FileUtils.cd tmp_path
  end

  config.after(:each) do
    FileUtils.cd $pwd
  end
end
