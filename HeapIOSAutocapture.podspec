Pod::Spec.new do |s|
  s.name = 'HeapIOSAutocapture'
  s.version = '0.2.1'
  s.license = { :type => 'MIT' }
  s.summary = 'HeapIOSAutocapture is an iOS autocapture library for UIKit-based apps.'
  s.homepage = 'https://heap.io'
  s.author = 'Heap Inc.'
  s.source = { :http => "https://cdn.heapanalytics.com/ios/heap-ios-autocapture-#{s.version}.zip", :type => 'zip' }

  s.requires_arc = true
  s.ios.deployment_target = '13.0'

  s.cocoapods_version = '>= 1.7.0'

  s.dependency 'HeapSwiftCore', '~> 0.2'

  s.source_files = 'Sources/HeapIOSAutocapture/**/*.swift'
  s.vendored_frameworks = 'HeapIOSAutocaptureImplementation.xcframework'

  s.swift_versions = ['5.0']
end
