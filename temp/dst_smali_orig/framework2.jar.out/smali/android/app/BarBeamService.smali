.class public Landroid/app/BarBeamService;
.super Landroid/app/IBarBeamService$Stub;
.source "BarBeamService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BarBeamService$Listener;,
        Landroid/app/BarBeamService$CheckStatusThread;
    }
.end annotation


# static fields
.field static FAIL:Z = false

.field private static final PERMISSION_BARCODE_READ:Ljava/lang/String; = "android.permission.sec.BARCODE_READ"

.field static SUCCESS:Z = false

.field private static final TAG:Ljava/lang/String; = "BarBeamService"

.field private static bEnabled:Z

.field static result:Z


# instance fields
.field private final DATA_COMMAND:B

.field private final LED_NOTIF_ID:I

.field private final MAX_SEQUENCE_RETISTER:I

.field private final NUM_HOPS_VERSION_COMMAND:B

.field private final SEQUENCE_RETISTER_LENGTH:B

.field private final SEQUENCE_RETISTER_START:B

.field private final START_STOP_COMMAND:B

.field private callbacks:Landroid/app/IBarBeamListener;

.field private isRunning:Z

.field private mBeamLength:B

.field private final mContext:Landroid/content/Context;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BarBeamService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field mMsgHandler:Landroid/os/Handler;

