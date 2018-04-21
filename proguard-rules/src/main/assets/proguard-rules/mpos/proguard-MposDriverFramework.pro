-include proguard-devlibs.pro

#---------- MposDriverFramework ----------
#模型
-keep class **.vo.** { *; }
-keep class **.model.** { *; }

-keep class com.hope.paysdk.framework.mposdriver.model.** {*;}
-keep class com.hope.paysdk.framework.mposdriver.devapi.DevApiEnum$** {*;}
-keep interface com.hope.paysdk.framework.mposdriver.devapi.DevApiFactory {*;}
-keep class com.hope.paysdk.framework.mposdriver.devapi.DevApi {
    public com.hope.paysdk.framework.mposdriver.model.DeviceModel getDeviceModel();
    public abstract void disconnectDev();
}
-keep class com.hope.paysdk.framework.mposdriver.devapi.*.**DevApi {
    public void setBtDevScanViewHolder(com.hope.paysdk.framework.mposdriver.devapi.bluetooth.controller.IBtDevScanViewHolder);
}
-keep interface com.hope.paysdk.framework.mposdriver.devapi.bluetooth.controller.IBtDevScanViewHolder {
    void setBtDevScanController(com.hope.paysdk.framework.mposdriver.devapi.bluetooth.controller.IBtDevScanController);
}
-keep interface com.hope.paysdk.framework.mposdriver.devapi.bluetooth.controller.IBtDevScanController
-keep class com.hope.paysdk.framework.mposdriver.handler.DevApiUiHandler {*;}
-keep class com.hope.paysdk.framework.mposdriver.handler.DevApiFlowHandler {*;}
-keep class com.hope.paysdk.framework.mposdriver.posflow.FlowEnum$EnumAnim {*;}
-keep class com.hope.paysdk.framework.mposdriver.posflow.PosFlow {*;}
-keep class com.hope.paysdk.framework.mposdriver.posflow.impl.** {*;}
-keep class com.hope.paysdk.framework.mposdriver.posflow.AttachParam {*;}
-keep class com.hope.paysdk.framework.mposdriver.posflow.FlowEnum$EnumFlowStep {*;}
-keep class com.hope.paysdk.framework.mposdriver.posflow.callback.** {*;}
-keep class com.hope.paysdk.framework.mposdriver.widget.btscandialog.BtDevScanDialog {
    public <init>(android.content.Context, com.hope.paysdk.framework.mposdriver.model.DeviceModel);
}
-keep class com.hope.paysdk.framework.mposdriver.MposDriverService {
    public <init>(List<com.hope.paysdk.framework.mposdriver.model.DeviceModel>);
    public int getDeviceModelSize();
    public com.hope.paysdk.framework.mposdriver.model.DeviceModel getDeviceModel(int);
    public com.hope.paysdk.framework.mposdriver.devapi.DevApiFactory getDevApiFactory();
}
#各设备驱动
-keep class com.hope.paysdk.framework.mposdriver.bbpos.**
-keep class com.hope.paysdk.framework.mposdriver.dinghe.**
-keep class com.hope.paysdk.framework.mposdriver.jinhonglin.**
-keep class com.hope.paysdk.framework.mposdriver.longxin.**
-keep class com.hope.paysdk.framework.mposdriver.tianyu.**
-keep class com.hope.paysdk.framework.mposdriver.huiertong.**
-keep class com.hope.paysdk.framework.mposdriver.daqu.**