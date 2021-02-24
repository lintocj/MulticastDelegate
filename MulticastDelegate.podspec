Pod::Spec.new do |s|

  s.name         = "MulticastDelegate"
  s.version      = "1"
  s.summary      = "Multicast Delegate pattern. It also prevents from having strong reference cycles (memory leaks). WeakWrapper handles this."
  s.homepage     = "https://github.com/lintocj/LJNetworkLayer"
  s.license      = "MIT"
  s.author       = { "Linto Jacob" => "lintojacob2009@gmail.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/lintocj/LJNetworkLayer.git", :tag => "1" }
  s.source_files = "LJNetworkLayer/**/*.swift"
  s.swift_version = "5.0"
  s.frameworks = "UIKit"

end

