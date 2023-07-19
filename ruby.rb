morse = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...';
morse2 = '..   -.. --- -. -   .-.. .. -.- .   -- --- .-. ... .';
morse_decoded = 'a box full of rubies';
    def decode_morse(string)
        alphabet_morse = ['.-', '-...', '-.-.', '-..', '.', '..-.', '--.', '....',  '..', '.---', '-.-',
        '.-..', '--', '-.', '---', '.--.', '--.-', '.-.', '...', '-', '..-', '...-', '.--', '-..-', '-.--', '--..'];
        alphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w' ,'x' ,'y', 'z']
        string += ' ';
        output = [];
        word = '';
        decoded_message = [];
        for i in 0..(string.length - 1) do
            if string[i] == '.' || string [i] == '-'
                word += string[i]
            end
            if string[i] == ' '
                output.push(word)
                word = '';
                i += 1
            end
        end
        for i in 0..(output.length - 1) do
            if output[i] == '' && output[i + 1] == '';
                output.delete_at(i);
            end 
        end
        for i in 0..(output.length - 1) do
            for j in 0..(alphabet_morse.length - 1) do
                if output[i] == alphabet_morse[j]
                    decoded_message.push(alphabet[j]);
                    j = alphabet_morse.length;
                end
            end
            if output[i] == ''
                decoded_message.push(' ');
            end
        end
        decoded_message.join('').upcase;
    end

output = decode_morse(morse);
puts output.inspect