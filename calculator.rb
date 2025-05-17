class StringCalculator
  def add(input)
    return 0 if input.strip.empty?
    input_striped = input.strip
    delimiters = [",", "\n"]
    if input_striped.start_with?("//")
      delimiter_line, input = input_striped.split("\n", 2)
      # Extract custom delimiters from format: //[***][%%]
      if delimiter_line.include?("[")
        delimiters += delimiter_line.scan(/\[(.*?)\]/).flatten
      else
        delimiters << delimiter_line[2]
      end
    end  
    return input_striped.to_i if !delimiters.any? { |delim| input_striped.include?(delim) }
    str_arr = input_striped.split(Regexp.union(delimiters))
    num_arr = str_arr.map(&:to_i)
    negative_numbers = num_arr.select {|n| n < 0}
    raise "negative numbers not allowed #{negative_numbers.join(',')}" if negative_numbers.length > 0
    return num_arr.sum
  end
end    