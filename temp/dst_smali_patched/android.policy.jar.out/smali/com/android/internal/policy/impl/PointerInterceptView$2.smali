.class Lcom/android/internal/policy/impl/PointerInterceptView$2;
.super Landroid/content/BroadcastReceiver;
.source "PointerInterceptView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PointerInterceptView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PointerInterceptView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PointerInterceptView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PointerInterceptView"

    const-string v2, "Receive COLLAPSED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$600(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/PointerInterceptView;->sendCallbackFunc(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #setter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$302(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PointerInterceptView"

    const-string v2, "Receive EXPANDED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$302(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$600(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
