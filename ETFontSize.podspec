

Pod::Spec.new do |s|

  s.name         = "ETFontSize"
  s.version      = “1.0.0”
  s.summary      = "ETFontSize set fontsize"

  s.description  = <<-DESC
                iOS开发中的UIFont的类别，可随设备变化而自动改变字体大小
                   DESC

  s.homepage     = "https://github.com/EvanTong1008/ETFontSize"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "EvanTong" => "tongyiwang@163.com" }

  s.platform     = :ios, "7.0"
  s.ios.deployment_target = "7.0"

  s.source       = { :git => "https://github.com/EvanTong1008/ETFontSize.git", :tag => "#{s.version}" }

  s.source_files  = "ETFontSize/ETFontSize/ETFontSize/*.{h,m}"


  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"

  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"

  s.requires_arc = true

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"

end
