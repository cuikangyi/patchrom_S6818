.class Lcom/android/settings/guide/WifiSettingsGuider$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiSettingsGuider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/guide/WifiSettingsGuider;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/guide/WifiSettingsGuider;


# direct methods
.method constructor <init>(Lcom/android/settings/guide/WifiSettingsGuider;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings/guide/WifiSettingsGuider$1;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/guide/WifiSettingsGuider$1;->this$0:Lcom/android/settings/guide/WifiSettingsGuider;

    invoke-virtual {v0, p2}, Lcom/android/settings/guide/WifiSettingsGuider;->handleEvent(Landroid/content/Intent;)V

    .line 118
    return-void
.end method
