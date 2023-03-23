@_exported import HeapIOSAutocaptureImplementation
import HeapSwiftCore

extension Heap {
    
    public class iOSAutocaptureSource {
        
        public static func register(isDefault: Bool = false) {
            __HeapIOSAutocaptureSource.register(coreSdk: Heap.shared, isDefault: isDefault)
        }
    }
}
