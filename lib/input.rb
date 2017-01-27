# Determine type of user input
class Input
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def string?
    return true if value.to_i.to_s != value && value.to_f.to_s != value
  end

  def float?
    return true if value.to_f.to_s == value
  end

  def integer?
    return true if value.to_i.to_s == value
  end
end
