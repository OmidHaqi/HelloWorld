#include <iostream>
#include <string>
#include <thread> 
#include <chrono> 

using namespace std;

char caesarCipher(char ch, int shift) {
    if (isalpha(ch)) {
        char offset = isupper(ch) ? 'A' : 'a';
        return (ch - offset + shift) % 26 + offset;
    }
    return ch;
}

string caesarCipher(const string& text, int shift) {
     string result = "";
    for (char ch : text) {
        cout << caesarCipher(ch, shift) <<  flush; 
         this_thread::sleep_for( chrono::seconds(1)); 
         cout << '\b'; 
        result += caesarCipher(ch, shift);
    }
    return result;
}

char caesarDecipher(char ch, int shift) {
    if (isalpha(ch)) {
        char offset = isupper(ch) ? 'A' : 'a';
        return (ch - offset - shift + 26) % 26 + offset; 
    }
    return ch;
}


 string caesarDecipher(const  string& text, int shift) {
     string result = "";
    for (char ch : text) {
         cout << caesarDecipher(ch, shift) <<  flush; 
         this_thread::sleep_for( chrono::seconds(1)); 
         cout << '\b';
        result += caesarDecipher(ch, shift);
    }
    return result;
}

int main() {
     string originalText = "hello World";
    int shift = 3;

  
     cout << "Encrypted Text: ";
     string encryptedText = caesarCipher(originalText, shift);
     cout <<  endl;

     cout << "Decrypted Text: ";
     string decryptedText = caesarDecipher(encryptedText, shift);
     cout <<  endl;

    return 0;
}
