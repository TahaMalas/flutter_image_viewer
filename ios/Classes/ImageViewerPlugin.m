#import "ImageViewerPlugin.h"
#if __has_include(<image_viewer/image_viewer-Swift.h>)
#import <image_viewer/image_viewer-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "image_viewer-Swift.h"
#endif

@implementation ImageViewerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftImageViewerPlugin registerWithRegistrar:registrar];
}
@end
