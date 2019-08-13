require 'json'
# 从 package.json 中引入版本
pjson = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name         = "react-native-template"
  s.version      = pjson["version"]
  s.license      = "MIT"
  s.homepage     = "https://github.com/shefenqi/react-native-template"
  s.authors      = "shefenqi"
  s.summary      = "A React Native module that use _____"
  s.source       = { :git => "https://github.com/shefenqi/react-native-template" }

  # 官方依赖
  # *.framework
  s.frameworks = "CFNetwork", "SystemConfiguration", "Security", "QuartzCore", "CoreTelephony", "CoreMotion", "CoreLocation"
  # *.tbd, 去掉前面的 lib 前缀（例如 libz -> z）
  s.libraries =  "c++","z","sqlite3.0"

  # 本地依赖
  # 执行源文件（一般是你自己实现的 .h 和 .m 文件）
  s.source_files  = "ios/Template/*.{h,m}"
  # 外部引入的 framework
  s.vendored_frameworks = "ios/lib/*.framework"
  # 外部引入的 library
  # s.vendored_libraries =
  # 外部引入的资源
  s.resources  = "ios/resource/*.{jpg,bundle}"

  # target 相关配置
  s.pod_target_xcconfig = {
    'OTHER_LDFLAGS' => '-lObjC',
    'ENABLE_BITCODE' => 'NO'
  }

  s.platform     = :ios, "7.0"
  s.dependency 'React'
end

