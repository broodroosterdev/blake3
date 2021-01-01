import 'dart:async';
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:isolate/ports.dart';

import 'ffi.dart' as native;

class Blake3 {
  static setup() {
    native.store_dart_post_cobject(NativeApi.postCObject);
    print("Blake3 Setup Done");
  }

  Future<String> hash(String input) {
    var urlPointer = Utf8.toUtf8(input);
    final completer = Completer<String>();
    final sendPort = singleCompletePort(completer);
    final res = native.hash(
      sendPort.nativePort,
      urlPointer,
    );
    if (res != 1) {
      _throwError();
    }
    return completer.future;
  }

  void _throwError() {
    final length = native.last_error_length();
    final Pointer<Utf8> message = allocate(count: length);
    native.error_message_utf8(message, length);
    final error = Utf8.fromUtf8(message);
    print(error);
    throw error;
  }
}
