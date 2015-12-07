.class Lcom/android/providers/media/MediaProvider$CleanerThread;
.super Ljava/lang/Thread;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CleanerThread"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private storage:Landroid/os/storage/StorageVolume;

.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Landroid/os/storage/StorageVolume;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "storage"
    .parameter "context"

    .prologue
    .line 338
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 339
    iput-object p2, p0, Lcom/android/providers/media/MediaProvider$CleanerThread;->storage:Landroid/os/storage/StorageVolume;

    .line 340
    iput-object p3, p0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    .line 341
    return-void
.end method

.method private isUsbMassStorageEnabled(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 344
    const-string v1, "storage"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 345
    .local v0, storageManager:Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    return v1
.end method

.method private savePlaylistTableConfiguration(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    .line 349
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "savePlaylistTableConfiguration started"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/4 v3, 0x0

    .line 352
    .local v3, ss1:Landroid/database/sqlite/SQLiteStatement;
    const/4 v4, 0x0

    .line 353
    .local v4, ss2:Landroid/database/sqlite/SQLiteStatement;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$500()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 354
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mExternalStorageSdPath is NULL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_0
    return-void

    .line 360
    :cond_0
    :try_start_0
    const-string v5, "CREATE TABLE IF NOT EXISTS audio_playlists_map_cache (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL,_data TEXT);"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 368
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INSERT INTO audio_playlists_map_cache ( _id, audio_id, playlist_id, play_order, _data ) SELECT audio_playlists_map._id, audio_playlists_map.audio_id, audio_playlists_map.playlist_id, audio_playlists_map.play_order, files._data FROM audio_playlists_map, files WHERE files._id = audio_playlists_map.audio_id AND files._data LIKE \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/%\';"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, sqlstatement1:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 372
    if-nez v3, :cond_3

    .line 390
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 391
    :cond_1
    if-eqz v4, :cond_2

    throw v4

    .line 392
    :cond_2
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "savePlaylistTableConfiguration finished"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 375
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 377
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DELETE FROM audio_playlists_map WHERE _id IN(SELECT audio_playlists_map._id FROM audio_playlists_map, files WHERE audio_playlists_map.audio_id = files._id AND files._data LIKE \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$500()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/%\' AND audio_playlists_map.playlist_id NOT IN (SELECT files._id FROM files WHERE files.name LIKE \'now playing list 0123456789%\'));"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, sqlstatement2:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    .line 380
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 383
    const-string v5, "DELETE FROM audio_playlists_map_cache WHERE playlist_id IN(SELECT files._id FROM files WHERE files.name LIKE \'now playing list 0123456789%\');"

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 390
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 391
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 392
    :cond_5
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "savePlaylistTableConfiguration finished"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    .end local v1           #sqlstatement1:Ljava/lang/String;
    .end local v2           #sqlstatement2:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 387
    .local v0, e:Landroid/database/SQLException;
    :try_start_2
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " savePlaylistTableConfiguration(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 391
    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 392
    :cond_7
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "savePlaylistTableConfiguration finished"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 390
    .end local v0           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 391
    :cond_8
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 392
    :cond_9
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "savePlaylistTableConfiguration finished"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v5
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 399
    const-string v20, "CleanerThread"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-super {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 400
    const-wide/16 v4, 0x0

    .local v4, beforeDeletingTime:J
    const-wide/16 v10, 0x0

    .local v10, deletingTime:J
    const-wide/16 v14, 0x0

    .local v14, updateTransactionTime:J
    const-wide/16 v8, 0x0

    .line 401
    .local v8, deleteTransactionTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 402
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Start CleanerThread"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    move-object/from16 v20, v0

    #getter for: Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/android/providers/media/MediaProvider;->access$600(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v21

    monitor-enter v21

    .line 405
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    move-object/from16 v20, v0

    #getter for: Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;
    invoke-static/range {v20 .. v20}, Lcom/android/providers/media/MediaProvider;->access$600(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;

    move-result-object v20

    const-string v22, "external"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 406
    .local v6, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "file://"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->storage:Landroid/os/storage/StorageVolume;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 408
    .local v16, uri:Landroid/net/Uri;
    const/4 v13, 0x0

    .line 409
    .local v13, result:I
    if-eqz v6, :cond_0

    .line 410
    invoke-virtual {v6}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 412
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "android.intent.action.MEDIA_SCANNER_STARTED"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #setter for: Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z
    invoke-static/range {v20 .. v21}, Lcom/android/providers/media/MediaProvider;->access$702(Lcom/android/providers/media/MediaProvider;Z)Z

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    #setter for: Lcom/android/providers/media/MediaProvider;->mDisableHomeSyncObjectCallbacks:Z
    invoke-static/range {v20 .. v21}, Lcom/android/providers/media/MediaProvider;->access$802(Lcom/android/providers/media/MediaProvider;Z)Z

    .line 416
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "deleting all entries for storage "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->storage:Landroid/os/storage/StorageVolume;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 421
    .local v17, values:Landroid/content/ContentValues;
    const-string v20, "_data"

    const-string v21, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v18, "storage_id=?"

    .line 423
    .local v18, where:Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->storage:Landroid/os/storage/StorageVolume;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/os/storage/StorageVolume;->getStorageId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    .line 425
    .local v19, whereArgs:[Ljava/lang/String;
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 427
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/providers/media/MediaProvider$CleanerThread;->savePlaylistTableConfiguration(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 429
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$200()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 430
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v20

    const-string v21, "mUnmountReceiver - we are under ShuttingDown, EJECT intent is skipped!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 459
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z
    invoke-static/range {v20 .. v21}, Lcom/android/providers/media/MediaProvider;->access$702(Lcom/android/providers/media/MediaProvider;Z)Z

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/android/providers/media/MediaProvider;->mDisableHomeSyncObjectCallbacks:Z
    invoke-static/range {v20 .. v21}, Lcom/android/providers/media/MediaProvider;->access$802(Lcom/android/providers/media/MediaProvider;Z)Z

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v10, v20, v4

    .line 465
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Finish CleanerThread. Deleted rows : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ". Time : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "ms ( U : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " D : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " )"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .end local v17           #values:Landroid/content/ContentValues;
    .end local v18           #where:Ljava/lang/String;
    .end local v19           #whereArgs:[Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "external"

    invoke-static/range {v21 .. v21}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "external"

    invoke-static/range {v21 .. v21}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "external"

    invoke-static/range {v21 .. v21}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "external"

    invoke-static/range {v21 .. v21}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v22, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/#/members"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 482
    .end local v7           #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    return-void

    .line 406
    .end local v6           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v13           #result:I
    .end local v16           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v20

    :try_start_2
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v20

    .line 431
    .restart local v6       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .restart local v7       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v13       #result:I
    .restart local v16       #uri:Landroid/net/Uri;
    .restart local v17       #values:Landroid/content/ContentValues;
    .restart local v18       #where:Ljava/lang/String;
    .restart local v19       #whereArgs:[Ljava/lang/String;
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider$CleanerThread;->isUsbMassStorageEnabled(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 432
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v20

    const-string v21, "mUnmountReceiver - UMS is enabled, EJECT intent is skipped!"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 456
    .end local v17           #values:Landroid/content/ContentValues;
    .end local v18           #where:Ljava/lang/String;
    .end local v19           #whereArgs:[Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 457
    .local v12, e:Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v20

    const-string v21, "exception deleting storage entries"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 459
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    new-instance v21, Landroid/content/Intent;

    const-string v22, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z
    invoke-static/range {v20 .. v21}, Lcom/android/providers/media/MediaProvider;->access$702(Lcom/android/providers/media/MediaProvider;Z)Z

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    #setter for: Lcom/android/providers/media/MediaProvider;->mDisableHomeSyncObjectCallbacks:Z
    invoke-static/range {v20 .. v21}, Lcom/android/providers/media/MediaProvider;->access$802(Lcom/android/providers/media/MediaProvider;Z)Z

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v10, v20, v4

    .line 465
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Finish CleanerThread. Deleted rows : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ". Time : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "ms ( U : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " D : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " )"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 435
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v17       #values:Landroid/content/ContentValues;
    .restart local v18       #where:Ljava/lang/String;
    .restart local v19       #whereArgs:[Ljava/lang/String;
    :cond_2
    :try_start_5
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v20

    const-string v21, "cleanerThread is going to update row-names with empty values"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 437
    const-string v20, "files"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 438
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v14, v20, v14

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/android/providers/media/MediaProvider;->createAudioDeleteTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, v7}, Lcom/android/providers/media/MediaProvider;->access$900(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 444
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v20

    const-string v21, "cleanerThread is going to delete rows"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 446
    const-string v20, "files"

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v7, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 447
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v8, v20, v8

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/android/providers/media/MediaProvider;->deleteAudioDeleteTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    invoke-static {v0, v7}, Lcom/android/providers/media/MediaProvider;->access$1000(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 451
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "deleted for storage "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->storage:Landroid/os/storage/StorageVolume;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 459
    .end local v17           #values:Landroid/content/ContentValues;
    .end local v18           #where:Ljava/lang/String;
    .end local v19           #whereArgs:[Ljava/lang/String;
    :catchall_1
    move-exception v20

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->context:Landroid/content/Context;

    move-object/from16 v21, v0

    new-instance v22, Landroid/content/Intent;

    const-string v23, "android.intent.action.MEDIA_SCANNER_FINISHED"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z
    invoke-static/range {v21 .. v22}, Lcom/android/providers/media/MediaProvider;->access$702(Lcom/android/providers/media/MediaProvider;Z)Z

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$CleanerThread;->this$0:Lcom/android/providers/media/MediaProvider;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Lcom/android/providers/media/MediaProvider;->mDisableHomeSyncObjectCallbacks:Z
    invoke-static/range {v21 .. v22}, Lcom/android/providers/media/MediaProvider;->access$802(Lcom/android/providers/media/MediaProvider;Z)Z

    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sub-long v10, v21, v4

    .line 465
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v21

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Finish CleanerThread. Deleted rows : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ". Time : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "ms ( U : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " D : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " )"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v20
.end method
