require './lib/item'

RSpec.describe Item do 
  it 'initializes with attributes' do 
    item1 = Item.new('Chalkware Piggy Bank')
    item2 = Item.new('Bamboo Picture Frame')

    expect(item1.name).to eq("Chalkware Piggy Bank")
    expect(item2.name).to eq("Bamboo Picture Frame")

    expect(item1.bids).to eq({})
    expect(item2.bids).to eq({})
  end
end