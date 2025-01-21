# string-calculator
A simple Ruby project demonstrating Test-Driven Development (TDD) to create a `Calculator` class that performs addition on comma-separated numbers from a string.

## Features

The `Calculator` class provides a method `add` that takes a string of numbers and returns their sum. It supports:

1. **Comma-separated numbers**: Adds numbers separated by commas.
2. **Newline as delimiter**: Supports newlines between numbers (e.g., `"1\n2,3"`).
3. **Custom delimiters**: Custom delimiters can be specified in the format `//[delimiter]\n[numbers...]` (e.g., `"//;\n1;2"`).
4. **Negative number handling**: Throws an exception for negative numbers with a detailed message listing all negative numbers.

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/ShradhaBhavsar/StringCalculatorApplication.git
   cd StringCalculatorApplication
