class StringCalculator
  def add(input)
    return 0 if input.strip.empty?
    input_striped = input.strip
    return input_striped.to_i if !input_striped.include?(",")
  end
end    