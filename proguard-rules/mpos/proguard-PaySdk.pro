#paysdk
-keep class **.vo.** { *; }
-keep class **.beans.** { *; }
-keep class **.model.** { *; }
-keep class **.entity.** { *; }

-keep class com.hope.paysdk.core.UiEnvService {
    public static com.hope.paysdk.core.SelectDeviceTypeData SelectDeviceTypeData;
}
-keep class com.hope.paysdk.core.SelectDeviceTypeData {
    public <init>(java.util.Map<java.lang.String, java.util.List<com.hope.paysdk.framework.mposdriver.model.DeviceModel>>);
    public <init>(java.util.List<com.hope.paysdk.framework.mposdriver.model.DeviceModel>);
}
-keep class com.hope.paysdk.framework.BusiOrderInfo {*;}
-keep class com.hope.paysdk.framework.IndustryInfo {*;}
-keep class com.hope.paysdk.framework.EnumClass$RET_CODE {*;}
-keep class com.hope.paysdk.framework.EnumClass$TYPE_GETFUND {*;}
-keep class com.hope.paysdk.framework.EnumClass$TYPE_ARRIVE {*;}

-keep class com.hope.paysdk.PaySdkEnvionment {
    public boolean isPaySdkLocked();
    public static com.hope.paysdk.PaySdkListener getPaySdkListener();
    public static void setPaySdkListener(com.hope.paysdk.PaySdkListener);
    public static void initSdk(android.app.Application, java.lang.String, java.lang.String, java.lang.String, int, int, java.lang.String, com.hope.paysdk.framework.mposdriver.MposDriverService, com.hope.paysdk.PaySdkListener, boolean);
    public static void destorySdk();
    public static void startPay(android.app.Activity, java.lang.String, java.lang.String, com.hope.paysdk.framework.EnumClass$TYPE_GETFUND, com.hope.paysdk.framework.IndustryInfo, java.lang.String, java.lang.String, java.lang.String);
    public static void interruptPay(android.app.Activity);
    public static com.hope.paysdk.NetInterface getNetInterfaceController();
}
-keep interface com.hope.paysdk.PaySdkListener {
	<methods>;
}
-keep class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
}
-keep class com.hope.paysdk.NetInterface {*;}
-keep class com.hope.paysdk.ui.device.DeviceActiveActivity$** {*;}
-keep class com.hope.paysdk.ui.payflow.SwipePayActivity$** {*;}
-keep class com.hope.paysdk.ui.payflow.PayResultActivity$** {*;}