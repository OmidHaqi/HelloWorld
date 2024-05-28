import 'dart:io';

void main() {
  List<String> lowerCaseAlphabet = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
  List<String> upperCaseAlphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'];
  
  String encryptedMessage = "Khoor, zruog!";

  List<String> decryptedMessage = [];

  int waitTimeMillis = 1000;

  int index = 0;

  while (index < encryptedMessage.length) {
    String currentChar = encryptedMessage[index];

    if (lowerCaseAlphabet.contains(currentChar)) {
      int charIndex = lowerCaseAlphabet.indexOf(currentChar);
      int decryptedIndex = (charIndex - 3) % lowerCaseAlphabet.length;
      if (decryptedIndex < 0) {
        decryptedIndex += lowerCaseAlphabet.length;
      }
      decryptedMessage.add(lowerCaseAlphabet[decryptedIndex]);
    }
    else if (upperCaseAlphabet.contains(currentChar)) {
      int charIndex = upperCaseAlphabet.indexOf(currentChar);
      int decryptedIndex = (charIndex - 3) % upperCaseAlphabet.length;
      if (decryptedIndex < 0) {
        decryptedIndex += upperCaseAlphabet.length;
      }
      decryptedMessage.add(upperCaseAlphabet[decryptedIndex]);
    }
    else {
      decryptedMessage.add(currentChar);
    }

    sleep(Duration(milliseconds: waitTimeMillis));
    
    stdout.write('\n${decryptedMessage.join('')}');
    
    index++;
  }


  String result = decryptedMessage.join('');


  print('\n\nFinal Decrypted Message: $result');
}
