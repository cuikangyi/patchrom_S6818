.class Lcom/android/settings/wifi/mobileap/WifiApWarning$6;
.super Ljava/lang/Object;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApWarning;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$200(Lcom/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 176
    .local v0, wm:Landroid/net/wifi/WifiManager;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    const/16 v2, 0x1f44

    #calls: Lcom/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$300(Lcom/android/settings/wifi/mobileap/WifiApWarning;I)V

    .line 177
    if-eqz v0, :cond_0

    .line 178
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$6;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    const/4 v2, 0x1

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApWarning;->setWifiApOffbyWifiEnabling:Z
    invoke-static {v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApWarning;->access$402(Lcom/android/settings/wifi/mobileap/WifiApWarning;Z)Z

    .line 180
    return-void
.end method
