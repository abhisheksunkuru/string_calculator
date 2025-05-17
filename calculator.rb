class StringCalculator
  def add(input)
    return 0 if input.strip.empty?
    input_striped = input.strip
    delimiters = [",", "\n"]
    if input_striped.start_with?("//")
      delimiter_line, input = input_striped.split("\n", 2)
      custom_delimiter = delimiter_line[2]
      delimiters << custom_delimiter
    end  
    return input_striped.to_i if !delimiters.any? { |delim| input_striped.include?(delim) }
    str_arr = input_striped.split(Regexp.union(delimiters))
    num_arr = str_arr.map(&:to_i)
    return num_arr.sum
  end
end    