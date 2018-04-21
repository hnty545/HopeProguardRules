#---------- ButterKnife ----------
-dontwarn butterknife.internal.**
# Prevent obfuscation of types which use ButterKnife annotations since the simple name
# is used to reflectively look up the generated ViewBinder.
-keep class butterknife.** { *; }
-keepclasseswithmembernames class * { @butterknife.* <fields>;}
-keepclasseswithmembernames class * { @butterknife.* <methods>;}
# Retain generated class which implement ViewBinder.
-keep class **$$ViewBinder { *; }
-keep public class * implements butterknife.internal.ViewBinder { public <init>(); }