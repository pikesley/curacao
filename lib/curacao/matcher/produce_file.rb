RSpec::Matchers.define :produce_file do |expected|
  match do |actual|
    actual.call

    expect(File).to exist expected
  end
  
  supports_block_expectations

  failure_message do |actual|
    "expected file #{expected} to exist"
  end

  failure_message_when_negated do |actual|
    "expected #{expected} to not exist"
  end

  description do
    'check for existence of output file'
  end
end
RSpec::Matchers.alias_matcher :produce_the_file, :produce_file
