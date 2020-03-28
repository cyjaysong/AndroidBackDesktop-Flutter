#import "AndroidBackDesktopPlugin.h"
#if __has_include(<android_back_desktop/android_back_desktop-Swift.h>)
#import <android_back_desktop/android_back_desktop-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "android_back_desktop-Swift.h"
#endif

@implementation AndroidBackDesktopPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAndroidBackDesktopPlugin registerWithRegistrar:registrar];
}
@end
