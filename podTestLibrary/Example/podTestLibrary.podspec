
Pod::Spec.new do |s|
  s.name         = "podTestLibrary"
  s.version      = "0.1.0"
  s.summary      = "测试组件"
  s.description  = <<-DESC
                      Testing Private Pods.
                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                   DESC

  s.homepage     = "https://github.com/iOSiWork/ComponentMainProject"
  s.license      = "MIT"
  s.author             = { "iOSiWork" => "iOSiWork@163.com" }
  s.source       = { :git => "https://github.com/iOSiWork/ComponentMainProject.git", :tag => "0.1.0" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.platform = :ios,'8.0'
  s.requires_arc = true
  s.resource_bundles = {
    'podTestLibrary' => ['Pod/Assets/*.png']
  }                                       #资源文件地址
  s.public_header_files = 'Pod/Classes/**/*.h'   #公开头文件地址
  s.frameworks = 'UIKit'                  #所需的framework，多个用逗号隔开
  s.dependency 'AFNetworking', '~> 2.3'   #依赖关系，该项目所依赖的其他库，如果有多个需要填写多个s.dependency

  
end
