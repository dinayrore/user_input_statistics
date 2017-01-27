# Determine type of user input
class Input
  attr_reader :value, :array

  def initialize(value, array)
    @value = value
    @array = array  
  end

  def self.string?(value, array)
    array << value if value.to_i.to_s != value && value.to_f.to_s != value
  end

  def self.float?(value, array)
    array << value.to_f if value.to_f.to_s == value
  end

  def self.integer?(value, array)
    array << value.to_i if value.to_i.to_s == value
  end
end
