.class Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;
.super Ljava/lang/Object;
.source "CustomFrequencyManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrequencyRequest"
.end annotation


# instance fields
.field final binder:Landroid/os/IBinder;

.field final frequency:I

.field final pid:I

.field final pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/CustomFrequencyManagerService;

.field final type:I

.field final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/CustomFrequencyManagerService;IILandroid/os/IBinder;Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter "ty"
    .parameter "fq"
    .parameter "b"
    .parameter "pkg"
    .parameter "u"
    .parameter "p"

    .prologue
    iput-object p1, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/CustomFrequencyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->type:I

    iput p3, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->frequency:I

    iput-object p4, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->uid:I

    iput p7, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->pid:I

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p4, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/CustomFrequencyManagerService;

    #getter for: Lcom/android/server/CustomFrequencyManagerService;->mFreqReqList:Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;
    invoke-static {v0}, Lcom/android/server/CustomFrequencyManagerService;->access$100(Lcom/android/server/CustomFrequencyManagerService;)Lcom/android/server/CustomFrequencyManagerService$FrequencyRequestList;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/CustomFrequencyManagerService;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CustomFrequencyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CustomFrequencyManager:: binderDied. package = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/CustomFrequencyManagerService;

    iget-object v2, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/CustomFrequencyManagerService;->releaseGPU(Landroid/os/IBinder;Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit v1

    return-void

    :cond_2
    iget v0, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/CustomFrequencyManagerService;

    iget-object v2, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/CustomFrequencyManagerService;->releaseSysBus(Landroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :try_start_1
    iget v0, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->this$0:Lcom/android/server/CustomFrequencyManagerService;

    iget-object v2, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->binder:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/CustomFrequencyManagerService$FrequencyRequest;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/CustomFrequencyManagerService;->releaseCPUCore(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
