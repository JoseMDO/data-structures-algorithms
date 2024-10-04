
require "debug"

def valid_parentheses(string)
  stack = []
  close_to_open = {")" => "(", "]" => "[", "}" => "{"}
  start = Time.now

  string.each_char do |char|
    # debugger
    if close_to_open.values.include?(char)
      stack.push(char)
    elsif close_to_open.keys.include?(char)
      if stack.empty? || stack[-1] != close_to_open[char]
        return false
      end
      stack.pop
    end
  end

  finish = Time.now
  diff = finish - start
  pp format('Hash Method: %.6f seconds', diff)
  return stack.empty?
end



string = "(({}))"





def is_valid_gsub_method(s)
  # Initialize the length of the string
  # start = Time.now
  previous_length = 0

  # Loop until no more pairs can be removed
  while previous_length != s.length
    previous_length = s.length

    # Remove pairs of matching brackets
    s.gsub!("()", "")
    s.gsub!("{}", "")
    s.gsub!("[]", "")
  end

  # finish = Time.now
  # diff = finish - start
  # pp format('Gsub Method: %.6f seconds', diff)

  # If the string is empty, it's valid
  s.empty?
end

string = "(({}))"


# invalid_large_string = "(([]){[()]}){(([]))" + "(([]){[})" * 50 + "(([]){})" + "(([]))(([]))}" + "({[}])"

# pp valid_parentheses(string)
pp is_valid_gsub_method(string)
