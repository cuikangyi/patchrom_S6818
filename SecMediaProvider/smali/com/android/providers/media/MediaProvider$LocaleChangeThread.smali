.class Lcom/android/providers/media/MediaProvider$LocaleChangeThread;
.super Ljava/lang/Thread;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocaleChangeThread"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 8326
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 8327
    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->context:Landroid/content/Context;

    .line 8328
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 8333
    const-string v0, "LocaleChangeThread"

    invoke-super {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 8335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 8336
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Start LocaleChangeThread"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8340
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider;->access$600(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 8341
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider;->access$600(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v0

    const-string v4, "external"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 8342
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8345
    if-eqz v0, :cond_0

    .line 8346
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 8350
    invoke-static {}, Lcom/android/providers/media/SecDatabaseUtils;->setChangedLocale()V

    .line 8353
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 8358
    :goto_0
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v5, "Intent.ACTION_LOCALE_CHANGED : audio_meta SET date_modified=0"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8360
    iget-object v1, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    .line 8361
    monitor-enter v1

    .line 8362
    :try_start_2
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 8363
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8365
    iget-object v1, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    .line 8366
    monitor-enter v1

    .line 8367
    :try_start_3
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 8368
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 8370
    const-string v0, "delete FROM audio_genres"

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 8371
    const-string v0, "UPDATE files SET date_modified=0 WHERE media_type=2;"

    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 8377
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8378
    const-string v1, "volume"

    const-string v4, "external"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8379
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->context:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider$LocaleChangeThread;->context:Landroid/content/Context;

    const-class v6, Lcom/android/providers/media/MediaScannerService;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 8381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 8382
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finish LocaleThread. Time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8384
    return-void

    .line 8342
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 8354
    :catch_0
    move-exception v1

    .line 8355
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Failed to setLocale()"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 8363
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 8368
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method
