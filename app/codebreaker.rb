class Codebreaker
  class Game
    attr_reader :output

    def initialize(output)
      @output = output
    end

    def start(secret_number)
      @secret_number = secret_number

      output.puts "Welcome to Codebreaker"
      output.puts "Enter guess:"
    end

    def guess(input)
      @input = input

      if @input.length != 4
        output.puts "Try guessing a number with four digits"
      end
      if @input != @secret_number
        output.puts ''
      end

      number_match
      exact_match
    end

    def number_match
      @input.chars.each_with_index do |n, i|
        if (@secret_number.include? n) && (@secret_number[i] != n)
          output.puts '-'
        end
      end
    end

    def exact_match
      @input.chars.each_with_index do |n, i|
        if @secret_number[i] = n
          output.puts '+'
        end
      end
    end

  end
end
