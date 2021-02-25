Pod::Spec.new do |s|

  s.name         = "MultiCastDelegate"
  s.version      = "1.2"
  s.summary      = "Multicast Delegate pattern. It also prevents from having strong reference cycles (memory leaks). WeakWrapper handles this."
  s.homepage     = "https://github.com/lintocj/MulticastDelegate"
  s.license      = "MIT"
  s.author       = { "Linto Jacob" => "lintojacob2009@gmail.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/lintocj/MulticastDelegate.git", :tag => "1.2" }
  s.source_files = "MulticastDelegate/**/*.swift"
  s.swift_version = "5.0"
  s.frameworks = "UIKit"

end

