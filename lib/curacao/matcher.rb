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

  # Suppress CLI output. This *will* break Pry
  unless ENV['PRY']
    original_stderr = $stderr
    original_stdout = $stdout
    config.before(:all) do
      # Redirect stderr and stdout
      $stderr = File.new '/dev/null', 'w'
      $stdout = File.new '/dev/null', 'w'
    end

    config.after(:all) do
      $stderr = original_stderr
      $stdout = original_stdout
    end
  end
end
