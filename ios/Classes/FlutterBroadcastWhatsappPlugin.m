#import "FlutterBroadcastWhatsappPlugin.h"
#import <flutter_broadcast_whatsapp/flutter_broadcast_whatsapp-Swift.h>

@implementation FlutterBroadcastWhatsappPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterBroadcastWhatsappPlugin registerWithRegistrar:registrar];
}
@end
