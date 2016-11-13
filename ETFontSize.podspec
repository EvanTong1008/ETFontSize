
Pod::Spec.new do |s|

  s.name         = "ETFontSize"
  s.version      = "1.0.1"
  s.summary      = "ETFontSize set fontsize"

  s.description  = <<-DESC
    iOS开发中的UIFont的类别，可随设备不同而自动改变字体大小
                   DESC

  s.homepage     = "https://github.com/EvanTong1008/ETFontSize"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = { "EvanTong" => "tongyiwang@163.com" }

  s.platform     = :ios, "7.0"

  s.ios.deployment_target = "7.0"

  s.source       = { :git => "https://github.com/EvanTong1008/ETFontSize.git", :tag => "#{s.version}" }

  s.source_files  = "ETFontSize/ETFontSize/ETFontSize/*.{h,m}"

  s.requires_arc = true

end
