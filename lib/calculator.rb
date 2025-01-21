class Calculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter, numbers = extract_delimiter_and_numbers(numbers)
    tokens = split_numbers(numbers, delimiter)
    validate_no_negatives(tokens)
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

  def self.split_numbers(numbers, delimiter)
    numbers.split(/#{delimiter}|\n/)
  end

  def self.validate_no_negatives(tokens)
    negatives = tokens.map(&:to_i).select { |n| n < 0 }
    raise "negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
  end
end
