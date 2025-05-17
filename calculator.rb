class StringCalculator
  def add(input)
    return 0 if input.strip.empty?
    input_striped = input.strip
    delimiters = [",", "\n"]
    return input_striped.to_i if !delimiters.any? { |delim| input_striped.include?(delim) }
    str_arr = input_striped.split(Regexp.union(delimiters))
    num_arr = str_arr.map(&:to_i)
    return num_arr.sum
  end
end    