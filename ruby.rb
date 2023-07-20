def morse_to_array(string)
  string += ' '
  output = []
  word = ''
  string.each_char do |char|
    if ['.', '-'].include?(char)
      word += char
    elsif char == ' '
      output.push(word)
      word = ''
    end
  end
  output
end

def decode_morse(string)
  alphabet_morse = ['.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....', '..', '.---', '-.-',
                    '.-..', '--', '-.', '---', '.--.', '--.-', '.-.', '...', '-', '..-', '...-',
                    '.--', '-..-', '-.--', '--..']
  alphabet = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
  output = morse_to_array(string)
  decoded_message = []
  output.each_with_index do |_, i|
    output.delete_at(i) if output[i] == '' && output[i + 1] == ''
  end
  output.each do |output_char|
    if output_char.empty?
      decoded_message.push(' ')
    elsif alphabet_morse.include?(output_char)
      decoded_message.push(alphabet[alphabet_morse.index(output_char)])
    end
  end
  decoded_message.join.upcase
end
morse = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decode = decode_morse(morse)
puts decode.inspect
