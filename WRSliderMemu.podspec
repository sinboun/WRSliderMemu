Pod::Spec.new do |s|
  s.name     = 'WRSliderMemu'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'my coustom demo'
  s.homepage = 'https://github.com/TiltCitySong/WRSliderMemu'
  s.author   = { 'TiltCitySong' => '1505482941@qq.com' }

  s.source       = { :git => "https://github.com/TiltCitySong/WRSliderMemu.git", :tag => "0.0.1" }

  s.platform = :ios  

  s.platform     = :ios, "8.0"

  s.source_files  = "classs", "classs/*.{h,m,swift}"


  s.framework = 'UIKit'

  s.requires_arc = true  
end




