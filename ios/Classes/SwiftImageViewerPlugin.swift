import Flutter
import UIKit

public class SwiftImageViewerPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "image_viewer", binaryMessenger: registrar.messenger())
    let instance = SwiftImageViewerPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
    if call.method == "showImageViewer" {
        let mapArguments = call.arguments as! [String: Any]
        let list = mapArguments["list"] as! Array<String>
        let initialIndex = mapArguments["position"] as! Int
        print(initialIndex)
        
        let images = list.map { (item) -> LightboxImage in
            return LightboxImage(imageURL: URL(string: item)!)
        }
        LightboxConfig.PageIndicator.enabled = true
        
        let controller = LightboxController(images: images, startIndex: initialIndex)
        
        
        controller.modalPresentationStyle = .fullScreen
        UIApplication.shared.delegate?.window??.rootViewController?.present(controller, animated: true, completion: nil)

    }
  }
}
