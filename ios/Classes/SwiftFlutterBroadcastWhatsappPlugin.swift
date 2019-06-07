import Flutter
import UIKit

public class SwiftFlutterBroadcastWhatsappPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_broadcast_whatsapp", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterBroadcastWhatsappPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
   if(call.method == "getPlatformVersion"){
     result("iOS " + UIDevice.current.systemVersion)
    }else if(call.method == "sendBroadcastMessage"){

         DispatchQueue.main.async{

                     guard let args = call.arguments else {
                       return
                     }
                     if let myArgs = args as? [String: Any],
                        let message = myArgs["message"] as? String {
                       //result("Params received on iOS = \(someInfo1), \(someInfo2)")

               let whatsAppUrl = NSURL(string: "https://wa.me/" + "?text=" + message.trimmingCharacters(in: .whitespaces))
               if UIApplication.shared.canOpenURL(whatsAppUrl as! URL) {
                     UIApplication.shared.openURL(whatsAppUrl as! URL)
               }else {
                       print("Install Whatsapp")
               }
           }
         }
       }
  }
}
