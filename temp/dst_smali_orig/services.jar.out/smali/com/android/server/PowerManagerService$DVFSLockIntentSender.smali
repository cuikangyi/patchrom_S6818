.class Lcom/android/server/PowerManagerService$DVFSLockIntentSender;
.super Landroid/os/HandlerThread;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DVFSLockIntentSender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PowerManagerService;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "priority"

    .prologue
    iput-object p1, p0, Lcom/android/server/PowerManagerService$DVFSLockIntentSender;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0, p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/PowerManagerService$DVFSLockIntentSender;->this$0:Lcom/android/server/PowerManagerService;

    new-instance v1, Lcom/android/server/PowerManagerService$DVFSLockIntentSender$1;

    invoke-direct {v1, p0}, Lcom/android/server/PowerManagerService$DVFSLockIntentSender$1;-><init>(Lcom/android/server/PowerManagerService$DVFSLockIntentSender;)V

    #setter for: Lcom/android/server/PowerManagerService;->mDVFSLockIntentSenderHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$11002(Lcom/android/server/PowerManagerService;Landroid/os/Handler;)Landroid/os/Handler;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$DVFSLockIntentSender;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mInitComplete:Z
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$7902(Lcom/android/server/PowerManagerService;Z)Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method