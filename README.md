# blake3

This package implements the BLAKE3 hashing algorithm by using the blake3 rust crate and dart:ffi.

You can find the blake3 implementation [here](https://github.com/BLAKE3-team/BLAKE3)

## Usage
```
//Create an instance
var blake3 = Blake3();
//Initialize the bindings
Blake3.setup();
//Hash the input
String hash = await blake3.hash('someInputString');
// returns b96bdd360b21c0482f75bbcecbed15edd39aa54b3bdaf7729f70b8ccf3ade1da
```