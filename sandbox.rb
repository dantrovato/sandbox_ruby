=begin
puts "enter start year "
start_year = gets.chomp

puts "enter end year "
end_year = gets.chomp

start_year = start_year.to_i
end_year = end_year.to_i

while start_year <= end_year

  if start_year % 4 == 0 && start_year % 100 != 0
    puts start_year

    elsif start_year % 4 == 0 && start_year % 100 == 0 &&start_year % 400 == 0
      puts start_year

  end
  start_year += 1
end



array = []

game_on = true

while game_on
  puts "enter word"
  word = gets.chomp
  array.push(word)
  if word == ''
    game_on = false
  end
end

puts array.sort


table_of_contents_hash = {
  1 => {
    chapter: 1,
    chapter_name: 'Getting Started',
    page: 1
  },

  2 => {
    chapter: 2,
    chapter_name: 'Numbers',
    page: 9
  },

  3 => {
    chapter: 1,
    chapter_name: 'Letters',
    page: 13
  }
}



table_of_contents = [['Getting Started', 1], ['Numbers', 9], ['Letters', 13]]

i = 1
#str = "page"
table_of_contents.each do |x|
  #puts "Chapter "

    puts "Chapter #{i}: #{x[0].ljust(30)}  #{"page".rjust(30)}#{x[1]}"
    i += 1
end

=end

#  roman numerals

I = 1
V = 5
X = 10
L = 50
C = 100
D = 500
M = 1000

puts "enter number"
input = gets.chomp

thousands, hundreds, tens, ones = ''


                            # INPUT LENGTH 4
if input.length == 4

  thousands = 'M' * input[0].to_i

# HUNDREDS
  if input[1].to_i < 5
    hundreds = 'C' * input[1].to_i
  elsif input[1].to_i == 5
    hundreds = 'D'
  elsif input[1].to_i > 5
    hundreds = 'D' + ('C' * (input[1].to_i - 5))
  end

# TENS

  if input[2].to_i < 5
    tens = 'X' * input[2].to_i
  elsif input[2].to_i == 5
    tens = 'L'
  elsif input[2].to_i > 5
    tens = 'L' + ('X' * (input[2].to_i - 5))
  end


  # ONES
  if input[3].to_i < 5
    ones = 'I' * input[3].to_i
  elsif input[3].to_i == 5
    ones = 'V'
  elsif input[3].to_i > 5
    ones = 'V' + ('I' * (input[3].to_i - 5))
  end

                              # INPUT LENGTH 3

elsif input.length == 3
  # HUNDREDS
    if input[0].to_i < 5
      hundreds = 'C' * input[0].to_i
    elsif input[0].to_i == 5
      hundreds = 'D'
    elsif input[0].to_i > 5
      hundreds = 'D' + ('C' * (input[0].to_i - 5))
    end

  # TENS

    if input[1].to_i < 5
      tens = 'X' * input[1].to_i
    elsif input[1].to_i == 5
      tens = 'L'
    elsif input[1].to_i > 5
      tens = 'L' + ('X' * (input[1].to_i - 5))
    end


    # ONES
    if input[2].to_i < 5
      ones = 'I' * input[2].to_i
    elsif input[2].to_i == 5
      ones = 'V'
    elsif input[2].to_i > 5
      ones = 'V' + ('I' * (input[2].to_i - 5))
    end

                              # INPUT LENGTH 2
                              
elsif input.length == 2
    #tens
    if input[0].to_i < 5
      tens = 'X' * input[0].to_i
    elsif input[0].to_i == 5
      tens = 'L'
    elsif input[0].to_i > 5
      tens = 'L' + ('X' * (input[0].to_i - 5))
    end

    # ONES
    if input[1].to_i < 5
      ones = 'I' * input[1].to_i
    elsif input[1].to_i == 5
      ones = 'V'
    elsif input[1].to_i > 5
      ones = 'V' + ('I' * (input[1].to_i - 5))
    end

                              # INPUT LENGTH 1

elsif input.length == 1
    # ONES
    if input[0].to_i < 5
      ones = 'I' * input[1].to_i
    elsif input[0].to_i == 5
      ones = 'V'
    elsif input[0].to_i > 5
      ones = 'V' + ('I' * (input[0].to_i - 5))
    end


end



output = "#{thousands}, #{hundreds}, #{tens}, #{ones}"
puts output
