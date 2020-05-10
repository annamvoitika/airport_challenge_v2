require 'airport'

describe Airport do
  subject = Airport.new
  it 'prevents landing if airport is full' do
    plane = double(:plane)
    20.times do
      subject.land(plane)
    end
    expect{subject.land(plane)}.to raise_error "Airport is full"
  end

  it 'allows to override default capacity' do
    expect(subject.change_capacity(100)).to eq 100
  end


end
