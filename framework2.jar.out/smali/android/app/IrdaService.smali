.class public Landroid/app/IrdaService;
.super Landroid/app/IIrdaService$Stub;
.source "IrdaService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IrdaService"

.field private static bEnabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mStr:Ljava/lang/String;

.field private read_ir_send:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/IIrdaService$Stub;-><init>()V

    .line 56
    const-string v0, "IrdaService"

    const-string v1, "IrdaService : Create"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-object p1, p0, Landroid/app/IrdaService;->mContext:Landroid/content/Context;

    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/IrdaService;->bEnabled:Z

    .line 71
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 189
    invoke-super {p0}, Landroid/os/Binder;->finalize()V

    .line 190
    const-string v0, "IrdaService"

    const-string v1, "IrdaService : finalize"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public read_irsend()Ljava/lang/String;
    .locals 8

    .prologue
    .line 109
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v1, irsend_value:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 111
    .local v2, reader:Ljava/io/BufferedReader;
    const-string v5, ""

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 118
    monitor-enter p0

    .line 120
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/sec/sec_ir/ir_send"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x400

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 122
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 123
    .local v4, temp:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 124
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 127
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #temp:Ljava/lang/String;
    .local v0, ex:Ljava/io/FileNotFoundException;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    if-eqz v2, :cond_0

    .line 135
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 136
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 137
    const-string v5, "IrdaService"

    const-string v6, "IrdaService READ COMPLETE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 143
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    :try_start_4
    iget-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v5

    .line 133
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #temp:Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_3

    .line 135
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 136
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 137
    const-string v5, "IrdaService"

    const-string v6, "IrdaService READ COMPLETE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    .line 140
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 138
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 139
    .local v0, ex:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v2, v3

    .line 140
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 138
    .end local v4           #temp:Ljava/lang/String;
    .local v0, ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 139
    .local v0, ex:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 144
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v5

    .line 128
    :catch_3
    move-exception v0

    .line 129
    .restart local v0       #ex:Ljava/io/IOException;
    :goto_4
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 133
    if-eqz v2, :cond_0

    .line 135
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 136
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 137
    const-string v5, "IrdaService"

    const-string v6, "IrdaService READ COMPLETE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    .line 138
    :catch_4
    move-exception v0

    .line 139
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 130
    .end local v0           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 131
    .local v0, ex:Ljava/lang/Exception;
    :goto_5
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 133
    if-eqz v2, :cond_0

    .line 135
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 136
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 137
    const-string v5, "IrdaService"

    const-string v6, "IrdaService READ COMPLETE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_2

    .line 138
    :catch_6
    move-exception v0

    .line 139
    .local v0, ex:Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_2

    .line 133
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    :goto_6
    if-eqz v2, :cond_2

    .line 135
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 136
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 137
    const-string v6, "IrdaService"

    const-string v7, "IrdaService READ COMPLETE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 140
    :cond_2
    :goto_7
    :try_start_f
    throw v5

    .line 138
    :catch_7
    move-exception v0

    .line 139
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_7

    .line 144
    .end local v0           #ex:Ljava/io/IOException;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #temp:Ljava/lang/String;
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 133
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catchall_3
    move-exception v5

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_6

    .line 130
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 128
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 126
    .end local v4           #temp:Ljava/lang/String;
    :catch_a
    move-exception v0

    goto/16 :goto_1

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #temp:Ljava/lang/String;
    :cond_3
    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method public write_irsend(Ljava/lang/String;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 81
    .local v1, out:Ljava/io/FileWriter;
    monitor-enter p0

    .line 83
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 84
    .local v3, utf8:[B
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Landroid/app/IrdaService;->mStr:Ljava/lang/String;

    .line 85
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/sys/class/sec/sec_ir/ir_send"

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 86
    .end local v1           #out:Ljava/io/FileWriter;
    .local v2, out:Ljava/io/FileWriter;
    :try_start_1
    iget-object v4, p0, Landroid/app/IrdaService;->mStr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 88
    const-string v4, "IrdaService"

    const-string v5, "IrdaService WRITE COMPLETE"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 97
    if-eqz v2, :cond_2

    .line 99
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 105
    .end local v2           #out:Ljava/io/FileWriter;
    .end local v3           #utf8:[B
    .restart local v1       #out:Ljava/io/FileWriter;
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    return-void

    .line 100
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    .restart local v3       #utf8:[B
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 102
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_0

    .line 90
    .end local v3           #utf8:[B
    :catch_1
    move-exception v0

    .line 91
    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 97
    if-eqz v1, :cond_0

    .line 99
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 100
    :catch_2
    move-exception v4

    goto :goto_0

    .line 92
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 93
    .local v0, ex:Ljava/io/IOException;
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 97
    if-eqz v1, :cond_0

    .line 99
    :try_start_7
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 100
    :catch_4
    move-exception v4

    goto :goto_0

    .line 94
    .end local v0           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 95
    .local v0, ex:Ljava/lang/Exception;
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 97
    if-eqz v1, :cond_0

    .line 99
    :try_start_9
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_0

    .line 100
    :catch_6
    move-exception v4

    goto :goto_0

    .line 97
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_4
    if-eqz v1, :cond_1

    .line 99
    :try_start_a
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 102
    :cond_1
    :goto_5
    :try_start_b
    throw v4

    .line 105
    :catchall_1
    move-exception v4

    :goto_6
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v4

    .line 100
    :catch_7
    move-exception v5

    goto :goto_5

    .line 105
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    .restart local v3       #utf8:[B
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_6

    .line 97
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catchall_3
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_4

    .line 94
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_3

    .line 92
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_2

    .line 90
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_1

    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :cond_2
    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_0
.end method
