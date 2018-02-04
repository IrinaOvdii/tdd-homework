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

      # Make sure to replace next line with the actual implemented marking algorithm,
      # using the @secret_number

      # output.puts "you typed '#{input}'"
    end

    def number_match
      secret_number = @secret_number.chars
      input = @input

      if secret_number.include? input[0]
        output.puts '-'
      elsif secret_number.include? input[1]
      elsif secret_number.include? input[2]
        output.puts '-'
      elsif secret_number.include? input[3]
        output.puts '-'
      else output.puts ''
      end
    end

  end
end