.field mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/BarBeamService;->SUCCESS:Z

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/BarBeamService;->FAIL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/IBarBeamService$Stub;-><init>()V

    iput-object v1, p0, Landroid/app/BarBeamService;->callbacks:Landroid/app/IBarBeamListener;

    iput-byte v2, p0, Landroid/app/BarBeamService;->mBeamLength:B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    iput-byte v2, p0, Landroid/app/BarBeamService;->DATA_COMMAND:B

    const/16 v0, -0x7f

    iput-byte v0, p0, Landroid/app/BarBeamService;->SEQUENCE_RETISTER_START:B

    const/4 v0, 0x7

    iput-byte v0, p0, Landroid/app/BarBeamService;->SEQUENCE_RETISTER_LENGTH:B

    const/16 v0, 0x12

    iput v0, p0, Landroid/app/BarBeamService;->MAX_SEQUENCE_RETISTER:I

    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/app/BarBeamService;->START_STOP_COMMAND:B

    const/16 v0, -0x80

    iput-byte v0, p0, Landroid/app/BarBeamService;->NUM_HOPS_VERSION_COMMAND:B

    iput-object v1, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    const/16 v0, 0x1428

    iput v0, p0, Landroid/app/BarBeamService;->LED_NOTIF_ID:I

    new-instance v0, Landroid/app/BarBeamService$1;

    invoke-direct {v0, p0}, Landroid/app/BarBeamService$1;-><init>(Landroid/app/BarBeamService;)V

    iput-object v0, p0, Landroid/app/BarBeamService;->mMsgHandler:Landroid/os/Handler;

    const-string v0, "BarBeamService"

    const-string v1, "BarBeamService : Create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    iput-boolean v2, p0, Landroid/app/BarBeamService;->isRunning:Z

    new-instance v0, Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v1, p0, Landroid/app/BarBeamService;->mMsgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/app/BarBeamService$CheckStatusThread;-><init>(Landroid/app/BarBeamService;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v0, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$002(Landroid/app/BarBeamService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/app/BarBeamService;->isRunning:Z

    return p1
.end method

.method static synthetic access$100(Landroid/app/BarBeamService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/app/BarBeamService;->setLEDNotification(Z)V

    return-void
.end method

.method private setLEDNotification(Z)V
    .locals 9
    .parameter "ledOn"

    .prologue
    const/16 v8, 0x1428

    const/16 v7, 0x1f4

    const/16 v6, 0xff

    const/4 v5, 0x0

    const-string v2, "BarBeamService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLEDNotification() LED ON : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .local v1, notifMgr:Landroid/app/NotificationManager;
    if-eqz p1, :cond_0

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .local v0, notif:Landroid/app/Notification;
    invoke-static {v6, v5, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, v0, Landroid/app/Notification;->ledARGB:I

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/app/Notification;->flags:I

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Landroid/app/Notification;->flags:I

    iput v7, v0, Landroid/app/Notification;->ledOnMS:I

    iput v7, v0, Landroid/app/Notification;->ledOffMS:I

    invoke-virtual {v1, v8, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .end local v0           #notif:Landroid/app/Notification;
    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method


# virtual methods
.method public addListener(Landroid/os/IBinder;)V
    .locals 9
    .parameter "binder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, callback:Landroid/app/IBarBeamListener;
    const/4 v4, 0x0

    .local v4, l:Landroid/app/BarBeamService$Listener;
    iget-object v8, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/BarBeamService$Listener;

    .local v6, listener:Landroid/app/BarBeamService$Listener;
    iget-object v7, v6, Landroid/app/BarBeamService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v7, :cond_0

    monitor-exit v8

    .end local v6           #listener:Landroid/app/BarBeamService$Listener;
    :goto_0
    return-void

    :cond_1
    if-nez v4, :cond_2

    new-instance v5, Landroid/app/BarBeamService$Listener;

    invoke-direct {v5, p0, p1}, Landroid/app/BarBeamService$Listener;-><init>(Landroid/app/BarBeamService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4           #l:Landroid/app/BarBeamService$Listener;
    .local v5, l:Landroid/app/BarBeamService$Listener;
    const/4 v7, 0x0

    :try_start_1
    invoke-interface {p1, v5, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v7, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v2, client:Ljava/lang/String;
    :try_start_2
    invoke-static {p1}, Landroid/app/IBarBeamListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBarBeamListener;

    move-result-object v1

    .local v1, cb:Landroid/app/IBarBeamListener;
    invoke-interface {v1}, Landroid/app/IBarBeamListener;->getListenerInfo()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .end local v1           #cb:Landroid/app/IBarBeamListener;
    :goto_1
    :try_start_3
    iget-object v7, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v5

    .end local v2           #client:Ljava/lang/String;
    .end local v5           #l:Landroid/app/BarBeamService$Listener;
    .restart local v4       #l:Landroid/app/BarBeamService$Listener;
    :cond_2
    :try_start_4
    monitor-exit v8

    goto :goto_0

    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    :goto_2
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v7

    .end local v4           #l:Landroid/app/BarBeamService$Listener;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #l:Landroid/app/BarBeamService$Listener;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #l:Landroid/app/BarBeamService$Listener;
    .restart local v4       #l:Landroid/app/BarBeamService$Listener;
    goto :goto_2

    .end local v4           #l:Landroid/app/BarBeamService$Listener;
    .restart local v2       #client:Ljava/lang/String;
    .restart local v5       #l:Landroid/app/BarBeamService$Listener;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public getCurrentStatus()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .local v4, strstatus:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, reader:Ljava/io/BufferedReader;
    const-string v6, ""

    .local v6, ver:Ljava/lang/String;
    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z

    .local v3, result:Z
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/sys/class/sec/sec_barcode_emul/barcode_led_status"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x400

    invoke-direct {v2, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .end local v1           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .local v5, temp:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v5           #temp:Ljava/lang/String;
    .local v0, ex:Ljava/io/FileNotFoundException;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v9, :cond_4

    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return v3

    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v5       #temp:Ljava/lang/String;
    :catch_1
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local v0           #ex:Ljava/io/IOException;
    :cond_1
    :goto_3
    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v5           #temp:Ljava/lang/String;
    :catch_2
    move-exception v0

    .restart local v0       #ex:Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_0

    :try_start_7
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v9, :cond_5

    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_2

    .end local v0           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v1, :cond_0

    :try_start_9
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v9, :cond_6

    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_2

    .end local v0           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v0           #ex:Ljava/io/IOException;
    :cond_2
    :goto_6
    throw v7

    :catchall_0
    move-exception v7

    :goto_7
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v7

    :catchall_1
    move-exception v7

    :goto_8
    if-eqz v1, :cond_2

    :try_start_b
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const-string v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v9, :cond_3

    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z

    goto :goto_6

    :cond_3
    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_6

    .local v0, ex:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    .local v0, ex:Ljava/io/FileNotFoundException;
    :cond_4
    :try_start_d
    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :goto_9
    goto :goto_2

    .local v0, ex:Ljava/io/IOException;
    :catch_6
    move-exception v0

    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_2

    :cond_5
    :try_start_f
    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    goto :goto_9

    .local v0, ex:Ljava/lang/Exception;
    :catch_7
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_2

    .local v0, ex:Ljava/lang/Exception;
    :cond_6
    :try_start_11
    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    goto :goto_9

    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v5       #temp:Ljava/lang/String;
    :cond_7
    if-eqz v2, :cond_1

    :try_start_12
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v9, :cond_8

    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z

    goto/16 :goto_3

    :cond_8
    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1

    goto/16 :goto_3

    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_7

    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catchall_3
    move-exception v7

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_8

    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto :goto_5

    .end local v1           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v1       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_4

    .end local v5           #temp:Ljava/lang/String;
    :catch_a
    move-exception v0

    goto/16 :goto_1
.end method

.method public isImplementationCompatible()Z
    .locals 7

    .prologue
    const-string v5, "BarBeamService"

    const-string v6, "isImplementationCompatible"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .local v3, out_en:Ljava/io/FileWriter;
    const/4 v1, 0x0

    .local v1, out:Ljava/io/FileOutputStream;
    sget-boolean v5, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z

    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .end local v3           #out_en:Ljava/io/FileWriter;
    .local v4, out_en:Ljava/io/FileWriter;
    :try_start_1
    const-string v5, "BarBeamService"

    const-string v6, "isImplementationCompatible : Enable barcode_emul_en"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13

    if-eqz v4, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    :cond_0
    :goto_0
    move-object v3, v4

    .end local v4           #out_en:Ljava/io/FileWriter;
    .restart local v3       #out_en:Ljava/io/FileWriter;
    :cond_1
    :goto_1
    :try_start_3
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    .end local v1           #out:Ljava/io/FileOutputStream;
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_4
    const-string v5, "BarBeamService"

    const-string v6, "isImplementationCompatible : Enable barcode_send"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e

    :cond_2
    :goto_2
    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    :cond_3
    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sget-boolean v5, Landroid/app/BarBeamService;->result:Z

    return v5

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_1

    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_5
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v5

    :catch_2
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    :goto_6
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v3, :cond_1

    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_1

    .end local v0           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .restart local v0       #ex:Ljava/lang/Exception;
    :goto_7
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v3, :cond_1

    :try_start_e
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_1

    :catch_5
    move-exception v0

    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_1

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    :goto_8
    if-eqz v3, :cond_4

    :try_start_10
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_c

    :cond_4
    :goto_9
    :try_start_11
    throw v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :catch_6
    move-exception v0

    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_a
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-eqz v1, :cond_3

    :try_start_13
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    goto :goto_3

    :catch_7
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_3

    .end local v0           #ex:Ljava/lang/Exception;
    :catch_8
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    :goto_b
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    if-eqz v1, :cond_3

    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9

    goto :goto_3

    :catch_9
    move-exception v0

    .local v0, ex:Ljava/lang/Exception;
    :try_start_17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_3

    .end local v0           #ex:Ljava/lang/Exception;
    :catch_a
    move-exception v0

    .restart local v0       #ex:Ljava/lang/Exception;
    :goto_c
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    if-eqz v1, :cond_3

    :try_start_19
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_b

    goto :goto_3

    :catch_b
    move-exception v0

    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_3

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_2
    move-exception v5

    :goto_d
    if-eqz v1, :cond_5

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_d

    :cond_5
    :goto_e
    :try_start_1c
    throw v5

    :catch_c
    move-exception v0

    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .end local v0           #ex:Ljava/lang/Exception;
    :catch_d
    move-exception v0

    .restart local v0       #ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto :goto_e

    .end local v0           #ex:Ljava/lang/Exception;
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_e
    move-exception v0

    .restart local v0       #ex:Ljava/lang/Exception;
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    goto/16 :goto_2

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_3
    move-exception v5

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .end local v3           #out_en:Ljava/io/FileWriter;
    .restart local v4       #out_en:Ljava/io/FileWriter;
    :catch_f
    move-exception v0

    .restart local v0       #ex:Ljava/lang/Exception;
    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    goto/16 :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_4
    move-exception v5

    move-object v3, v4

    .end local v4           #out_en:Ljava/io/FileWriter;
    .restart local v3       #out_en:Ljava/io/FileWriter;
    goto/16 :goto_5

    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v5

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_d

    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_10
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_c

    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_11
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_b

    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_12
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_a

    .end local v3           #out_en:Ljava/io/FileWriter;
    .restart local v4       #out_en:Ljava/io/FileWriter;
    :catchall_6
    move-exception v5

    move-object v3, v4

    .end local v4           #out_en:Ljava/io/FileWriter;
    .restart local v3       #out_en:Ljava/io/FileWriter;
    goto :goto_8

    .end local v3           #out_en:Ljava/io/FileWriter;
    .restart local v4       #out_en:Ljava/io/FileWriter;
    :catch_13
    move-exception v0

    move-object v3, v4

    .end local v4           #out_en:Ljava/io/FileWriter;
    .restart local v3       #out_en:Ljava/io/FileWriter;
    goto/16 :goto_7

    .end local v3           #out_en:Ljava/io/FileWriter;
    .restart local v4       #out_en:Ljava/io/FileWriter;
    :catch_14
    move-exception v0

    move-object v3, v4

    .end local v4           #out_en:Ljava/io/FileWriter;
    .restart local v3       #out_en:Ljava/io/FileWriter;
    goto/16 :goto_6

    .end local v3           #out_en:Ljava/io/FileWriter;
    .restart local v4       #out_en:Ljava/io/FileWriter;
    :catch_15
    move-exception v0

    move-object v3, v4

    .end local v4           #out_en:Ljava/io/FileWriter;
    .restart local v3       #out_en:Ljava/io/FileWriter;
    goto/16 :goto_4
.end method

.method public removeListener(Landroid/os/IBinder;)V
    .locals 7
    .parameter "binder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .local v3, l:Landroid/app/BarBeamService$Listener;
    const-string v1, ""

    .local v1, client:Ljava/lang/String;
    iget-object v6, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .local v4, listener:Landroid/app/BarBeamService$Listener;
    iget-object v5, v4, Landroid/app/BarBeamService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v5, :cond_0

    move-object v3, v4

    .end local v4           #listener:Landroid/app/BarBeamService$Listener;
    :cond_1
    if-eqz v3, :cond_2

    const/4 v5, 0x0

    invoke-interface {p1, v3, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v5, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Landroid/app/IBarBeamListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBarBeamListener;

    move-result-object v0

    .local v0, cb:Landroid/app/IBarBeamListener;
    invoke-interface {v0}, Landroid/app/IBarBeamListener;->getListenerInfo()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .end local v0           #cb:Landroid/app/IBarBeamListener;
    :goto_0
    :try_start_2
    iget-object v5, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    :cond_2
    monitor-exit v6

    return-void

    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .restart local v2       #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public setBarcode([B)V
    .locals 10
    .parameter "buffer"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const-string v5, "BarBeamService"

    const-string v6, "setBarcode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.sec.BARCODE_READ"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, out:Ljava/io/FileOutputStream;
    array-length v5, p1

    add-int/lit8 v5, v5, 0x3

    new-array v0, v5, [B

    .local v0, data:[B
    sget-boolean v5, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z

    array-length v5, p1

    add-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    iput-byte v5, p0, Landroid/app/BarBeamService;->mBeamLength:B

    const-string v5, "BarBeamService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendDataTable length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Landroid/app/BarBeamService;->mBeamLength:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v0, v9

    const/4 v5, 0x1

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v0, v5

    const/4 v2, 0x2

    .local v2, i:I
    :goto_0
    array-length v5, p1

    add-int/lit8 v5, v5, 0x2

    if-ge v2, v5, :cond_0

    add-int/lit8 v5, v2, -0x2

    aget-byte v5, p1, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length v5, p1

    add-int/lit8 v5, v5, 0x2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v0, v5

    monitor-enter p0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .end local v3           #out:Ljava/io/FileOutputStream;
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    const-string v5, "BarBeamService"

    const-string v6, "setBarcode is Done!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    if-eqz v4, :cond_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    :cond_1
    :goto_1
    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catch_0
    move-exception v1

    .local v1, ex:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v5

    :catch_2
    move-exception v1

    .local v1, ex:Ljava/io/IOException;
    :goto_5
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_2

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .end local v1           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    :goto_6
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v3, :cond_2

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_2

    :catch_5
    move-exception v1

    :try_start_c
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    :goto_7
    if-eqz v3, :cond_3

    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    :cond_3
    :goto_8
    :try_start_e
    throw v5

    :catch_6
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_8

    .end local v1           #ex:Ljava/lang/Exception;
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    :try_start_f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_2
    move-exception v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v5

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_7

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_5

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method public setHopSequence([BII)V
    .locals 15
    .parameter "buffer"
    .parameter "col_size"
    .parameter "row_size"

    .prologue
    const-string v11, "BarBeamService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendHopSequenceTable "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " x "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v12, "android.permission.sec.BARCODE_READ"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    .local v9, out:Ljava/io/FileOutputStream;
    const/16 v11, 0x8

    new-array v3, v11, [B

    .local v3, data:[B
    const/4 v11, 0x2

    new-array v8, v11, [B

    .local v8, numPacket:[B
    move/from16 v2, p2

    .local v2, NP:I
    const/4 v6, 0x0

    .local v6, j:I
    const/16 v1, -0x7f

    .local v1, BSR:B
    sget-boolean v11, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z

    const/4 v11, 0x0

    const/16 v12, -0x80

    aput-byte v12, v8, v11

    const/4 v11, 0x1

    and-int/lit8 v12, v2, 0x1f

    int-to-byte v12, v12

    aput-byte v12, v8, v11

    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    const-string v11, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .end local v9           #out:Ljava/io/FileOutputStream;
    .local v10, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v10, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13

    if-eqz v10, :cond_0

    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    :cond_0
    :goto_0
    move-object v9, v10

    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v5, 0x0

    .local v5, i:I
    move-object v10, v9

    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :goto_2
    move/from16 v0, p2

    if-ge v5, v0, :cond_6

    const/4 v6, 0x0

    add-int/lit8 v7, v6, 0x1

    .end local v6           #j:I
    .local v7, j:I
    aput-byte v1, v3, v6

    mul-int v11, v5, p3

    aget-byte v11, p1, v11

    const/16 v12, 0x15

    if-le v11, v12, :cond_4

    const-string v11, "BarBeamService"

    const-string v12, "not supported bw "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v6, v7, 0x1

    .end local v7           #j:I
    .restart local v6       #j:I
    const/16 v11, 0x15

    aput-byte v11, v3, v7

    :goto_3
    add-int/lit8 v7, v6, 0x1

    .end local v6           #j:I
    .restart local v7       #j:I
    mul-int v11, v5, p3

    add-int/lit8 v11, v11, 0x1

    aget-byte v11, p1, v11

    aput-byte v11, v3, v6

    add-int/lit8 v6, v7, 0x1

    .end local v7           #j:I
    .restart local v6       #j:I
    mul-int v11, v5, p3

    add-int/lit8 v11, v11, 0x2

    aget-byte v11, p1, v11

    aput-byte v11, v3, v7

    add-int/lit8 v7, v6, 0x1

    .end local v6           #j:I
    .restart local v7       #j:I
    mul-int v11, v5, p3

    add-int/lit8 v11, v11, 0x3

    aget-byte v11, p1, v11

    aput-byte v11, v3, v6

    add-int/lit8 v6, v7, 0x1

    .end local v7           #j:I
    .restart local v6       #j:I
    mul-int v11, v5, p3

    add-int/lit8 v11, v11, 0x4

    aget-byte v11, p1, v11

    aput-byte v11, v3, v7

    add-int/lit8 v7, v6, 0x1

    .end local v6           #j:I
    .restart local v7       #j:I
    mul-int v11, v5, p3

    add-int/lit8 v11, v11, 0x5

    aget-byte v11, p1, v11

    aput-byte v11, v3, v6

    add-int/lit8 v6, v7, 0x1

    .end local v7           #j:I
    .restart local v6       #j:I
    mul-int v11, v5, p3

    add-int/lit8 v11, v11, 0x6

    aget-byte v11, p1, v11

    aput-byte v11, v3, v7

    add-int/lit8 v11, v1, 0x7

    int-to-byte v1, v11

    monitor-enter p0

    :try_start_4
    new-instance v9, Ljava/io/FileOutputStream;

    const-string v11, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    :try_start_5
    const-string v11, "BarBeamService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "HopSequenceTable Data : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    new-instance v13, Ljava/math/BigInteger;

    const/4 v14, 0x1

    invoke-direct {v13, v14, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v14, 0x10

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10

    if-eqz v9, :cond_2

    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e

    :cond_2
    :goto_4
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    add-int/lit8 v5, v5, 0x1

    move-object v10, v9

    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v5           #i:I
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    .local v4, ex:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v11, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v9, :cond_1

    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v4

    .local v4, ex:Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_6
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v11

    :catch_2
    move-exception v4

    .local v4, ex:Ljava/io/IOException;
    :goto_7
    :try_start_b
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v11, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v9, :cond_1

    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v4

    .local v4, ex:Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .end local v4           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .restart local v4       #ex:Ljava/lang/Exception;
    :goto_8
    :try_start_e
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v11, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v9, :cond_1

    :try_start_f
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v4

    :try_start_10
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_1

    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v11

    :goto_9
    if-eqz v9, :cond_3

    :try_start_11
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    :cond_3
    :goto_a
    :try_start_12
    throw v11
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .end local v6           #j:I
    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v5       #i:I
    .restart local v7       #j:I
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :cond_4
    add-int/lit8 v6, v7, 0x1

    .end local v7           #j:I
    .restart local v6       #j:I
    mul-int v11, v5, p3

    aget-byte v11, p1, v11

    aput-byte v11, v3, v7

    goto/16 :goto_3

    :catch_6
    move-exception v4

    move-object v9, v10

    .end local v10           #out:Ljava/io/FileOutputStream;
    .local v4, ex:Ljava/io/FileNotFoundException;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    :goto_b
    :try_start_13
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v11, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    if-eqz v9, :cond_2

    :try_start_14
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    goto :goto_4

    :catch_7
    move-exception v4

    .local v4, ex:Ljava/lang/Exception;
    :try_start_15
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_2
    move-exception v11

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    throw v11

    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :catch_8
    move-exception v4

    move-object v9, v10

    .end local v10           #out:Ljava/io/FileOutputStream;
    .local v4, ex:Ljava/io/IOException;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    :goto_c
    :try_start_16
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v11, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    if-eqz v9, :cond_2

    :try_start_17
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9

    goto :goto_4

    :catch_9
    move-exception v4

    .local v4, ex:Ljava/lang/Exception;
    :try_start_18
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    goto/16 :goto_4

    .end local v4           #ex:Ljava/lang/Exception;
    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :catch_a
    move-exception v4

    move-object v9, v10

    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v4       #ex:Ljava/lang/Exception;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    :goto_d
    :try_start_19
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v11, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_5

    if-eqz v9, :cond_2

    :try_start_1a
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_b

    goto/16 :goto_4

    :catch_b
    move-exception v4

    :try_start_1b
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto/16 :goto_4

    .end local v4           #ex:Ljava/lang/Exception;
    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v11

    move-object v9, v10

    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    :goto_e
    if-eqz v9, :cond_5

    :try_start_1c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_d

    :cond_5
    :goto_f
    :try_start_1d
    throw v11
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :cond_6
    return-void

    .end local v5           #i:I
    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    :catch_c
    move-exception v4

    .restart local v4       #ex:Ljava/lang/Exception;
    :try_start_1e
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto :goto_a

    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v5       #i:I
    :catch_d
    move-exception v4

    .restart local v4       #ex:Ljava/lang/Exception;
    :try_start_1f
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f

    .end local v4           #ex:Ljava/lang/Exception;
    :catch_e
    move-exception v4

    .restart local v4       #ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2

    goto/16 :goto_4

    .end local v4           #ex:Ljava/lang/Exception;
    .end local v5           #i:I
    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :catch_f
    move-exception v4

    .restart local v4       #ex:Ljava/lang/Exception;
    :try_start_20
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    goto/16 :goto_0

    .end local v4           #ex:Ljava/lang/Exception;
    :catchall_4
    move-exception v11

    move-object v9, v10

    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .restart local v5       #i:I
    :catchall_5
    move-exception v11

    goto :goto_e

    :catch_10
    move-exception v4

    goto :goto_d

    :catch_11
    move-exception v4

    goto :goto_c

    :catch_12
    move-exception v4

    goto :goto_b

    .end local v5           #i:I
    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :catchall_6
    move-exception v11

    move-object v9, v10

    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :catch_13
    move-exception v4

    move-object v9, v10

    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_8

    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :catch_14
    move-exception v4

    move-object v9, v10

    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .end local v9           #out:Ljava/io/FileOutputStream;
    .restart local v10       #out:Ljava/io/FileOutputStream;
    :catch_15
    move-exception v4

    move-object v9, v10

    .end local v10           #out:Ljava/io/FileOutputStream;
    .restart local v9       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_5
.end method

.method public startBeaming()V
    .locals 14

    .prologue
    const/4 v12, 0x1

    const-string v9, "BarBeamService"

    const-string v10, "startBeaming"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.sec.BARCODE_READ"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v9, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z

    const/4 v7, 0x0

    .local v7, out_en:Ljava/io/FileWriter;
    const/4 v5, 0x0

    .local v5, out:Ljava/io/FileOutputStream;
    const/4 v9, 0x2

    new-array v0, v9, [B

    .local v0, data:[B
    new-array v2, v12, [C

    .local v2, flag:[C
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/io/FileWriter;

    const-string v9, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .end local v7           #out_en:Ljava/io/FileWriter;
    .local v8, out_en:Ljava/io/FileWriter;
    const/4 v9, 0x0

    const/16 v10, 0x31

    :try_start_1
    aput-char v10, v2, v9

    invoke-virtual {v8, v2}, Ljava/io/Writer;->write([C)V

    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13

    if-eqz v8, :cond_0

    :try_start_2
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    :cond_0
    :goto_0
    move-object v7, v8

    .end local v8           #out_en:Ljava/io/FileWriter;
    .restart local v7       #out_en:Ljava/io/FileWriter;
    :cond_1
    :goto_1
    const/4 v9, 0x0

    const/4 v10, -0x1

    :try_start_3
    aput-byte v10, v0, v9

    const/4 v9, 0x1

    iget-byte v10, p0, Landroid/app/BarBeamService;->mBeamLength:B

    aput-byte v10, v0, v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v9, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    .end local v5           #out:Ljava/io/FileOutputStream;
    .local v6, out:Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    const-string v9, "BarBeamService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startBarBeam : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-byte v11, p0, Landroid/app/BarBeamService;->mBeamLength:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10

    if-eqz v6, :cond_2

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_f

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Landroid/app/BarBeamService;->setLEDNotification(Z)V

    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .local v4, l:Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_2

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #l:Landroid/app/BarBeamService$Listener;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    :goto_3
    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :cond_3
    :goto_4
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    return-void

    :catch_1
    move-exception v1

    .local v1, ex:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v7, :cond_1

    :try_start_c
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    :goto_6
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v9

    :catch_3
    move-exception v1

    .local v1, ex:Ljava/io/IOException;
    :goto_7
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v7, :cond_1

    :try_start_f
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    :goto_8
    :try_start_11
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v7, :cond_1

    :try_start_12
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v1

    :try_start_13
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_2
    move-exception v9

    :goto_9
    if-eqz v7, :cond_4

    :try_start_14
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e

    :cond_4
    :goto_a
    :try_start_15
    throw v9
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :catch_7
    move-exception v1

    .local v1, ex:Ljava/io/FileNotFoundException;
    :goto_b
    :try_start_16
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    if-eqz v5, :cond_3

    :try_start_17
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_9

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Landroid/app/BarBeamService;->setLEDNotification(Z)V

    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8

    :try_start_18
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .restart local v4       #l:Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_c

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #l:Landroid/app/BarBeamService$Listener;
    :catchall_3
    move-exception v9

    monitor-exit v10
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :try_start_19
    throw v9
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8

    :catch_8
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    :try_start_1a
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto :goto_4

    .end local v1           #ex:Ljava/lang/Exception;
    :catch_9
    move-exception v1

    .local v1, ex:Ljava/io/IOException;
    :goto_d
    :try_start_1b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    if-eqz v5, :cond_3

    :try_start_1c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_b

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Landroid/app/BarBeamService;->setLEDNotification(Z)V

    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_a

    :try_start_1d
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .restart local v4       #l:Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_e

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #l:Landroid/app/BarBeamService$Listener;
    :catchall_4
    move-exception v9

    monitor-exit v10
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    :try_start_1e
    throw v9
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_a

    :catch_a
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    :try_start_1f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    goto/16 :goto_4

    .end local v1           #ex:Ljava/lang/Exception;
    :catch_b
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    :goto_f
    :try_start_20
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    if-eqz v5, :cond_3

    :try_start_21
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_d

    const/4 v9, 0x1

    invoke-direct {p0, v9}, Landroid/app/BarBeamService;->setLEDNotification(Z)V

    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c

    :try_start_22
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .restart local v4       #l:Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_10

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #l:Landroid/app/BarBeamService$Listener;
    :catchall_5
    move-exception v9

    monitor-exit v10
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    :try_start_23
    throw v9
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_c

    :catch_c
    move-exception v1

    :try_start_24
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .end local v1           #ex:Ljava/lang/Exception;
    :catch_d
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1           #ex:Ljava/lang/Exception;
    :cond_5
    :goto_11
    throw v9

    :catch_e
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    goto/16 :goto_a

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_6
    move-exception v9

    :goto_12
    if-eqz v5, :cond_5

    :try_start_25
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v10, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v10, :cond_7

    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/app/BarBeamService;->setLEDNotification(Z)V

    iget-object v11, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_d

    :try_start_26
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .restart local v4       #l:Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_13

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #l:Landroid/app/BarBeamService$Listener;
    :catchall_7
    move-exception v10

    monitor-exit v11
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    :try_start_27
    throw v10
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_d

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_6
    :try_start_28
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    monitor-exit v11
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    :try_start_29
    iget-object v10, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v10, v10, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3           #i$:Ljava/util/Iterator;
    :cond_7
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_d

    goto :goto_11

    .local v1, ex:Ljava/io/FileNotFoundException;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_8
    :try_start_2a
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v10
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_3

    :try_start_2b
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3           #i$:Ljava/util/Iterator;
    :cond_9
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_8

    goto/16 :goto_4

    .local v1, ex:Ljava/io/IOException;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_a
    :try_start_2c
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v10
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_4

    :try_start_2d
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3           #i$:Ljava/util/Iterator;
    :cond_b
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_a

    goto/16 :goto_4

    .local v1, ex:Ljava/lang/Exception;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_c
    :try_start_2e
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v10
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_5

    :try_start_2f
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3           #i$:Ljava/util/Iterator;
    :cond_d
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_c

    goto/16 :goto_4

    .end local v1           #ex:Ljava/lang/Exception;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :cond_e
    :try_start_30
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v10
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    :try_start_31
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3           #i$:Ljava/util/Iterator;
    :cond_f
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_0

    goto/16 :goto_3

    :catchall_8
    move-exception v9

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .end local v7           #out_en:Ljava/io/FileWriter;
    .restart local v8       #out_en:Ljava/io/FileWriter;
    :catch_f
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    :try_start_32
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_9

    goto/16 :goto_0

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_9
    move-exception v9

    move-object v7, v8

    .end local v8           #out_en:Ljava/io/FileWriter;
    .restart local v7       #out_en:Ljava/io/FileWriter;
    goto/16 :goto_6

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catchall_a
    move-exception v9

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_12

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_10
    move-exception v1

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_f

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_11
    move-exception v1

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_d

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_12
    move-exception v1

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_b

    .end local v7           #out_en:Ljava/io/FileWriter;
    .restart local v8       #out_en:Ljava/io/FileWriter;
    :catchall_b
    move-exception v9

    move-object v7, v8

    .end local v8           #out_en:Ljava/io/FileWriter;
    .restart local v7       #out_en:Ljava/io/FileWriter;
    goto/16 :goto_9

    .end local v7           #out_en:Ljava/io/FileWriter;
    .restart local v8       #out_en:Ljava/io/FileWriter;
    :catch_13
    move-exception v1

    move-object v7, v8

    .end local v8           #out_en:Ljava/io/FileWriter;
    .restart local v7       #out_en:Ljava/io/FileWriter;
    goto/16 :goto_8

    .end local v7           #out_en:Ljava/io/FileWriter;
    .restart local v8       #out_en:Ljava/io/FileWriter;
    :catch_14
    move-exception v1

    move-object v7, v8

    .end local v8           #out_en:Ljava/io/FileWriter;
    .restart local v7       #out_en:Ljava/io/FileWriter;
    goto/16 :goto_7

    .end local v7           #out_en:Ljava/io/FileWriter;
    .restart local v8       #out_en:Ljava/io/FileWriter;
    :catch_15
    move-exception v1

    move-object v7, v8

    .end local v8           #out_en:Ljava/io/FileWriter;
    .restart local v7       #out_en:Ljava/io/FileWriter;
    goto/16 :goto_5
.end method

.method public startBeaming_repeat(I)V
    .locals 14
    .parameter "repeatCount"

    .prologue
    const/4 v12, 0x1

    const-string v9, "BarBeamService"

    const-string v10, "startBeaming"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.sec.BARCODE_READ"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v9, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z

    const/4 v7, 0x0

    .local v7, out_en:Ljava/io/FileWriter;
    const/4 v5, 0x0

    .local v5, out:Ljava/io/FileOutputStream;
    const/4 v9, 0x2

    new-array v0, v9, [B

    .local v0, data:[B
    new-array v2, v12, [C

    .local v2, flag:[C
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/io/FileWriter;

    const-string v9, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .end local v7           #out_en:Ljava/io/FileWriter;
    .local v8, out_en:Ljava/io/FileWriter;
    const/4 v9, 0x0

    const/16 v10, 0x31

    :try_start_1
    aput-char v10, v2, v9

    invoke-virtual {v8, v2}, Ljava/io/Writer;->write([C)V

    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13

    if-eqz v8, :cond_0

    :try_start_2
    invoke-virtual {v8}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    :cond_0
    :goto_0
    move-object v7, v8

    .end local v8           #out_en:Ljava/io/FileWriter;
    .restart local v7       #out_en:Ljava/io/FileWriter;
    :cond_1
    :goto_1
    const/4 v9, 0x0

    const/4 v10, -0x1

    :try_start_3
    aput-byte v10, v0, v9

    const/4 v9, 0x1

    int-to-byte v10, p1

    aput-byte v10, v0, v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v9, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b

    .end local v5           #out:Ljava/io/FileOutputStream;
    .local v6, out:Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    const-string v9, "BarBeamService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startBarBeam : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-byte v11, p0, Landroid/app/BarBeamService;->mBeamLength:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10

    if-eqz v6, :cond_2

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_f

    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .local v4, l:Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_2

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #l:Landroid/app/BarBeamService$Listener;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .end local v1           #ex:Ljava/lang/Exception;
    :cond_2
    :goto_3
    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    :cond_3
    :goto_4
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    return-void

    :catch_1
    move-exception v1

    .local v1, ex:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v7, :cond_1

    :try_start_c
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v9

    :goto_6
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v9

    :catch_3
    move-exception v1

    .local v1, ex:Ljava/io/IOException;
    :goto_7
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    if-eqz v7, :cond_1

    :try_start_f
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_1

    :catch_4
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    :try_start_10
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    goto/16 :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    :goto_8
    :try_start_11
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v7, :cond_1

    :try_start_12
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_1

    :catch_6
    move-exception v1

    :try_start_13
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    goto/16 :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_2
    move-exception v9

    :goto_9
    if-eqz v7, :cond_4

    :try_start_14
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e

    :cond_4
    :goto_a
    :try_start_15
    throw v9
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :catch_7
    move-exception v1

    .local v1, ex:Ljava/io/FileNotFoundException;
    :goto_b
    :try_start_16
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    if-eqz v5, :cond_3

    :try_start_17
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_9

    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_8

    :try_start_18
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .restart local v4       #l:Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_c

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #l:Landroid/app/BarBeamService$Listener;
    :catchall_3
    move-exception v9

    monitor-exit v10
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :try_start_19
    throw v9
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8

    :catch_8
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    :try_start_1a
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto :goto_4

    .end local v1           #ex:Ljava/lang/Exception;
    :catch_9
    move-exception v1

    .local v1, ex:Ljava/io/IOException;
    :goto_d
    :try_start_1b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_6

    if-eqz v5, :cond_3

    :try_start_1c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_b

    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_a

    :try_start_1d
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .restart local v4       #l:Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_e

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #l:Landroid/app/BarBeamService$Listener;
    :catchall_4
    move-exception v9

    monitor-exit v10
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    :try_start_1e
    throw v9
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_a

    :catch_a
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    :try_start_1f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    goto/16 :goto_4

    .end local v1           #ex:Ljava/lang/Exception;
    :catch_b
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    :goto_f
    :try_start_20
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    if-eqz v5, :cond_3

    :try_start_21
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_d

    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c

    :try_start_22
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .restart local v4       #l:Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_10

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #l:Landroid/app/BarBeamService$Listener;
    :catchall_5
    move-exception v9

    monitor-exit v10
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_5

    :try_start_23
    throw v9
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_c

    :catch_c
    move-exception v1

    :try_start_24
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_4

    .end local v1           #ex:Ljava/lang/Exception;
    :catch_d
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .end local v1           #ex:Ljava/lang/Exception;
    :cond_5
    :goto_11
    throw v9

    :catch_e
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    goto/16 :goto_a

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_6
    move-exception v9

    :goto_12
    if-eqz v5, :cond_5

    :try_start_25
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v10, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v10, :cond_7

    iget-object v11, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_d

    :try_start_26
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .restart local v4       #l:Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_13

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #l:Landroid/app/BarBeamService$Listener;
    :catchall_7
    move-exception v10

    monitor-exit v11
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    :try_start_27
    throw v10
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_d

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_6
    :try_start_28
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    monitor-exit v11
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    :try_start_29
    iget-object v10, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v10, v10, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3           #i$:Ljava/util/Iterator;
    :cond_7
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_d

    goto :goto_11

    .local v1, ex:Ljava/io/FileNotFoundException;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_8
    :try_start_2a
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v10
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_3

    :try_start_2b
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3           #i$:Ljava/util/Iterator;
    :cond_9
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_8

    goto/16 :goto_4

    .local v1, ex:Ljava/io/IOException;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_a
    :try_start_2c
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v10
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_4

    :try_start_2d
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3           #i$:Ljava/util/Iterator;
    :cond_b
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_a

    goto/16 :goto_4

    .local v1, ex:Ljava/lang/Exception;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_c
    :try_start_2e
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v10
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_5

    :try_start_2f
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3           #i$:Ljava/util/Iterator;
    :cond_d
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_c

    goto/16 :goto_4

    .end local v1           #ex:Ljava/lang/Exception;
    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :cond_e
    :try_start_30
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v10
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_0

    :try_start_31
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v3           #i$:Ljava/util/Iterator;
    :cond_f
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_31} :catch_0

    goto/16 :goto_3

    :catchall_8
    move-exception v9

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .end local v7           #out_en:Ljava/io/FileWriter;
    .restart local v8       #out_en:Ljava/io/FileWriter;
    :catch_f
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    :try_start_32
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_9

    goto/16 :goto_0

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_9
    move-exception v9

    move-object v7, v8

    .end local v8           #out_en:Ljava/io/FileWriter;
    .restart local v7       #out_en:Ljava/io/FileWriter;
    goto/16 :goto_6

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catchall_a
    move-exception v9

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_12

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_10
    move-exception v1

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_f

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_11
    move-exception v1

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_d

    .end local v5           #out:Ljava/io/FileOutputStream;
    .restart local v6       #out:Ljava/io/FileOutputStream;
    :catch_12
    move-exception v1

    move-object v5, v6

    .end local v6           #out:Ljava/io/FileOutputStream;
    .restart local v5       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_b

    .end local v7           #out_en:Ljava/io/FileWriter;
    .restart local v8       #out_en:Ljava/io/FileWriter;
    :catchall_b
    move-exception v9

    move-object v7, v8

    .end local v8           #out_en:Ljava/io/FileWriter;
    .restart local v7       #out_en:Ljava/io/FileWriter;
    goto/16 :goto_9

    .end local v7           #out_en:Ljava/io/FileWriter;
    .restart local v8       #out_en:Ljava/io/FileWriter;
    :catch_13
    move-exception v1

    move-object v7, v8

    .end local v8           #out_en:Ljava/io/FileWriter;
    .restart local v7       #out_en:Ljava/io/FileWriter;
    goto/16 :goto_8

    .end local v7           #out_en:Ljava/io/FileWriter;
    .restart local v8       #out_en:Ljava/io/FileWriter;
    :catch_14
    move-exception v1

    move-object v7, v8

    .end local v8           #out_en:Ljava/io/FileWriter;
    .restart local v7       #out_en:Ljava/io/FileWriter;
    goto/16 :goto_7

    .end local v7           #out_en:Ljava/io/FileWriter;
    .restart local v8       #out_en:Ljava/io/FileWriter;
    :catch_15
    move-exception v1

    move-object v7, v8

    .end local v8           #out_en:Ljava/io/FileWriter;
    .restart local v7       #out_en:Ljava/io/FileWriter;
    goto/16 :goto_5
.end method

.method public stopBeaming()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const-string v7, "BarBeamService"

    const-string v8, "stopBarBeam"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.sec.BARCODE_READ"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .local v5, out_en:Ljava/io/FileWriter;
    const/4 v3, 0x0

    .local v3, out:Ljava/io/FileOutputStream;
    sget-boolean v7, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z

    const/4 v7, 0x2

    new-array v0, v7, [B

    .local v0, data:[B
    new-array v2, v10, [C

    .local v2, flag:[C
    monitor-enter p0

    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .end local v5           #out_en:Ljava/io/FileWriter;
    .local v6, out_en:Ljava/io/FileWriter;
    const/4 v7, 0x0

    const/16 v8, 0x30

    :try_start_1
    aput-char v8, v2, v7

    invoke-virtual {v6, v2}, Ljava/io/Writer;->write([C)V

    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_13

    if-eqz v6, :cond_0

    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    :cond_0
    :goto_0
    move-object v5, v6

    .end local v6           #out_en:Ljava/io/FileWriter;
    .restart local v5       #out_en:Ljava/io/FileWriter;
    :cond_1
    :goto_1
    const/4 v7, 0x0

    const/4 v8, -0x1

    :try_start_3
    aput-byte v8, v0, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-byte v8, v0, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v7, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .end local v3           #out:Ljava/io/FileOutputStream;
    .local v4, out:Ljava/io/FileOutputStream;
    :try_start_5
    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_10

    if-eqz v4, :cond_2

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_e

    :cond_2
    :goto_2
    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :cond_3
    :goto_3
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    return-void

    :catch_0
    move-exception v1

    .local v1, ex:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v5, :cond_1

    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_5
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    throw v7

    :catch_2
    move-exception v1

    .local v1, ex:Ljava/io/IOException;
    :goto_6
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v5, :cond_1

    :try_start_c
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_1

    :catch_3
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    :goto_7
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v5, :cond_1

    :try_start_f
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5

    goto :goto_1

    :catch_5
    move-exception v1

    :try_start_10
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_1

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    :goto_8
    if-eqz v5, :cond_4

    :try_start_11
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    :cond_4
    :goto_9
    :try_start_12
    throw v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :catch_6
    move-exception v1

    .local v1, ex:Ljava/io/FileNotFoundException;
    :goto_a
    :try_start_13
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    if-eqz v3, :cond_3

    :try_start_14
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    goto :goto_3

    :catch_7
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    :try_start_15
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_3

    .end local v1           #ex:Ljava/lang/Exception;
    :catch_8
    move-exception v1

    .local v1, ex:Ljava/io/IOException;
    :goto_b
    :try_start_16
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    if-eqz v3, :cond_3

    :try_start_17
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9

    goto :goto_3

    :catch_9
    move-exception v1

    .local v1, ex:Ljava/lang/Exception;
    :try_start_18
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_3

    .end local v1           #ex:Ljava/lang/Exception;
    :catch_a
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    :goto_c
    :try_start_19
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    if-eqz v3, :cond_3

    :try_start_1a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_b

    goto :goto_3

    :catch_b
    move-exception v1

    :try_start_1b
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto :goto_3

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_2
    move-exception v7

    :goto_d
    if-eqz v3, :cond_5

    :try_start_1c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_d

    :cond_5
    :goto_e
    :try_start_1d
    throw v7

    :catch_c
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .end local v1           #ex:Ljava/lang/Exception;
    :catch_d
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    goto :goto_e

    .end local v1           #ex:Ljava/lang/Exception;
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_e
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    :try_start_1e
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    goto/16 :goto_2

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_3
    move-exception v7

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .end local v5           #out_en:Ljava/io/FileWriter;
    .restart local v6       #out_en:Ljava/io/FileWriter;
    :catch_f
    move-exception v1

    .restart local v1       #ex:Ljava/lang/Exception;
    :try_start_1f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_4

    goto/16 :goto_0

    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_4
    move-exception v7

    move-object v5, v6

    .end local v6           #out_en:Ljava/io/FileWriter;
    .restart local v5       #out_en:Ljava/io/FileWriter;
    goto/16 :goto_5

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v7

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_d

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_10
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_c

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_11
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_b

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v4       #out:Ljava/io/FileOutputStream;
    :catch_12
    move-exception v1

    move-object v3, v4

    .end local v4           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    goto :goto_a

    .end local v5           #out_en:Ljava/io/FileWriter;
    .restart local v6       #out_en:Ljava/io/FileWriter;
    :catchall_6
    move-exception v7

    move-object v5, v6

    .end local v6           #out_en:Ljava/io/FileWriter;
    .restart local v5       #out_en:Ljava/io/FileWriter;
    goto :goto_8

    .end local v5           #out_en:Ljava/io/FileWriter;
    .restart local v6       #out_en:Ljava/io/FileWriter;
    :catch_13
    move-exception v1

    move-object v5, v6

    .end local v6           #out_en:Ljava/io/FileWriter;
    .restart local v5       #out_en:Ljava/io/FileWriter;
    goto/16 :goto_7

    .end local v5           #out_en:Ljava/io/FileWriter;
    .restart local v6       #out_en:Ljava/io/FileWriter;
    :catch_14
    move-exception v1

    move-object v5, v6

    .end local v6           #out_en:Ljava/io/FileWriter;
    .restart local v5       #out_en:Ljava/io/FileWriter;
    goto/16 :goto_6

    .end local v5           #out_en:Ljava/io/FileWriter;
    .restart local v6       #out_en:Ljava/io/FileWriter;
    :catch_15
    move-exception v1

    move-object v5, v6

    .end local v6           #out_en:Ljava/io/FileWriter;
    .restart local v5       #out_en:Ljava/io/FileWriter;
    goto/16 :goto_4
.end method
