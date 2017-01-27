# Determine type of user input
class Input
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def self.string?
    return true if value.to_i.to_s != value && value.to_f.to_s != value
  end

  def self.float?
    return true if value.to_f.to_s == value
  end

  def self.integer?
    return true if value.to_i.to_s == value
  end
end
