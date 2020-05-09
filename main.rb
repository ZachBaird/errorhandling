# frozen_string_literal: true

def type_error_handling
  a = 10
  b = '12'

  begin
    a + b
  rescue StandardError
    puts "Could not add variables #{a.class} and #{b.class}"
  else
    puts "Your sum is #{a + b}"
  end
end

def type_error_handling_with_array
  values = [42, 'a', 'r', 9, 5, 10_022, 8.7, 'sharon', 'Libya', 'Mars', '12',
            98, rand + rand, { dog: 'cat' }, 100, nil, 200.0000, Object, 680,
            3.14, 'Steve', 78, 'Argo'].shuffle

  until values.empty?
    a = values.pop
    b = values.pop

    begin
      a + b
    rescue StandardError
      puts "Could not add variables a #{a.class} and b #{b.class}"
    else
      puts "Result for a + b is #{a + b}"
    end
  end
end

def infinite_loop_with_user_input
  Kernel.loop
  puts 'Enter a number>>'
  begin
    num = Kernel.gets.match(/\d+/)[0]
  rescue StandardError
    puts 'Erroneous input! Try again...'
  else
    puts "#{num} + 1 is: #{num.to_i + 1}"
  end
end

infinite_loop_with_user_input
