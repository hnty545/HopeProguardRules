#---------- httplegacy ----------
#org.apache.http.legacy
-dontwarn android.net.compatibility.**  
-keep class android.net.compatibility.**{*;}  
-dontwarn android.net.http.**  
-keep class android.net.http.**{*;}  
-dontwarn com.android.internal.http.multipart.**  
-keep class com.android.internal.http.multipart.**{*;}  
-dontwarn org.apache.commons.**  
-keep class org.apache.commons.**{*;}  
-dontwarn org.apache.http.**  
-keep class org.apache.http.**{*;} 