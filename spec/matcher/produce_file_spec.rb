describe Writer do
  it 'writes a file' do
    expect { Writer.write 'words' }.to produce_the_file 'written'
  end
end
