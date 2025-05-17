class StringCalculator
  def add(input)
    return 0 if input.strip.empty?
    input_striped = input.strip
    return input_striped.to_i if !input_striped.include?(",")
    str_arr = input_striped.split(",")
    num_arr = str_arr.map(&:to_i)
    return num_arr.sum
  end
end    