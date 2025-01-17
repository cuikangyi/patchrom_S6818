.class public Lcom/android/server/enterprise/auditlog/LowLevelLog;
.super Ljava/lang/Thread;
.source "LowLevelLog.java"


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "LowLevelLog"


# instance fields
.field private lastLog:Ljava/lang/String;

.field private log:Ljava/lang/String;

.field private mRun:Z

.field private startLog:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->mRun:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->log:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->lastLog:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->startLog:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v11, 0x0

    .local v11, process:Ljava/lang/Process;
    const/4 v9, 0x0

    .local v9, isr:Ljava/io/InputStreamReader;
    const/4 v6, 0x0

    .local v6, br:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->mRun:Z

    if-eqz v0, :cond_8

    const-wide/16 v0, 0x9c4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/dmesg"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v11

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v11}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .end local v9           #isr:Ljava/io/InputStreamReader;
    .local v10, isr:Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    .end local v6           #br:Ljava/io/BufferedReader;
    .local v7, br:Ljava/io/BufferedReader;
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->startLog:Z

    :cond_1
    :goto_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->log:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->lastLog:Ljava/lang/String;

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->startLog:Z

    :cond_2
    :goto_3
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->startLog:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "KERNEL"

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->log:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->log:Ljava/lang/String;

    const/16 v13, 0x5d

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x2

    iget-object v13, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->log:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v5, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->log:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->log:Ljava/lang/String;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->log:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->lastLog:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    move-object v6, v7

    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #isr:Ljava/io/InputStreamReader;
    .local v8, e:Ljava/lang/Exception;
    .restart local v9       #isr:Ljava/io/InputStreamReader;
    :goto_4
    :try_start_4
    const-string v0, "LowLevelLog"

    const-string v1, "run.Exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/Process;->exitValue()I
    :try_end_5
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_1
    move-exception v8

    .local v8, e:Ljava/lang/IllegalThreadStateException;
    const-string v0, "LowLevelLog"

    const-string v1, "IllegalThreadStateException"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    goto/16 :goto_0

    .end local v8           #e:Ljava/lang/IllegalThreadStateException;
    :catch_2
    move-exception v8

    .local v8, e:Ljava/lang/InterruptedException;
    const-string v0, "LowLevelLog"

    const-string v1, "InterruptedException"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v8           #e:Ljava/lang/InterruptedException;
    .end local v9           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v10       #isr:Ljava/io/InputStreamReader;
    :cond_3
    :try_start_6
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->log:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->lastLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->startLog:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->startLog:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object v6, v7

    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #isr:Ljava/io/InputStreamReader;
    .restart local v9       #isr:Ljava/io/InputStreamReader;
    :goto_5
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/Process;->exitValue()I
    :try_end_7
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_4
    :goto_6
    throw v0

    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v9           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v10       #isr:Ljava/io/InputStreamReader;
    :cond_5
    :try_start_8
    iget-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->startLog:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->lastLog:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_6
    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    if-eqz v11, :cond_7

    invoke-virtual {v11}, Ljava/lang/Process;->exitValue()I
    :try_end_9
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    :cond_7
    :goto_7
    move-object v6, v7

    .end local v7           #br:Ljava/io/BufferedReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #isr:Ljava/io/InputStreamReader;
    .restart local v9       #isr:Ljava/io/InputStreamReader;
    goto/16 :goto_0

    :cond_8
    return-void

    :catch_3
    move-exception v8

    .local v8, e:Ljava/lang/IllegalThreadStateException;
    const-string v1, "LowLevelLog"

    const-string v2, "IllegalThreadStateException"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    goto :goto_6

    .end local v8           #e:Ljava/lang/IllegalThreadStateException;
    :catch_4
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    const-string v1, "LowLevelLog"

    const-string v2, "run.Exception"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v1

    invoke-virtual {v1, v8, v14}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_6

    :catch_5
    move-exception v8

    const-string v0, "LowLevelLog"

    const-string v1, "run.Exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    invoke-virtual {v0, v8, v14}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #isr:Ljava/io/InputStreamReader;
    .restart local v7       #br:Ljava/io/BufferedReader;
    .restart local v10       #isr:Ljava/io/InputStreamReader;
    :catch_6
    move-exception v8

    .local v8, e:Ljava/lang/IllegalThreadStateException;
    const-string v0, "LowLevelLog"

    const-string v1, "IllegalThreadStateException"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Process;->destroy()V

    goto :goto_7

    .end local v8           #e:Ljava/lang/IllegalThreadStateException;
    :catch_7
    move-exception v8

    .local v8, e:Ljava/lang/Exception;
    const-string v0, "LowLevelLog"

    const-string v1, "run.Exception"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object v0

    invoke-virtual {v0, v8, v14}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_7

    .end local v7           #br:Ljava/io/BufferedReader;
    .end local v8           #e:Ljava/lang/Exception;
    .end local v10           #isr:Ljava/io/InputStreamReader;
    .restart local v6       #br:Ljava/io/BufferedReader;
    .restart local v9       #isr:Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v0

    goto :goto_5

    .end local v9           #isr:Ljava/io/InputStreamReader;
    .restart local v10       #isr:Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v0

    move-object v9, v10

    .end local v10           #isr:Ljava/io/InputStreamReader;
    .restart local v9       #isr:Ljava/io/InputStreamReader;
    goto :goto_5

    :catch_8
    move-exception v8

    goto/16 :goto_4

    .end local v9           #isr:Ljava/io/InputStreamReader;
    .restart local v10       #isr:Ljava/io/InputStreamReader;
    :catch_9
    move-exception v8

    move-object v9, v10

    .end local v10           #isr:Ljava/io/InputStreamReader;
    .restart local v9       #isr:Ljava/io/InputStreamReader;
    goto/16 :goto_4
.end method

.method public stopThread()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/auditlog/LowLevelLog;->mRun:Z

    return-void
.end method
