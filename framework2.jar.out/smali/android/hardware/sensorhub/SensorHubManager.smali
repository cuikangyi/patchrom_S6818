.class public Landroid/hardware/sensorhub/SensorHubManager;
.super Ljava/lang/Object;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;,
        Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;,
        Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;
    }
.end annotation


# static fields
.field public static final CONTEXT_DELAY:I = 0x0

.field public static final GESTURE_SENSOR_DELAY:I = 0x1

.field private static final SENSORHUB_DISABLE:I = -0x1

.field private static final SENSORHUB_DISABLE_FOR_DELAY:I = -0x1

.field private static final SENSORHUB_ENABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SensorHubManager"

.field private static sFullSensorHubsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/sensorhub/SensorHub;",
            ">;"
        }
    .end annotation
.end field

.field static sHandleToSensorHub:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/sensorhub/SensorHub;",
            ">;"
        }
    .end annotation
.end field

.field static final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private static sPool:Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;

.field private static sQueue:I

.field private static sSensorHubListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/sensorhub/SensorHub;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sSensorHubModuleInitialized:Z

.field private static sSensorHubThread:Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;


# instance fields
.field mMainLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/sensorhub/SensorHubManager;->sSensorHubModuleInitialized:Z

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/sensorhub/SensorHubManager;->sFullSensorHubsList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/sensorhub/SensorHubManager;->sSensorHubListByType:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/sensorhub/SensorHubManager;->sHandleToSensorHub:Landroid/util/SparseArray;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 7
    .parameter "mainLooper"

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Landroid/hardware/sensorhub/SensorHubManager;->mMainLooper:Landroid/os/Looper;

    .line 294
    sget-object v4, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 295
    :try_start_0
    sget-boolean v3, Landroid/hardware/sensorhub/SensorHubManager;->sSensorHubModuleInitialized:Z

    if-nez v3, :cond_2

    .line 296
    const/4 v3, 0x1

    sput-boolean v3, Landroid/hardware/sensorhub/SensorHubManager;->sSensorHubModuleInitialized:Z

    .line 298
    invoke-static {}, Landroid/hardware/sensorhub/SensorHubManager;->nativeClassInit()V

    .line 300
    invoke-static {}, Landroid/hardware/sensorhub/SensorHubManager;->sensorhubs_module_init()I

    .line 301
    const-string v3, "SensorHubManager"

    const-string v5, "SensorHubManager: sensorhubs_module_init()"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-object v0, Landroid/hardware/sensorhub/SensorHubManager;->sFullSensorHubsList:Ljava/util/ArrayList;

    .line 303
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/sensorhub/SensorHub;>;"
    const/4 v1, 0x0

    .line 305
    .local v1, i:I
    :cond_0
    new-instance v2, Landroid/hardware/sensorhub/SensorHub;

    invoke-direct {v2}, Landroid/hardware/sensorhub/SensorHub;-><init>()V

    .line 306
    .local v2, sensorhub:Landroid/hardware/sensorhub/SensorHub;
    invoke-static {v2, v1}, Landroid/hardware/sensorhub/SensorHubManager;->sensorhubs_get_next_module(Landroid/hardware/sensorhub/SensorHub;I)I

    move-result v1

    .line 307
    const-string v3, "SensorHubManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SensorHubManager: Num SensorHub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-ltz v1, :cond_1

    .line 309
    const-string v3, "SensorHubManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SensorHubManager: found sensorhub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/hardware/sensorhub/SensorHub;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", handle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/hardware/sensorhub/SensorHub;->getHandle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    sget-object v3, Landroid/hardware/sensorhub/SensorHubManager;->sHandleToSensorHub:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/sensorhub/SensorHub;->getHandle()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 313
    :cond_1
    if-gtz v1, :cond_0

    .line 315
    new-instance v3, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;

    sget-object v5, Landroid/hardware/sensorhub/SensorHubManager;->sFullSensorHubsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, p0, v5}, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;-><init>(Landroid/hardware/sensorhub/SensorHubManager;I)V

    sput-object v3, Landroid/hardware/sensorhub/SensorHubManager;->sPool:Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;

    .line 316
    new-instance v3, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;

    invoke-direct {v3}, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;-><init>()V

    sput-object v3, Landroid/hardware/sensorhub/SensorHubManager;->sSensorHubThread:Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;

    .line 318
    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/sensorhub/SensorHub;>;"
    .end local v1           #i:I
    .end local v2           #sensorhub:Landroid/hardware/sensorhub/SensorHub;
    :cond_2
    monitor-exit v4

    .line 319
    return-void

    .line 318
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 35
    sget v0, Landroid/hardware/sensorhub/SensorHubManager;->sQueue:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    sput p0, Landroid/hardware/sensorhub/SensorHubManager;->sQueue:I

    return p0
