.class Landroid/media/AudioService$ScoClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mCreatorPid:I

.field private mStartcount:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter "cb"

    .prologue
    .line 2341
    iput-object p1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2342
    iput-object p2, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    .line 2343
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Landroid/media/AudioService$ScoClient;->mCreatorPid:I

    .line 2344
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 2345
    return-void
.end method

.method private requestScoState(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 2433
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->checkScoAudioState()V
    invoke-static {v0}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)V

    .line 2434
    invoke-virtual {p0}, Landroid/media/AudioService$ScoClient;->totalCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 2435
    const/16 v0, 0xc

    if-ne p1, v0, :cond_8

    .line 2438
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v1, 0x2

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;I)V

    .line 2441
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/media/AudioService;->access$1200(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 2442
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/media/AudioService;->access$1200(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/media/AudioService;->access$1200(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v0}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v0

    iget v2, p0, Landroid/media/AudioService$ScoClient;->mCreatorPid:I

    if-ne v0, v2, :cond_7

    :cond_0
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 2446
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v0

    if-nez v0, :cond_6

    .line 2447
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2448
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2450
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x3

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;I)I

    .line 2465
    :cond_2
    :goto_0
    monitor-exit v1

    .line 2486
    :cond_3
    :goto_1
    return-void

    .line 2452
    :cond_4
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;I)V

    goto :goto_0

    .line 2465
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2455
    :cond_5
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v0}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2456
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;I)I

    goto :goto_0

    .line 2459
    :cond_6
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x3

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;I)I

    .line 2460
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x1

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;I)V

    goto :goto_0

    .line 2463
    :cond_7
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v2, 0x0

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2466
    :cond_8
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v0

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 2469
    :cond_9
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)I

    move-result v0

    if-ne v0, v1, :cond_b

    .line 2470
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v0}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2471
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v1}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2473
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;I)I

    .line 2474
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;I)V

    goto :goto_1

    .line 2477
    :cond_a
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v0}, Landroid/media/AudioService;->access$2700(Landroid/media/AudioService;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2478
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0, v4}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;I)I

    goto/16 :goto_1

    .line 2481
    :cond_b
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2402(Landroid/media/AudioService;I)I

    .line 2482
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v0, v2}, Landroid/media/AudioService;->access$2300(Landroid/media/AudioService;I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 2348
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 2349
    :try_start_0
    const-string v1, "AudioService"

    const-string v3, "SCO client died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2351
    .local v0, index:I
    if-gez v0, :cond_0

    .line 2352
    const-string v1, "AudioService"

    const-string/jumbo v3, "unregistered SCO client died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    :goto_0
    monitor-exit v2

    .line 2358
    return-void

    .line 2354
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 2355
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2357
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearCount(Z)V
    .locals 5
    .parameter "stopSco"

    .prologue
    .line 2394
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 2395
    :try_start_0
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2397
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2402
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 2403
    if-eqz p1, :cond_1

    .line 2404
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Landroid/media/AudioService$ScoClient;->requestScoState(I)V

    .line 2406
    :cond_1
    monitor-exit v2

    .line 2407
    return-void

    .line 2398
    :catch_0
    move-exception v0

    .line 2399
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCount() mStartcount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != 0 but not registered to binder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2406
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public decCount()V
    .locals 4

    .prologue
    .line 2376
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 2377
    :try_start_0
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    if-nez v1, :cond_0

    .line 2378
    const-string v1, "AudioService"

    const-string v3, "ScoClient.decCount() already 0"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    :goto_0
    monitor-exit v2

    .line 2391
    return-void

    .line 2380
    :cond_0
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 2381
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 2383
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2388
    :cond_1
    :goto_1
    const/16 v1, 0xa

    :try_start_2
    invoke-direct {p0, v1}, Landroid/media/AudioService$ScoClient;->requestScoState(I)V

    goto :goto_0

    .line 2390
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2384
    :catch_0
    move-exception v0

    .line 2385
    .local v0, e:Ljava/util/NoSuchElementException;
    :try_start_3
    const-string v1, "AudioService"

    const-string v3, "decCount() going to 0 but not registered to binder"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 2414
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2410
    iget v0, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 2418
    iget v0, p0, Landroid/media/AudioService$ScoClient;->mCreatorPid:I

    return v0
.end method

.method public incCount()V
    .locals 5

    .prologue
    .line 2361
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 2362
    const/16 v1, 0xc

    :try_start_0
    invoke-direct {p0, v1}, Landroid/media/AudioService$ScoClient;->requestScoState(I)V

    .line 2363
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2365
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2371
    :cond_0
    :goto_0
    :try_start_2
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 2372
    monitor-exit v2

    .line 2373
    return-void

    .line 2366
    :catch_0
    move-exception v0

    .line 2368
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScoClient  incCount() could not link to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " binder death"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2372
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public totalCount()I
    .locals 5

    .prologue
    .line 2422
    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 2423
    const/4 v0, 0x0

    .line 2424
    .local v0, count:I
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2425
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2426
    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$ScoClient;

    invoke-virtual {v3}, Landroid/media/AudioService$ScoClient;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 2425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2428
    :cond_0
    monitor-exit v4

    return v0

    .line 2429
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method