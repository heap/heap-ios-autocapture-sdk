@_exported import HeapIOSAutocaptureImplementation
import HeapSwiftCore

extension Heap {
    
    public class iOSAutocaptureSource {
        
        public static func register(isDefault: Bool = false) {
            __HeapIOSAutocaptureSource.register(coreSdk: Heap.shared, isDefault: isDefault)
        }
    }
    
    /*
    
    @objc(registerIOSAutocaptureSourceAsDefault:)
    public func __registerIOSAutocaptureSourceAsDefault(_ isDefault: Bool) {
        iOSAutocaptureSource.register(isDefault: isDefault)
    }
    */
}

/*

extension Heap {
    
    /// Track a custom event, providing a sender to help with pageview resolution.
    ///
    /// This method should be used in iPad apps where multiple view controllers may be active at
    /// same time and additional context is needed to identify which pageview the event originated
    /// from.
    ///
    /// ```
    /// @IBAction func submitTapped() {
    ///     [[Heap sharedInstance] track:@"form-submitted" properties:@{
    ///         @"coupon_code": couponCode,
    ///     } sender: self];
    /// }
    /// ```
    ///
    /// - Parameters:
    ///   - event: The event name.
    ///   - properties: Optional key-value pairs to associate with the event.
    ///   - sender: The view or view controller associated with the event.
    @objc
    public func track(_ event: String, properties: [String: HeapObjcPropertyValue], sender: Any?) {
        track(event, properties: properties.mapValues(\.heapValue), timestamp: Date(), sender: sender)
    }
    
    /// Track a custom event, providing a sender to help with pageview resolution.
    ///
    /// This method should be used in iPad apps where multiple view controllers may be active at
    /// same time and additional context is needed to identify which pageview the event originated
    /// from.
    ///
    /// ```
    /// @IBAction func submitTapped() {
    ///     [[Heap sharedInstance] track:@"form-submitted" sender: self];
    /// }
    /// ```
    ///
    /// - Parameters:
    ///   - event: The event name.
    ///   - sender: The view or view controller associated with the event.
    @objc
    public func track(_ event: String, sender: Any?) {
        track(event, properties: [:], timestamp: Date(), sender: sender)
    }
}

*/