.end method

.method static synthetic access$200()Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Landroid/hardware/sensorhub/SensorHubManager;->sPool:Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;

    return-object v0
.end method

.method private disableSensorHubLocked(Landroid/hardware/sensorhub/SensorHub;)Z
    .locals 3
    .parameter "sensorhub"

    .prologue
    const/4 v2, -0x1

    .line 369
    invoke-virtual {p1}, Landroid/hardware/sensorhub/SensorHub;->getHandle()I

    move-result v0

    .line 370
    .local v0, handle:I
    sget v1, Landroid/hardware/sensorhub/SensorHubManager;->sQueue:I

    invoke-static {v1, v0, v2, v2}, Landroid/hardware/sensorhub/SensorHubManager;->sensorhubs_enabledisable(IIII)Z

    move-result v1

    return v1
.end method

.method private enableSensorHubLocked(Landroid/hardware/sensorhub/SensorHub;I)Z
    .locals 6
    .parameter "sensorhub"
    .parameter "delay"

    .prologue
    .line 357
    const/4 v3, 0x0

    .line 358
    .local v3, result:Z
    sget-object v4, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;

    .line 359
    .local v1, i:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->hasSensorHub(Landroid/hardware/sensorhub/SensorHub;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 360
    invoke-virtual {p1}, Landroid/hardware/sensorhub/SensorHub;->getHandle()I

    move-result v0

    .line 361
    .local v0, handle:I
    sget v4, Landroid/hardware/sensorhub/SensorHubManager;->sQueue:I

    const/4 v5, 0x1

    invoke-static {v4, v0, v5, p2}, Landroid/hardware/sensorhub/SensorHubManager;->sensorhubs_enabledisable(IIII)Z

    move-result v3

    .line 365
    .end local v0           #handle:I
    .end local v1           #i:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    :cond_1
    return v3
.end method

.method private static native nativeClassInit()V
.end method

.method static native sensorhubs_create_queue()I
.end method

.method static native sensorhubs_data_poll(I[B[I[I[I[F[J)I
.end method

.method static native sensorhubs_destroy_queue(I)V
.end method

.method static native sensorhubs_enabledisable(IIII)Z
.end method

.method private static native sensorhubs_get_next_module(Landroid/hardware/sensorhub/SensorHub;I)I
.end method

.method private static native sensorhubs_module_init()I
.end method

.method static native sensorhubs_send_data(III[B)I
.end method

.method static native sensorhubs_send_delay(III)Z
.end method

.method private unregisterListener(Ljava/lang/Object;)V
    .locals 9
    .parameter "listener"

    .prologue
    .line 468
    if-nez p1, :cond_0

    .line 485
    :goto_0
    return-void

    .line 471
    :cond_0
    sget-object v6, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 472
    :try_start_0
    sget-object v5, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 473
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 474
    sget-object v5, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;

    .line 475
    .local v2, l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 476
    sget-object v5, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 477
    invoke-virtual {v2}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->getSensorHubs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/sensorhub/SensorHub;

    .line 478
    .local v3, sensorhub:Landroid/hardware/sensorhub/SensorHub;
    invoke-direct {p0, v3}, Landroid/hardware/sensorhub/SensorHubManager;->disableSensorHubLocked(Landroid/hardware/sensorhub/SensorHub;)Z

    .line 479
    const-string v5, "SensorHubManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unregisterListener: disable all sensorhubs for this listener,  name =  listener = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 484
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    .end local v3           #sensorhub:Landroid/hardware/sensorhub/SensorHub;
    .end local v4           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 473
    .restart local v0       #i:I
    .restart local v2       #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    .restart local v4       #size:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 484
    .end local v2           #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private unregisterListener(Ljava/lang/Object;Landroid/hardware/sensorhub/SensorHub;)V
    .locals 7
    .parameter "listener"
    .parameter "sensorhub"

    .prologue
    .line 448
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    sget-object v4, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 452
    :try_start_0
    sget-object v3, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 453
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 454
    sget-object v3, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;

    .line 455
    .local v1, l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_3

    .line 456
    invoke-virtual {v1, p2}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->removeSensorHub(Landroid/hardware/sensorhub/SensorHub;)I

    move-result v3

    if-nez v3, :cond_2

    .line 457
    sget-object v3, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 462
    .end local v1           #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    :cond_2
    invoke-direct {p0, p2}, Landroid/hardware/sensorhub/SensorHubManager;->disableSensorHubLocked(Landroid/hardware/sensorhub/SensorHub;)Z

    .line 463
    const-string v3, "SensorHubManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unregisterListener: handle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/hardware/sensorhub/SensorHub;->getHandle()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Listener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    monitor-exit v4

    goto :goto_0

    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 453
    .restart local v0       #i:I
    .restart local v1       #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    .restart local v2       #size:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public SendSensorHubData(Landroid/hardware/sensorhub/SensorHub;I[B)I
    .locals 7
    .parameter "sensorhub"
    .parameter "datasize"
    .parameter "data"

    .prologue
    .line 489
    const/4 v3, 0x0

    .line 490
    .local v3, res:I
    invoke-virtual {p1}, Landroid/hardware/sensorhub/SensorHub;->getHandle()I

    move-result v0

    .line 491
    .local v0, handle:I
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 493
    .local v2, log:Ljava/lang/StringBuffer;
    const-string v4, "send data = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    const/4 v4, 0x0

    aget-byte v4, p3, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 496
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 497
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 498
    aget-byte v4, p3, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 500
    :cond_0
    const-string v4, "SensorHubManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SendSensorHubData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    sget v4, Landroid/hardware/sensorhub/SensorHubManager;->sQueue:I

    invoke-static {v4, v0, p2, p3}, Landroid/hardware/sensorhub/SensorHubManager;->sensorhubs_send_data(III[B)I

    move-result v3

    .line 503
    if-gez v3, :cond_1

    .line 504
    const-string v4, "SensorHubManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SendSensorHubData: error("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_1
    return v3
.end method

.method public getDefaultSensorHub(I)Landroid/hardware/sensorhub/SensorHub;
    .locals 2
    .parameter "type"

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Landroid/hardware/sensorhub/SensorHubManager;->getSensorHubList(I)Ljava/util/List;

    move-result-object v0

    .line 341
    .local v0, l:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/sensorhub/SensorHub;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/sensorhub/SensorHub;

    goto :goto_0
.end method

.method public getSensorHubList(I)Ljava/util/List;
    .locals 5
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/sensorhub/SensorHub;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    sget-object v0, Landroid/hardware/sensorhub/SensorHubManager;->sFullSensorHubsList:Ljava/util/ArrayList;

    .line 324
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/sensorhub/SensorHub;>;"
    monitor-enter v0

    .line 325
    :try_start_0
    sget-object v4, Landroid/hardware/sensorhub/SensorHubManager;->sSensorHubListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 326
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/sensorhub/SensorHub;>;"
    if-nez v3, :cond_2

    .line 327
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/sensorhub/SensorHub;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/sensorhub/SensorHub;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/sensorhub/SensorHub;

    .line 329
    .local v1, i:Landroid/hardware/sensorhub/SensorHub;
    invoke-virtual {v1}, Landroid/hardware/sensorhub/SensorHub;->getType()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 330
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    .end local v1           #i:Landroid/hardware/sensorhub/SensorHub;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/sensorhub/SensorHub;>;"
    :catchall_0
    move-exception v4

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 332
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #list:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/sensorhub/SensorHub;>;"
    :cond_1
    :try_start_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 333
    sget-object v4, Landroid/hardware/sensorhub/SensorHubManager;->sSensorHubListByType:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 335
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    return-object v3
.end method

.method public registerListener(Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;I)Z
    .locals 1
    .parameter "listener"
    .parameter "sensorhub"
    .parameter "rate"

    .prologue
    .line 353
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/sensorhub/SensorHubManager;->registerListener(Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;ILandroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;ILandroid/os/Handler;)Z
    .locals 6
    .parameter "listener"
    .parameter "sensorhub"
    .parameter "rate"
    .parameter "handler"

    .prologue
    .line 375
    if-gez p3, :cond_0

    .line 376
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rate must be >=0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/sensorhub/SensorHubManager;->registerListener(Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;ILandroid/os/Handler;I)Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;ILandroid/os/Handler;I)Z
    .locals 10
    .parameter "listener"
    .parameter "sensorhub"
    .parameter "rate"
    .parameter "handler"
    .parameter "temp"

    .prologue
    .line 383
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 384
    :cond_0
    const/4 v5, 0x0

    .line 444
    :goto_0
    return v5

    .line 387
    :cond_1
    if-gez p3, :cond_2

    .line 388
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "rate must be >=0"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 391
    :cond_2
    const/4 v5, 0x1

    .line 392
    .local v5, result:Z
    const/4 v0, -0x1

    .line 394
    .local v0, delay:I
    packed-switch p3, :pswitch_data_0

    .line 402
    move v0, p3

    .line 406
    :goto_1
    sget-object v7, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 407
    const/4 v3, 0x0

    .line 408
    .local v3, l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    :try_start_0
    sget-object v6, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;

    .line 409
    .local v1, i:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->getListener()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-ne v6, p1, :cond_3

    .line 410
    move-object v3, v1

    move-object v4, v3

    .line 414
    .end local v1           #i:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    .end local v3           #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    .local v4, l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    :goto_2
    :try_start_1
    const-string v6, "SensorHubManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "registerListener: handle = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/hardware/sensorhub/SensorHub;->getHandle()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " delay = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Listener= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    if-nez v4, :cond_7

    .line 417
    new-instance v3, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;

    invoke-direct {v3, p0, p1, p2, p4}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;-><init>(Landroid/hardware/sensorhub/SensorHubManager;Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 418
    .end local v4           #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    :try_start_2
    sget-object v6, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    sget-object v6, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 421
    sget-object v6, Landroid/hardware/sensorhub/SensorHubManager;->sSensorHubThread:Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;

    invoke-virtual {v6}, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;->startLocked()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 422
    invoke-direct {p0, p2, v0}, Landroid/hardware/sensorhub/SensorHubManager;->enableSensorHubLocked(Landroid/hardware/sensorhub/SensorHub;I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 423
    sget-object v6, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 424
    const/4 v5, 0x0

    .line 425
    const-string v6, "SensorHubManager"

    const-string v8, "registerListener: enableSensorHubLocked fail 1"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_4
    :goto_3
    monitor-exit v7

    goto/16 :goto_0

    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :goto_4
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 396
    .end local v3           #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    :pswitch_0
    const/4 v0, 0x0

    .line 397
    goto/16 :goto_1

    .line 399
    :pswitch_1
    const/16 v0, 0x2710

    .line 400
    goto/16 :goto_1

    .line 428
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    :cond_5
    :try_start_3
    sget-object v6, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 429
    const/4 v5, 0x0

    goto :goto_3

    .line 432
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 435
    .end local v3           #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    :cond_7
    :try_start_4
    invoke-virtual {v4, p2}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->addSensorHub(Landroid/hardware/sensorhub/SensorHub;)V

    .line 436
    invoke-direct {p0, p2, v0}, Landroid/hardware/sensorhub/SensorHubManager;->enableSensorHubLocked(Landroid/hardware/sensorhub/SensorHub;I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 437
    invoke-virtual {v4, p2}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->removeSensorHub(Landroid/hardware/sensorhub/SensorHub;)I

    .line 438
    const/4 v5, 0x0

    .line 439
    const-string v6, "SensorHubManager"

    const-string v8, "registerListener: enableSensorHubLocked fail 2"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_8
    move-object v3, v4

    .end local v4           #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    goto :goto_3

    .line 442
    .end local v3           #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    goto :goto_4

    :cond_9
    move-object v4, v3

    .end local v3           #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    goto/16 :goto_2

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unregisterListener(Landroid/hardware/sensorhub/SensorHubEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 349
    invoke-direct {p0, p1}, Landroid/hardware/sensorhub/SensorHubManager;->unregisterListener(Ljava/lang/Object;)V

    .line 350
    return-void
.end method

.method public unregisterListener(Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;)V
    .locals 0
    .parameter "listener"
    .parameter "sensorhub"

    .prologue
    .line 345
    invoke-direct {p0, p1, p2}, Landroid/hardware/sensorhub/SensorHubManager;->unregisterListener(Ljava/lang/Object;Landroid/hardware/sensorhub/SensorHub;)V

    .line 346
    return-void
.end method
