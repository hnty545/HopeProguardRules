#---------- xUtils ----------
-dontwarn com.lidroid.xutils.**  
-keep class com.lidroid.xutils.** { *; }   
-keep public class * extends com.lidroid.xutils.**    
-keepattributes Signature  
-keepattributes *Annotation*  
-keep public interface com.lidroid.xutils.** {*;}  
-keepclasseswithmembers class com.jph.android.entity.** {  
    <fields>;  
    <methods>;  
}  