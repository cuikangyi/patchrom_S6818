.class Landroid/net/http/ConnectionThread;
.super Ljava/lang/Thread;
.source "ConnectionThread.java"


# static fields
.field static final WAIT_TICK:I = 0x3e8

.field static final WAIT_TIMEOUT:I = 0x1388


# instance fields
.field mConnection:Landroid/net/http/Connection;

.field private mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

.field private mContext:Landroid/content/Context;

.field mCurrentThreadTime:J

.field private mId:I

.field private mRequestFeeder:Landroid/net/http/RequestFeeder;

.field private volatile mRunning:Z

.field mTotalThreadTime:J

.field private mWaiting:Z


# direct methods
.method constructor <init>(Landroid/content/Context;ILandroid/net/http/RequestQueue$ConnectionManager;Landroid/net/http/RequestFeeder;)V
    .locals 2
    .parameter "context"
    .parameter "id"
    .parameter "connectionManager"
    .parameter "requestFeeder"

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    iput-object p1, p0, Landroid/net/http/ConnectionThread;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput p2, p0, Landroid/net/http/ConnectionThread;->mId:I

    iput-object p3, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    iput-object p4, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    return-void
.end method


# virtual methods
.method requestStop()V
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    iget-object v0, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const-wide/16 v7, 0x0

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    iput-wide v7, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    iput-wide v7, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    :cond_0
    :goto_0
    iget-boolean v3, p0, Landroid/net/http/ConnectionThread;->mRunning:Z

    if-eqz v3, :cond_6

    iget-wide v3, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    :cond_1
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v3}, Landroid/net/http/RequestFeeder;->getRequest()Landroid/net/http/Request;

    move-result-object v0

    .local v0, request:Landroid/net/http/Request;
    if-nez v0, :cond_3

    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v4

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z

    iget-wide v5, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    :cond_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_3
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mContext:Landroid/content/Context;

    iget-object v5, v0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v3, v4, v5}, Landroid/net/http/RequestQueue$ConnectionManager;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;)Landroid/net/http/Connection;

    move-result-object v3

    iput-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v3, v0}, Landroid/net/http/Connection;->processRequests(Landroid/net/http/Request;)V

    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v3}, Landroid/net/http/Connection;->getCanPersist()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnectionManager:Landroid/net/http/RequestQueue$ConnectionManager;

    iget-object v4, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-interface {v3, v4}, Landroid/net/http/RequestQueue$ConnectionManager;->recycleConnection(Landroid/net/http/Connection;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v3}, Landroid/net/http/Connection;->closeConnection()V

    :cond_4
    :goto_2
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    iget-wide v3, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    cmp-long v3, v3, v7

    if-lez v3, :cond_0

    iget-wide v1, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    .local v1, start:J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    iget-wide v3, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    iget-wide v5, p0, Landroid/net/http/ConnectionThread;->mCurrentThreadTime:J

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/net/http/ConnectionThread;->mTotalThreadTime:J

    goto :goto_0

    .end local v1           #start:J
    :cond_5
    iget-object v3, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v3}, Landroid/net/http/Connection;->closeConnection()V

    goto :goto_2

    .end local v0           #request:Landroid/net/http/Request;
    :cond_6
    return-void

    .restart local v0       #request:Landroid/net/http/Request;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    if-nez v2, :cond_0

    const-string v1, ""

    .local v1, con:Ljava/lang/String;
    :goto_0
    iget-boolean v2, p0, Landroid/net/http/ConnectionThread;->mWaiting:Z

    if-eqz v2, :cond_1

    const-string v0, "w"

    .local v0, active:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/http/ConnectionThread;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .end local v0           #active:Ljava/lang/String;
    .end local v1           #con:Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/net/http/ConnectionThread;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v2}, Landroid/net/http/Connection;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .restart local v1       #con:Ljava/lang/String;
    :cond_1
    const-string v0, "a"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v1           #con:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
