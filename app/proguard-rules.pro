在此添加项目特定的 ProGuard 规则。

默认情况下，此文件中的标志会附加到以下文件中指定的标志：

/Users/jeff/Development/android-sdk/tools/proguard/proguard-android.txt

您可以通过修改 build.gradle 中的 proguardFiles 指令来调整包含路径和顺序。



更多详情，请参见：

http://developer.android.com/guide/developing/tools/proguard.html

在此添加任何项目特定的 keep 选项：

如果您的项目使用了带 JS 的 WebView，请取消注释以下内容，

并为 JavaScript 接口类指定完整的限定类名：

#-keepclassmembers class fqcn.of.javascript.interface.for.webview {

public *;

#}

任务 :app:minifyFlavorAtestReleaseWithR8 执行失败

错误：运行 R8 时检测到缺失的类。请添加缺失的类，或应用在 /home/runner/work/markor/markor/app/build/outputs/mapping/flavorAtestRelease/missing_rules.txt 中生成的额外 keep 规则。

错误：R8：缺失类 java.awt.AlphaComposite（被以下上下文引用：java.awt.image.BufferedImage com.vladsch.flexmark.util.ImageUtils.makeRoundedCorner(java.awt.image.BufferedImage, int, int) 以及其他 1 个上下文）

-ignorewarnings