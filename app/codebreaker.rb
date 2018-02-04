class Codebreaker
  class Game
    attr_reader :output
    NUM_LENGTH = 4

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

      if @input.length != NUM_LENGTH
        output.puts "Try guessing a number with four digits"
      end
      if @input != @secret_number
        output.puts ''
      end

      number_match
      exact_match
      two_number_match
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

    def two_number_match
      secret_number_ar2 = @secret_number.chars.combination(2).to_a
      input_ar2 = @input.chars.combination(2).to_a

      input_ar2.each_with_index do |n, i|
        if secret_number_ar2.include? n
          output.puts '--'
        end
      end
    end

  end
end
