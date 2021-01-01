#import "Blake3Plugin.h"
#if __has_include(<blake3/blake3-Swift.h>)
#import <blake3/blake3-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "blake3-Swift.h"
#endif

@implementation Blake3Plugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftBlake3Plugin registerWithRegistrar:registrar];
}
@end
