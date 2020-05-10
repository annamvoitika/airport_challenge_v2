require 'weather'

describe Weather do
  it 'can generate weather' do
    expect(weather = Weather.new).to respond_to :stormy?
  end
end
