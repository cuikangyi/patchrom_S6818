.class Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$22;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$22;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler$22;->this$0:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->afterBatteryDialog()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->access$600(Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;)V

    .line 629
    return-void
.end method
