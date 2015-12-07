.class public Lcom/android/server/enterprise/auditlog/PartialFileNode;
.super Ljava/util/Observable;
.source "PartialFileNode.java"


# static fields
.field private static final ADAYINMILLISEC:J = 0x5265c00L

.field private static final D:Z = true

.field static FILESIZE:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "PartialFileNode"


# instance fields
.field private mChannel:Ljava/nio/channels/FileChannel;

.field private volatile mFile:Ljava/io/File;

.field private mLastLineLength:I

.field private volatile mMarkAsDeprecated:Z

.field private mPackageName:Ljava/lang/String;

.field private mRandomAccessFile:Ljava/io/RandomAccessFile;

.field private mTimestamp:J

.field private mTruncateFileAt:J

.field private mWriteBuffer:Ljava/nio/MappedByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-wide/32 v0, 0x80000

    sput-wide v0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->FILESIZE:J

    return-void
.end method

.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .parameter "file"
    .parameter "packageName"

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 79
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 81
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/PartialFileNode;->setTimestamp()V

    .line 82
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "path"
    .parameter "packageName"

    .prologue
    const-wide/16 v3, 0x0

    .line 58
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    .line 60
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 61
    .local v6, date:Ljava/util/Date;
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, suffix:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mLastLineLength:I

    .line 64
    iput-wide v3, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTimestamp:J

    .line 67
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    const-string v2, "rwd"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    .line 68
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    sget-wide v1, Lcom/android/server/enterprise/auditlog/PartialFileNode;->FILESIZE:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 69
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mChannel:Ljava/nio/channels/FileChannel;

    .line 70
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    long-to-int v4, v4

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    .line 71
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->mark()Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v7

    .line 73
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "PartialFileNode"

    const-string v1, "PartialFileNode.Exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v7, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/auditlog/PartialFileNode;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    return-void
.end method


# virtual methods
.method closeFile()V
    .locals 4

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTruncateFileAt:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 138
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;

    .line 139
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 140
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 141
    const-string v1, "PartialFileNode"

    const-string v2, "AUDITLOG WAS ABLE TO CLOSE THE FILE!"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PartialFileNode"

    const-string v2, "closeFile.Exception"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0
.end method

.method delete()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "PartialFileNode"

    const-string v1, "Delete File"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    .line 156
    :cond_0
    return-void
.end method

.method getFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    return-object v0
.end method

.method getFileSize()J
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 167
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method getTimestamp()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTimestamp:J

    return-wide v0
.end method

.method isDeprecated()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z

    return v0
.end method

.method declared-synchronized setDeprecated(Z)Z
    .locals 2
    .parameter "dep"

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    const-string v0, "PartialFileNode"

    const-string v1, "setDeprecated called"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 182
    :goto_0
    monitor-exit p0

    return v0

    .line 181
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mMarkAsDeprecated:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    const/4 v0, 0x1

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setTimestamp()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTimestamp:J

    .line 161
    :cond_0
    return-void
.end method

.method public tictacForDeprecation()V
    .locals 10

    .prologue
    .line 86
    new-instance v7, Lcom/android/server/enterprise/auditlog/PartialFileNode$1;

    invoke-direct {v7, p0}, Lcom/android/server/enterprise/auditlog/PartialFileNode$1;-><init>(Lcom/android/server/enterprise/auditlog/PartialFileNode;)V

    .line 100
    .local v7, tt:Ljava/util/TimerTask;
    new-instance v6, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v8, 0x1

    invoke-direct {v6, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    .line 101
    .local v6, ste:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 102
    .local v2, now:J
    iget-wide v8, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTimestamp:J

    sub-long v0, v2, v8

    .line 103
    .local v0, elapsedTime:J
    const-wide/32 v8, 0x5265c00

    sub-long v4, v8, v0

    .line 105
    .local v4, remainingTimeForDeprecation:J
    const-wide/16 v8, 0x3e8

    cmp-long v8, v4, v8

    if-gez v8, :cond_0

    .line 106
    const-wide/16 v4, 0x3e8

    .line 109
    :cond_0
    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v7, v4, v5, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 110
    return-void
.end method

.method write(Ljava/lang/String;)Z
    .locals 5
    .parameter "data"

    .prologue
    .line 118
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 119
    const/4 v1, 0x0

    .line 131
    :goto_0
    return v1

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iput v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mLastLineLength:I

    .line 123
    iget-wide v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTruncateFileAt:J

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTruncateFileAt:J

    .line 124
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mRandomAccessFile:Ljava/io/RandomAccessFile;

    iget-wide v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mTruncateFileAt:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 125
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mWriteBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PartialFileNode"

    const-string v2, "write.Exception"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/PartialFileNode;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_1
.end method
