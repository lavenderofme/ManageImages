Pod::Spec.new do |s|
  s.name             = "XBLImages"
  s.version          = "1.0.0"
  s.summary          = "图片资源"
  s.description      = <<-DESC
                        图片资源
                       DESC
  s.homepage         = "http://www.iddev.cn"
  s.license          = 'XLS'
  s.author           = { "gupeng" => "peng.gu@owitho.com" }
  s.source           = { :git => "http://www.iddev.cn", :tag => s.version.to_s }
  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source_files = '*.{h,m}'
end
