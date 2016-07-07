describe Exiter do
  it 'exits with a 0' do
    expect { Exiter.exit 0 }.to exit_with_status 0
  end

#  it 'exits with a 1' do
#    expect { Exiter.exit 1 }.to exit_with_status 1
#  end

#  it 'exits with a 0 and a message' do
#    expect { Exiter.exit 0, 'Everything is fine' }.to exit_with_status_and_message 0, 'Everything is fine'
#  end
end
