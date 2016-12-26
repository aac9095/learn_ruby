#write your code here
def echo (text)
  text
end

def shout (text)
  text.upcase
end

def repeat (text, a=2)
  result = text
  for i in 1...a
    result = result + " " + text
  end
  return result
end

def titleize (text)
  text = text.capitalize
  little_words = ['and', 'the', 'a', 'an', 'or', 'but', 'for', 'in', 'as', 'of', 'up', 'nor', 'on',
                  'at', 'to', 'by', 'over', 'with']
  arr = text.split(" ")
  result = Array.new

  arr.each do |a|
    if little_words.include?(a) == false
      a = a.capitalize
    end
    result.push(a)
  end
  return result.join(" ")
end

def start_of_word (text,a)
  result = text[0]
  for i in 1...a
    result = result + text[i]
  end
  return result
end

def first_word (text)
  result = text.split(" ")
  return result[0]
end
