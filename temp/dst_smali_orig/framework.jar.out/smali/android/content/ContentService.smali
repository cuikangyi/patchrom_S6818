.class public final Landroid/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentService$ObserverNode;,
        Landroid/content/ContentService$ObserverCall;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFactoryTest:Z

.field private final mRootNode:Landroid/content/ContentService$ObserverNode;

.field private mSyncManager:Landroid/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    new-instance v0, Landroid/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Landroid/content/ContentService;->mFactoryTest:Z

    return-void
.end method

.method private getSyncManager()Landroid/content/SyncManager;
    .locals 5

    .prologue
    iget-object v2, p0, Landroid/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/SyncManager;

    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Landroid/content/ContentService;->mFactoryTest:Z

    invoke-direct {v1, v3, v4}, Landroid/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    monitor-exit v2

    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static main(Landroid/content/Context;Z)Landroid/content/ContentService;
    .locals 2
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    new-instance v0, Landroid/content/ContentService;

    invoke-direct {v0, p0, p1}, Landroid/content/ContentService;-><init>(Landroid/content/Context;Z)V

    .local v0, service:Landroid/content/ContentService;
    const-string v1, "content"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 9
    .parameter "account"
    .parameter "authority"
    .parameter "extras"
    .parameter "pollFrequency"

    .prologue
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string v3, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v2

    .local v2, userId:I
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v7

    .local v7, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/content/SyncStorageEngine;->addPeriodicSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7, v8}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v7, v8}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .locals 4
    .parameter "mask"
    .parameter "callback"

    .prologue
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-void

    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 5
    .parameter "account"
    .parameter "authority"

    .prologue
    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v3

    .local v3, userId:I
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, v3, p2}, Landroid/content/SyncManager;->clearScheduledSyncOperations(Landroid/accounts/Account;ILjava/lang/String;)V

    invoke-virtual {v2, p1, v3, p2}, Landroid/content/SyncManager;->cancelActiveSync(Landroid/accounts/Account;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-void

    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "caller doesn\'t have the DUMP permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v11

    .local v11, identityToken:J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    if-nez v2, :cond_0

    const-string v2, "No SyncManager created!  (Disk full?)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v2, "Observer tree:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x2

    :try_start_2
    new-array v8, v2, [I

    .local v8, counts:[I
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .local v9, pidCounts:Landroid/util/SparseIntArray;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    const-string v6, ""

    const-string v7, "  "

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v2 .. v9}, Landroid/content/ContentService$ObserverNode;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILandroid/util/SparseIntArray;)V

    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .local v14, sorted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v10, v2, :cond_1

    invoke-virtual {v9, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .end local v8           #counts:[I
    .end local v9           #pidCounts:Landroid/util/SparseIntArray;
    .end local v10           #i:I
    .end local v14           #sorted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    invoke-static {v11, v12}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v11           #identityToken:J
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v8       #counts:[I
    .restart local v9       #pidCounts:Landroid/util/SparseIntArray;
    .restart local v10       #i:I
    .restart local v11       #identityToken:J
    .restart local v14       #sorted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_5
    new-instance v2, Landroid/content/ContentService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v9}, Landroid/content/ContentService$1;-><init>(Landroid/content/ContentService;Landroid/util/SparseIntArray;)V

    invoke-static {v14, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_2

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .local v13, pid:I
    const-string v2, "  pid "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v13}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " observers"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .end local v13           #pid:I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    const-string v2, " Total number of nodes: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x0

    aget v2, v8, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    const-string v2, " Total number of observers: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget v2, v8, v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v11, v12}, Landroid/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-void

    .end local v8           #counts:[I
    .end local v9           #pidCounts:Landroid/util/SparseIntArray;
    .end local v10           #i:I
    .end local v14           #sorted:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_2
    move-exception v2

    :try_start_7
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public getCurrentSyncs()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v2

    .local v2, userId:I
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/SyncStorageEngine;->getCurrentSyncs(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 7
    .parameter "account"
    .parameter "providerName"

    .prologue
    iget-object v4, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_SYNC_SETTINGS"

    const-string v6, "no permission to read the sync settings"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v3

    .local v3, userId:I
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, p1, v3, p2}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    :goto_0
    return v4

    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    const/4 v4, -0x1

    goto :goto_0

    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getMasterSyncAutomatically()Z
    .locals 7

    .prologue
    iget-object v4, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_SYNC_SETTINGS"

    const-string v6, "no permission to read the sync settings"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v3

    .local v3, userId:I
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    :goto_0
    return v4

    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    goto :goto_0

    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "account"
    .parameter "providerName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v2

    .local v2, userId:I
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, v2, p2}, Landroid/content/SyncStorageEngine;->getPeriodicSyncs(Landroid/accounts/Account;ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 4

    .prologue
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .local v2, syncManager:Landroid/content/SyncManager;
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-object v3

    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 7
    .parameter "account"
    .parameter "providerName"

    .prologue
    iget-object v4, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_SYNC_SETTINGS"

    const-string v6, "no permission to read the sync settings"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v3

    .local v3, userId:I
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, p1, v3, p2}, Landroid/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    :goto_0
    return v4

    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    goto :goto_0

    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .locals 7
    .parameter "account"
    .parameter "authority"

    .prologue
    iget-object v4, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_SYNC_STATS"

    const-string v6, "no permission to read the sync stats"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v3

    .local v3, userId:I
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, p1, v3, p2}, Landroid/content/SyncStorageEngine;->getStatusByAccountAndAuthority(Landroid/accounts/Account;ILjava/lang/String;)Landroid/content/SyncStatusInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    :goto_0
    return-object v4

    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    goto :goto_0

    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 7
    .parameter "account"
    .parameter "authority"

    .prologue
    iget-object v4, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_SYNC_STATS"

    const-string v6, "no permission to read the sync stats"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v3

    .local v3, userId:I
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, p1, v3, p2}, Landroid/content/SyncStorageEngine;->isSyncActive(Landroid/accounts/Account;ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    :goto_0
    return v4

    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    goto :goto_0

    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 7
    .parameter "account"
    .parameter "authority"

    .prologue
    iget-object v4, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_SYNC_STATS"

    const-string v6, "no permission to read the sync stats"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v3

    .local v3, userId:I
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, p1, v3, p2}, Landroid/content/SyncStorageEngine;->isSyncPending(Landroid/accounts/Account;ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    :goto_0
    return v4

    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    const/4 v4, 0x0

    goto :goto_0

    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V
    .locals 22
    .parameter "uri"
    .parameter "observer"
    .parameter "observerWantsSelfNotifications"
    .parameter "syncToNetwork"

    .prologue
    const-string v2, "ContentService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ContentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying update of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from observer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", syncToNetwork "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v20

    .local v20, userId:I
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v11

    .local v11, identityToken:J
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    .local v15, numCalls:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v15, :cond_4

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ContentService$ObserverCall;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .local v17, oc:Landroid/content/ContentService$ObserverCall;
    :try_start_3
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object/from16 v0, v17

    iget-boolean v3, v0, Landroid/content/ContentService$ObserverCall;->mSelfChange:Z

    move-object/from16 v0, p1

    invoke-interface {v2, v3, v0}, Landroid/database/IContentObserver;->onChange(ZLandroid/net/Uri;)V

    const-string v2, "ContentService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ContentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notified "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "update at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .end local v10           #i:I
    .end local v15           #numCalls:I
    .end local v17           #oc:Landroid/content/ContentService$ObserverCall;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v21
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v7           #calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    :catchall_1
    move-exception v2

    invoke-static {v11, v12}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2

    .restart local v7       #calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    .restart local v10       #i:I
    .restart local v15       #numCalls:I
    .restart local v17       #oc:Landroid/content/ContentService$ObserverCall;
    :catch_0
    move-exception v9

    .local v9, ex:Landroid/os/RemoteException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    const-string v2, "ContentService"

    const-string v4, "Found dead observer, removing"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    invoke-interface {v2}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .local v8, binder:Landroid/os/IBinder;
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/ContentService$ObserverCall;->mNode:Landroid/content/ContentService$ObserverNode;

    #getter for: Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/content/ContentService$ObserverNode;->access$000(Landroid/content/ContentService$ObserverNode;)Ljava/util/ArrayList;

    move-result-object v14

    .local v14, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverNode$ObserverEntry;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, numList:I
    const/4 v13, 0x0

    .local v13, j:I
    :goto_2
    move/from16 v0, v16

    if-ge v13, v0, :cond_3

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .local v18, oe:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    move-object/from16 v0, v18

    iget-object v2, v0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    invoke-interface {v2}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, v8, :cond_2

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v13, v13, -0x1

    add-int/lit8 v16, v16, -0x1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .end local v18           #oe:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_3
    monitor-exit v3

    goto :goto_1

    .end local v8           #binder:Landroid/os/IBinder;
    .end local v13           #j:I
    .end local v14           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverNode$ObserverEntry;>;"
    .end local v16           #numList:I
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v2

    .end local v9           #ex:Landroid/os/RemoteException;
    .end local v17           #oc:Landroid/content/ContentService$ObserverCall;
    :cond_4
    if-eqz p4, :cond_5

    invoke-direct/range {p0 .. p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v19

    .local v19, syncManager:Landroid/content/SyncManager;
    if-eqz v19, :cond_5

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v19           #syncManager:Landroid/content/SyncManager;
    :cond_5
    invoke-static {v11, v12}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IContentService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    const-string v1, "ContentService"

    const-string v2, "Content Service Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    throw v0
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .locals 8
    .parameter "uri"
    .parameter "notifyForDescendents"
    .parameter "observer"

    .prologue
    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid uri and observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v7, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    iget-object v4, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    move-object v1, p1

    move-object v2, p3

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;II)V

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "account"
    .parameter "authority"
    .parameter "extras"

    .prologue
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v2

    .local v2, userId:I
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, v2, p2, p3}, Landroid/content/SyncStorageEngine;->removePeriodicSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 4
    .parameter "callback"

    .prologue
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-void

    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 10
    .parameter "account"
    .parameter "authority"
    .parameter "extras"

    .prologue
    invoke-static {p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v2

    .local v2, userId:I
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v8

    .local v8, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v0

    .local v0, syncManager:Landroid/content/SyncManager;
    if-eqz v0, :cond_0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v8, v9}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-void

    .end local v0           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v1

    invoke-static {v8, v9}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 7
    .parameter "account"
    .parameter "providerName"
    .parameter "syncable"

    .prologue
    iget-object v4, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.WRITE_SYNC_SETTINGS"

    const-string v6, "no permission to write the sync settings"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v3

    .local v3, userId:I
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, p1, v3, p2, p3}, Landroid/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-void

    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setMasterSyncAutomatically(Z)V
    .locals 11
    .parameter "flag"

    .prologue
    iget-object v8, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v9, "android.permission.WRITE_SYNC_SETTINGS"

    const-string v10, "no permission to write the sync settings"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    .local v0, edm:Landroid/sec/enterprise/EnterpriseDeviceManager;
    iget-object v8, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .local v6, telMgr:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;

    move-result-object v4

    .local v4, rp:Landroid/sec/enterprise/RoamingPolicy;
    if-eqz v4, :cond_0

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Landroid/sec/enterprise/RoamingPolicy;->isRoamingSyncEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    const/4 p1, 0x0

    .end local v4           #rp:Landroid/sec/enterprise/RoamingPolicy;
    :cond_0
    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v3

    .local v3, restPol:Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_1

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/sec/enterprise/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v8

    if-nez v8, :cond_1

    .end local v3           #restPol:Landroid/sec/enterprise/RestrictionPolicy;
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v7

    .local v7, userId:I
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v5

    .local v5, syncManager:Landroid/content/SyncManager;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v8

    invoke-virtual {v8, p1, v7}, Landroid/content/SyncStorageEngine;->setMasterSyncAutomatically(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v1, v2}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v5           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v8

    invoke-static {v1, v2}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v8
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 7
    .parameter "account"
    .parameter "providerName"
    .parameter "sync"

    .prologue
    iget-object v4, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.WRITE_SYNC_SETTINGS"

    const-string v6, "no permission to write the sync settings"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserId;->getCallingUserId()I

    move-result v3

    .local v3, userId:I
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v4

    invoke-virtual {v4, p1, v3, p2, p3}, Landroid/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    return-void

    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public systemReady()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    return-void
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    invoke-virtual {v0, p1}, Landroid/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
