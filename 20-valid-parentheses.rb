


def valid_parentheses(string)
  stack = []
  close_to_open = {")" => "(", "]" => "[", "}" => "{"}
  start = Time.now

  string.each_char do |char|
    if close_to_open.values.include?(char)
      stack.push(char)
    elsif close_to_open.keys.include?(char)
      if stack.empty? || stack.pop != close_to_open[char]
        return false
      end
    end
  end

  finish = Time.now
  diff = finish - start
  pp format('Hash Method: %.6f seconds', diff)

  return stack.empty?
end









def is_valid_brute_force(s)
  # Initialize the length of the string
  start = Time.now
  previous_length = 0

  # Loop until no more pairs can be removed
  while previous_length != s.length
    previous_length = s.length

    # Remove pairs of matching brackets
    s.gsub!("()", "")
    s.gsub!("{}", "")
    s.gsub!("[]", "")
  end

  finish = Time.now
  diff = finish - start
  pp format('Brute Force Method: %.6f seconds', diff)


  # If the string is empty, it's valid
  s.empty?
end


string = "({[({[({[(){}]})]})]})" * 10000000

pp valid_parentheses(string)
