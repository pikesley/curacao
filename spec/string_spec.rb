describe String do
  it 'knows if a string looks like a regex' do
    expect('/stuff/'.is_regex).to be true
    expect('words'.is_regex).to be false
  end

  it 'turns a regex-y string into an actual regex' do
    expect('/rexular egspression/'.to_regex).to be_a Regexp
    expect('/rexular egspression/'.to_regex.match('rexular egspression')[0]).to_not be nil
  end

  context 'match against another string' do
    it 'a plain string' do
      expect('Monorail'.matches 'Monorail').to be true
      expect('Monorail'.matches 'Lyle Lanley').to be false
    end

    it 'a regex' do
      expect('/onorail/'.matches 'Monorail').to be true
      expect('/Monorail/'.matches 'Lyle Lanley').to be false
    end
  end
end
