def decode_char(param)
  require 'set'
  dictionary = {}
  dictionary[' '] = ''
  dictionary['   '] = ' '
  dictionary['.-'] = 'A'
  dictionary['-.-.'] = 'C'
  dictionary['-..'] = 'D'
  dictionary['-...'] = 'B'
  dictionary['.'] = 'E'
  dictionary['..-.'] = 'F'
  dictionary['--.'] = 'G'
  dictionary['....'] = 'H'
  dictionary['..'] = 'I'
  dictionary['.---'] = 'J'
  dictionary['-.-'] = 'K'
  dictionary['.-..'] = 'L'
  dictionary['--'] = 'M'
  dictionary['-.'] = 'N'
  dictionary['---'] = 'O'
  dictionary['.--.'] = 'P'
  dictionary['--.-'] = 'Q'
  dictionary['.-.'] = 'R'
  dictionary['...'] = 'S'
  dictionary['-'] = 'T'
  dictionary['..-'] = 'U'
  dictionary['...-'] = 'V'
  dictionary['.--'] = 'W'
  dictionary['-..-'] = 'X'
  dictionary['-.--'] = 'Y'
  dictionary['--..'] = 'Z'
  dictionary['.----'] = '1'
  dictionary['..---'] = '2'
  dictionary['...--'] = '3'
  dictionary['....-'] = '4'
  dictionary['.....'] = '5'
  dictionary['-....'] = '6'
  dictionary['--...'] = '7'
  dictionary['---..'] = '8'
  dictionary['----.'] = '9'
  dictionary['-----'] = '0'
  dictionary[param]
end

def decode_word(param1)
  param = param1
  text = ''
  param.split.each { |letter| text << decode_char(letter) }
  text
end

def decode(param2)
  param1 = param2
  text = ''
  param1.split('   ').each { |word| text << "#{decode_word(word)} " }
  text
end

puts decode('-- -.--   -. .- -- .')

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
