require_relative 'weather'

class Plane
  def initialize
  end

  def land(weather = Weather.new)
    raise "Stormy" if weather.stormy?
   return 'Landed'
  end

  def take_off(weather = Weather.new)
     raise "Stormy" if weather.stormy?
    return "Left"
  end
end
