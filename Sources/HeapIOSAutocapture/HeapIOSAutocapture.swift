@_exported import HeapIOSAutocaptureImplementation
import HeapSwiftCore

extension Heap {
    
    public class iOSAutocaptureSource {
        
        public static func register(isDefault: Bool = false) {
            __HeapIOSAutocaptureSource.register(coreSdk: Heap.shared, isDefault: isDefault)
        }
    }
}

@objc
public class HeapIOSAutocapture: NSObject {

    @objc(registerAsDefault:)
    public static func register(isDefault: Bool = false) {
        Heap.iOSAutocaptureSource.register(isDefault: isDefault)
    }
}
