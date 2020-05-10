require 'plane'

describe Plane do
  subject = Plane.new

  it 'lands at an airport' do
    weather = double(:weather, stormy?: false)
    expect(subject.land(weather)).to eq "Landed"
  end

  it 'takes off and confirms it left' do
    weather = double(:weather, stormy?: false)
    expect(subject.take_off(weather)).to eq "Left"
  end

  it 'prevents take off when weather is stormy' do
    weather = double(:weather, stormy?: true)
    expect{subject.take_off(weather)}.to raise_error "Stormy"
  end

  it 'prevents landing when weather is stormy' do
    weather = double(:weather, stormy?: true)
    expect{subject.land(weather)}.to raise_error "Stormy"
  end
  end
