
Pod::Spec.new do |s|

  s.name         = "CommonIOSComponentManager"
  s.version      = "0.0.5"
  s.summary      = "CommonIOSComponentManager is used to manage basic components"
  s.description  = <<-DESC
                    CommonIOSComponentManager is used to manage basic components for iOS app
                   DESC

  s.homepage     = "https://github.com/zhandongwang/CommonIOSComponentManager"
  s.license      = "MIT"
  s.author             = { "fengli" => "fengli@2dfire.com" }
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/zhandongwang/CommonIOSComponentManager.git", :tag => s.version.to_s }
  s.source_files  = "Pod/Classes/**/*.{h,m}"

  s.requires_arc = true

end
