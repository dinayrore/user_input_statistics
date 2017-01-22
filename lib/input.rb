# Determine type of user input
class Input
  def self.string?(value, array)
    array << value if value.to_i.to_s != value && value.to_f.to_s != value
  end

  def self.float?(value)
    return true if value.to_f.to_s == value
  end

  def self.integer?(value)
    return true if value.to_i.to_s == value
  end

  def self.numeric?(value, array)
    array << value if float?(value) || integer?(value)
  end
end
