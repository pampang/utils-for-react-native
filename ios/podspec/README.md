# 各项常用配置的使用方法

```ruby
# 官方依赖部分
# *.framework
s.frameworks = "CFNetwork", "SystemConfiguration", "Security", "QuartzCore", "CoreTelephony", "CoreMotion", "CoreLocation"
# *.tbd, 去掉前面的 lib 前缀（例如 libz -> z）
s.libraries =  "c++","z","sqlite3.0"

# 本地依赖部分
# 执行源文件（一般是你自己实现的 .h 和 .m 文件）
s.source_files  = "ios/Template/*.{h,m}"
# 外部引入的 framework
s.vendored_frameworks = "ios/lib/*.framework"
# 外部引入的 library
# s.vendored_libraries =
# 外部引入的资源
s.resources  = "ios/resource/*.{jpg,bundle}"
```

# 使用方法

1. 复制 template.podspec 到 react-native 第三方插件库的根目录下，重新命名为 react-native-xxx;
1. 调整 podspec 文件内部代码，包括 source、依赖位置等；
1. 在主项目的 ios/Podfile 中，引入对应的 podspec，具体例子如下：

```
pod 'react-native-template', :path => '../node_modules/react-native-template'
```

1. 在主项目的 ios/ 下，运行 pod install 即可完成 ios 模块的引入。


# 其他资料

Podspec 参考文档：https://guides.cocoapods.org/syntax/podspec.html