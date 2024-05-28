# Caesar Cipher

The Caesar Cipher is one of the simplest and most widely known encryption techniques. It is a type of substitution cipher in which each letter in the plaintext is replaced by a letter a fixed number of positions down the alphabet. The method is named after Julius Caesar, who used it in his private correspondence.

## How It Works

### Encryption

To encrypt a message, each letter in the plaintext is shifted a certain number of places down the alphabet. For example, with a shift of 3:

- `A` becomes `D`
- `B` becomes `E`
- `C` becomes `F`
- ...
- `X` becomes `A`
- `Y` becomes `B`
- `Z` becomes `C`

Non-alphabetic characters are not changed.

### Decryption

Decryption is performed by shifting letters in the opposite direction. With a shift of 3, for example:

- `D` becomes `A`
- `E` becomes `B`
- `F` becomes `C`
- ...
- `A` becomes `X`
- `B` becomes `Y`
- `C` becomes `Z`

Non-alphabetic characters remain unchanged.

## Example

Let's take the message "Hello, World!" and encrypt it using a shift of 3.

### Encryption

Original: `Hello, World!`

1. `H` shifts to `K`
2. `e` shifts to `h`
3. `l` shifts to `o`
4. `l` shifts to `o`
5. `o` shifts to `r`
6. `,` remains `,`
7. (space) remains (space)
8. `W` shifts to `Z`
9. `o` shifts to `r`
10. `r` shifts to `u`
11. `l` shifts to `o`
12. `d` shifts to `g`
13. `!` remains `!`

Encrypted: `Khoor, Zruog!`

### Decryption

To decrypt the message "Khoor, Zruog!" with a shift of 3:

1. `K` shifts to `H`
2. `h` shifts to `e`
3. `o` shifts to `l`
4. `o` shifts to `l`
5. `r` shifts to `o`
6. `,` remains `,`
7. (space) remains (space)
8. `Z` shifts to `W`
9. `r` shifts to `o`
10. `u` shifts to `r`
11. `o` shifts to `l`
12. `g` shifts to `d`
13. `!` remains `!`

Decrypted: `Hello, World!`

## Usage

The Caesar Cipher can be implemented in various programming languages. The key aspect is to ensure that the shifting logic correctly handles both encryption and decryption, and that non-alphabetic characters are preserved in their original form.
