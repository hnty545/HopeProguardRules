#---------- Main ----------
#指定代码的压缩级别，在0~7之间，默认为5，一般不需要更改
-optimizationpasses 5
#包明不混合大小写，混淆后的类名为小写
-dontusemixedcaseclassnames
#指定不去忽略非公共的库的类
-dontskipnonpubliclibraryclasses
#指定不去忽略非公共的库的类的成员
-dontskipnonpubliclibraryclassmembers
#不做预校验，preverify是proguard的4个步骤之一，android不需要做预校验，去除这一步可以加快混淆速度
-dontpreverify
#忽略所有警告
-ignorewarnings
#混淆时是否记录日志
-verbose
#不优化输入的类文件
#-dontoptimize
#指定混淆时采用的算法，后面的参数是一个过滤器
-optimizations !code/simplification/arithmetic,!code/simplification/cast,!field/*,!class/merging/*,!code/allocation/variable
#保护注解
-dontwarn android.annotation
-keepattributes *Annotation*
#保护异常
-keepattributes Exceptions
#保护反射
-keepattributes EnclosingMethod
#保护代码中的泛型不被混淆
-keepattributes Signature
#抛出异常时保留代码行号
-keepattributes SourceFile,LineNumberTable
#如果引用了v4或者v7包
-dontwarn android.support.**
-keep class android.support.** {*;}
#保持 native 方法不被混淆
-keepclasseswithmembernames class * { native <methods>; }
#保持自定义控件类不被混淆
-keep public class * extends android.app.Fragment
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class com.android.vending.licensing.ILicensingService
-keep public class * extends android.view.View
-keep public class * extends android.support.**
#WebView与JavascriptInterface
-keep public class android.webkit.WebView {*;}
-keep public class android.webkit.WebViewClient {*;}
-keepattributes *JavascriptInterface*
-keepclassmembers class **$JavaScriptObject { public *; }
#保持 Parcelable 不被混淆
-keep class * implements android.os.Parcelable { public static final android.os.Parcelable$Creator *; }
#保持 Serializable 不被混淆
-keepclassmembers class * implements java.io.Serializable { <fields>; }
#保持枚举 enum 类不被混淆
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
#不混淆资源类
-keepclassmembers class **.R$* { public static <fields>; }
#屏蔽日志
#-assumenosideeffects class android.util.Log {
#public static boolean isLoggable(Java.lang.String, int);
#public static int v(...);
#public static int i(...);
#public static int w(...);
#public static int d(...);
#public static int e(...);
#}