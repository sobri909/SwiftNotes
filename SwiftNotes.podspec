Pod::Spec.new do |s|
  s.name         = "SwiftNotes"
  s.version      = "1.0.0"
  s.summary      = "A super simple wrapper around NotificationCenter"
  s.homepage     = "https://github.com/sobri909/SwiftNotes"
  s.author       = { "Matt Greenfield" => "matt@bigpaua.com" }
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.source       = { :git => 'https://github.com/sobri909/SwiftNotes.git', :tag => '1.0.0' }
  s.source_files = 'SwiftNotes/*.swift'
  s.ios.deployment_target = '10.0'
end
