require './lib/attendee'

RSpec.describe Attendee do 
  it'initializes with attributes' do 
    attendee = Attendee.new({name: 'Megan', budget: '$50'})

    expect(attendee.name).to eq("Megan")
    expect(attendee.budget).to eq(50)
  end
end
