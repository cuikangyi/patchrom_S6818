.class Lcom/android/settings/wifi/WifiTimer$3;
.super Ljava/lang/Object;
.source "WifiTimer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiTimer;->setActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiTimer;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiTimer;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/settings/wifi/WifiTimer$3;->this$0:Lcom/android/settings/wifi/WifiTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$3;->this$0:Lcom/android/settings/wifi/WifiTimer;

    #calls: Lcom/android/settings/wifi/WifiTimer;->saveChanges()Z
    invoke-static {v0}, Lcom/android/settings/wifi/WifiTimer;->access$200(Lcom/android/settings/wifi/WifiTimer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$3;->this$0:Lcom/android/settings/wifi/WifiTimer;

    const/16 v1, 0x12d

    #calls: Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiTimer;->access$300(Lcom/android/settings/wifi/WifiTimer;I)V

    .line 226
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$3;->this$0:Lcom/android/settings/wifi/WifiTimer;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
