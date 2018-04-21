#---------- bbh ----------
-keep class com.just.agentweb.** {*;}
-dontwarn com.just.agentweb..**
-keepclassmembers class com.just.lib

#udcredit
-keep class com.face.** {*;}
-keep class cn.com.bsfit.** {*;}
-keep class com.android.snetjob.** {*;}
-keep class com.udcredit.** {*;}
-keep class com.authreal.** {*;}
-keep class com.hotvision.** {*;}
-keep class com.google.gson.stream.** {*;}

-keep class java.awt.** {*;}
-dontwarn com.sun.jna.**
-keep class com.sun.jna.** {*;}

-keep public class * implements java.io.Serializable {*;}
-keepclasseswithmembernames class * {
    native <methods>;
}

-keepattributes Signature
-keepattributes *Annotation*
-keep class sun.misc.Unsafe {*;}
-keepclassmembers class * implements java.io.Serializable{
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}