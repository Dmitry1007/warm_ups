class Set
  attr_accessor :data
  def initialize
    @data = []
  end

  def add_only_uniq_data(stuff)
    data << stuff
    data.uniq!
  end
end