.class Lcom/android/settings/wifi/mobileap/WifiApWarning$8;
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

.field final synthetic val$av:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWarning;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$8;->val$av:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$8;->val$av:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$8;->val$av:Landroid/app/Activity;

    invoke-static {p1, p2, v0}, Lcom/android/settings/guide/GuideFragment;->onApDisableClick(Landroid/content/DialogInterface;ILandroid/app/Activity;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWarning$8;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWarning;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 205
    return-void
.end method
