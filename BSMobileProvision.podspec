Pod::Spec.new do |s|
  s.name         = "BSMobileProvision"
  s.version      = "0.0.1"
  s.summary      = "Detecting dev, release, ad hoc, app store, or enterprise builds at runtime."
  s.description  = "A category for parsing your iOS app's embedded.mobileprovision at runtime. Use it to, among other things, determine at runtime whether your app is being distributed as dev, release, ad hoc, app store, or enterprise."
  s.homepage     = "https://github.com/appswithus/BSMobileProvision"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = 'The Blindsight Corporation'
  s.platform     = :ios
  s.source       = { :git => "https://github.com/appswithus/BSMobileProvision.git", :commit => "d4211e7a0f074be05bd83fa6150745aeb7ba94f1"}
  s.source_files  = 'UIApplication+BSMobileProvision.{h,m}'
  s.requires_arc = false
end
