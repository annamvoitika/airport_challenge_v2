require_relative 'plane'

class Airport
  attr_accessor :capacity

  def initialize(plane = Plane.new, capacity = 20)
    @plane = plane
    @capacity = capacity
    @planes = []
  end

  def land(plane)
    raise "Airport is full" if full?
    @planes << plane
    "Landed"
  end

  def change_capacity(capacity)
    @capacity = capacity
  end

private

def full?
  @planes.count >= @capacity
end

end
