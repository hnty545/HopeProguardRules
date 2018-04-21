#---------- picasso ----------
-keepattributes SourceFile,LineNumberTable
-dontwarn com.parse.**
-keep class com.parse.*{ *; }
-dontwarn com.squareup.picasso.**
-keep class com.squareup.picasso.* {*;}
-keepclasseswithmembernames class * { native <methods>; }