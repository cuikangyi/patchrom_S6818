.class Lcom/android/providers/media/MediaProvider$11;
.super Landroid/content/BroadcastReceiver;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;)V
    .locals 0

    .prologue
    .line 8387
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$11;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 8390
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 8392
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8393
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "received Intent.ACTION_LOCALE_CHANGED > set locale"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8396
    new-instance v1, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$11;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {v1, v2, p1}, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;-><init>(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;)V

    .line 8397
    .local v1, th:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 8398
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocaleChangeReceiver finished"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8400
    .end local v1           #th:Ljava/lang/Thread;
    :cond_0
    return-void
.end method
