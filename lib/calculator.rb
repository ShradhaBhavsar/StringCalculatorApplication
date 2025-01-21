class Calculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter, numbers = extract_delimiter_and_numbers(numbers)
  end

  private

  def self.extract_delimiter_and_numbers(numbers)
    if numbers.start_with?("//")
      parts = numbers.split("\n", 2)
      delimiter = Regexp.escape(parts[0][2..])
      [delimiter, parts[1]]
    else
      [",", numbers]
    end
  end
end
