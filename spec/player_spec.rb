require 'player'

describe Player do

  subject(:bob) { described_class.new('Bob') }

  it 'has a name' do
    expect(bob.name).to eq 'Bob'
  end

end