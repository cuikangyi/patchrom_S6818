.class public Lcom/android/providers/media/FaceScanner;
.super Ljava/lang/Object;
.source "FaceScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/FaceScanner$RecomendedPerson;
    }
.end annotation


# static fields
.field public static final RAW_SQL_MAIN_DB:Landroid/net/Uri;

.field public static final RAW_SQL_PERSON_DB:Landroid/net/Uri;

.field private static TAG:Ljava/lang/String;


# instance fields
.field private CLOUDPATH:Ljava/lang/String;

.field private mApp:Lcom/android/providers/media/ContentApp;

.field private mFR:I

.field private mScanedFileCount:I

.field private mTotalFileCount:I

.field private mUngroupedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    const-string v0, "FaceScanner"

    sput-object v0, Lcom/android/providers/media/FaceScanner;->TAG:Ljava/lang/String;

    .line 23
    sget-object v0, Lcom/android/providers/media/Columns;->RAW_SQL_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    .line 24
    sget-object v0, Lcom/android/providers/media/Columns;->RAW_SQL_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "person"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/FaceScanner;->RAW_SQL_PERSON_DB:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/media/ContentApp;)V
    .locals 2
    .parameter "app"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    .line 26
    iput v1, p0, Lcom/android/providers/media/FaceScanner;->mFR:I

    .line 27
    iput v1, p0, Lcom/android/providers/media/FaceScanner;->mTotalFileCount:I

    .line 28
    const-string v0, "/storage/sdcard0/cloudagent/"

    iput-object v0, p0, Lcom/android/providers/media/FaceScanner;->CLOUDPATH:Ljava/lang/String;

    .line 29
    iput v1, p0, Lcom/android/providers/media/FaceScanner;->mScanedFileCount:I

    .line 30
    iput v1, p0, Lcom/android/providers/media/FaceScanner;->mUngroupedCount:I

    .line 33
    iput-object p1, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    .line 34
    return-void
.end method

.method private deleteInvalidFile(I)I
    .locals 7
    .parameter "id"

    .prologue
    .line 168
    iget-object v2, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v2}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 169
    .local v1, cr:Landroid/content/ContentResolver;
    invoke-direct {p0, v1, p1}, Lcom/android/providers/media/FaceScanner;->removeFaceByFileId(Landroid/content/ContentResolver;I)V

    .line 170
    sget-object v2, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    const-string v3, "image_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 171
    .local v0, change:I
    return v0
.end method

.method private getInvalidFileList()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 102
    const/4 v8, 0x0

    .line 103
    .local v8, id:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v7, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v3}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 105
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v9, "select _id from files where media_type=1 and face_count=-1 and _id in (select image_id from faces)"

    .line 106
    .local v9, sql:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 107
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 109
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 112
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 116
    :cond_1
    if-eqz v6, :cond_2

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 119
    :cond_2
    const-string v9, "select image_id from faces where image_id not in ( select _id from files where media_type=1 )"

    .line 120
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 121
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 123
    if-eqz v6, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 125
    :cond_3
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 126
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_3

    .line 130
    :cond_4
    if-eqz v6, :cond_5

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 133
    :cond_5
    return-object v7

    .line 116
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_6

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    .line 130
    :catchall_1
    move-exception v2

    if-eqz v6, :cond_7

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method

.method private getKeyFaceDataIndex(I[II)I
    .locals 11
    .parameter "personId"
    .parameter "keyFaceDataIndex"
    .parameter "maxCount"

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 231
    const/4 v6, 0x0

    .line 232
    .local v6, count:I
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v7, v6

    .line 249
    .end local v6           #count:I
    .local v7, count:I
    :goto_0
    return v7

    .line 234
    .end local v7           #count:I
    .restart local v6       #count:I
    :cond_1
    iget-object v3, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v3}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 235
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "select face_data from faces where person_id=%1$d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 236
    .local v9, sql:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_PERSON_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 237
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 239
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 241
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p2, v6

    .line 242
    add-int/lit8 v6, v6, 0x1

    .line 243
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    if-lt v6, p3, :cond_2

    .line 246
    :cond_3
    if-eqz v8, :cond_4

    .line 247
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move v7, v6

    .line 249
    .end local v6           #count:I
    .restart local v7       #count:I
    goto :goto_0

    .line 246
    .end local v7           #count:I
    .restart local v6       #count:I
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_5

    .line 247
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method private getNewGroupId()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 252
    const/4 v7, 0x0

    .line 253
    .local v7, groupId:I
    iget-object v3, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v3}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 254
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v8, "select max(group_id) from faces"

    .line 255
    .local v8, sql:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 256
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 258
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 262
    :cond_0
    if-eqz v6, :cond_1

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 265
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 266
    return v7

    .line 262
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    .line 263
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private getRecomendedPerson(I)Lcom/android/providers/media/FaceScanner$RecomendedPerson;
    .locals 12
    .parameter "rawData"

    .prologue
    const/4 v11, 0x1

    .line 182
    new-instance v6, Lcom/android/providers/media/FaceScanner$RecomendedPerson;

    const/4 v9, 0x0

    invoke-direct {v6, v11, v9}, Lcom/android/providers/media/FaceScanner$RecomendedPerson;-><init>(II)V

    .line 183
    .local v6, recomendedPerson:Lcom/android/providers/media/FaceScanner$RecomendedPerson;
    const/4 v4, 0x0

    .line 184
    .local v4, personCount:I
    const/4 v2, 0x0

    .line 185
    .local v2, keyFaceCount:I
    const/4 v0, 0x0

    .line 186
    .local v0, groupKey:I
    const/4 v7, 0x0

    .line 187
    .local v7, score:I
    move v8, v7

    .line 188
    .local v8, scoreMax:I
    const/16 v9, 0x14

    new-array v3, v9, [I

    .line 189
    .local v3, keyFaceDataIndex:[I
    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->getRegisteredPersons()Ljava/util/ArrayList;

    move-result-object v5

    .line 190
    .local v5, persons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_0

    .line 191
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 193
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 194
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    array-length v10, v3

    invoke-direct {p0, v9, v3, v10}, Lcom/android/providers/media/FaceScanner;->getKeyFaceDataIndex(I[II)I

    move-result v2

    .line 195
    iget v9, p0, Lcom/android/providers/media/FaceScanner;->mFR:I

    invoke-static {v9, v3, v2, v11}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v0

    .line 196
    iget v9, p0, Lcom/android/providers/media/FaceScanner;->mFR:I

    invoke-static {v9, p1, v0}, Lcom/android/providers/media/NativeApi;->faceGroupMatch(III)I

    move-result v7

    .line 197
    if-le v7, v8, :cond_1

    .line 198
    move v8, v7

    .line 199
    const/16 v9, 0x157c

    if-le v8, v9, :cond_1

    .line 200
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v6, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mPersonId:I

    .line 201
    iput v8, v6, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mScore:I

    .line 205
    :cond_1
    iget v9, p0, Lcom/android/providers/media/FaceScanner;->mFR:I

    invoke-static {v9, v0}, Lcom/android/providers/media/NativeApi;->unLoadGroup(II)V

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_2
    return-object v6
.end method

.method private getRegisteredPersons()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 210
    const/4 v7, 0x0

    .line 211
    .local v7, personId:I
    iget-object v3, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v3}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 213
    .local v8, registeredPerson:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v10, "select _id from persons where _id>1"

    .line 214
    .local v10, sql:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_PERSON_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 215
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 217
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    .end local v8           #registeredPerson:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v9, registeredPerson:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 221
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    move-object v8, v9

    .line 225
    .end local v9           #registeredPerson:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8       #registeredPerson:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    if-eqz v6, :cond_2

    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_2
    return-object v8

    .line 225
    :catchall_0
    move-exception v2

    :goto_0
    if-eqz v6, :cond_3

    .line 226
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 225
    .end local v8           #registeredPerson:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9       #registeredPerson:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v2

    move-object v8, v9

    .end local v9           #registeredPerson:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v8       #registeredPerson:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_0
.end method

.method private getScannedImageCount()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 52
    const/4 v6, 0x0

    .line 53
    .local v6, count:I
    iget-object v3, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v3}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v8, "select count(_id) from files where media_type=1 and face_count<>-1"

    .line 55
    .local v8, sql:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 56
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 58
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 61
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 64
    :cond_1
    if-eqz v7, :cond_2

    .line 65
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_2
    return v6

    .line 64
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_3

    .line 65
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private getTotalImageCount()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 36
    const/4 v6, 0x0

    .line 37
    .local v6, count:I
    iget-object v3, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v3}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 38
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v8, "select count(_id) from files where media_type=1 "

    .line 39
    .local v8, sql:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 40
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 42
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 46
    :cond_0
    if-eqz v7, :cond_1

    .line 47
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_1
    return v6

    .line 46
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_2

    .line 47
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private groupAndMatchFaces()V
    .locals 28

    .prologue
    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/Intent;

    const-string v25, "com.android.media.FACE_AUTO_GROUP_STARTED"

    sget-object v26, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct/range {v24 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v23 .. v24}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 270
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/providers/media/NativeApi;->createGroups(I)V

    .line 271
    const/4 v8, 0x0

    .line 272
    .local v8, groupKey:I
    const/4 v5, 0x0

    .line 273
    .local v5, faceCount:I
    const/4 v6, 0x0

    .line 274
    .local v6, faceId:I
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/FaceScanner;->getNewGroupId()I

    move-result v14

    .line 275
    .local v14, newGroupId:I
    const/16 v16, 0x0

    .line 276
    .local v16, personCount:I
    const/4 v13, 0x0

    .line 277
    .local v13, maxScore:I
    const/16 v23, 0x1e

    move/from16 v0, v23

    new-array v12, v0, [I

    .line 278
    .local v12, keyFaceDataIndex:[I
    const/4 v11, 0x0

    .line 279
    .local v11, keyFaceCount:I
    const/16 v21, 0x0

    .line 280
    .local v21, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/providers/media/NativeApi;->getGroupCount(I)I

    move-result v7

    .line 282
    .local v7, groupCount:I
    if-gtz v7, :cond_0

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/Intent;

    const-string v25, "com.android.media.FACE_AUTO_GROUP_FINISHED"

    sget-object v26, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct/range {v24 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v23 .. v24}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 346
    :goto_0
    return-void

    .line 285
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 286
    .local v4, cr:Landroid/content/ContentResolver;
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/FaceScanner;->getRegisteredPersons()Ljava/util/ArrayList;

    move-result-object v18

    .line 287
    .local v18, persons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v18, :cond_1

    .line 288
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 290
    :cond_1
    if-lez v16, :cond_a

    .line 291
    move/from16 v0, v16

    filled-new-array {v0, v7}, [I

    move-result-object v23

    sget-object v24, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [[I

    .line 292
    .local v20, scores:[[I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    move/from16 v0, v16

    if-ge v9, v0, :cond_3

    .line 293
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    array-length v0, v12

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v12, v2}, Lcom/android/providers/media/FaceScanner;->getKeyFaceDataIndex(I[II)I

    move-result v11

    .line 294
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v0, v12, v11, v1}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v8

    .line 295
    const/4 v10, 0x0

    .local v10, j:I
    :goto_2
    if-ge v10, v7, :cond_2

    .line 296
    aget-object v23, v20, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v0, v8, v10}, Lcom/android/providers/media/NativeApi;->groupMatchEx(III)I

    move-result v24

    aput v24, v23, v10

    .line 295
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 298
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v0, v8}, Lcom/android/providers/media/NativeApi;->unLoadGroup(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 300
    .end local v10           #j:I
    :cond_3
    const/4 v10, 0x0

    .restart local v10       #j:I
    move-object/from16 v22, v21

    .end local v21           #values:Landroid/content/ContentValues;
    .local v22, values:Landroid/content/ContentValues;
    move v15, v14

    .end local v14           #newGroupId:I
    .local v15, newGroupId:I
    :goto_3
    if-ge v10, v7, :cond_9

    .line 301
    const/4 v13, 0x0

    .line 302
    const/16 v17, 0x0

    .line 303
    .local v17, personIndex:I
    const/16 v19, 0x1

    .line 304
    .local v19, recomendPerson:I
    const/4 v9, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v9, v0, :cond_5

    .line 305
    :try_start_1
    aget-object v23, v20, v9

    aget v23, v23, v10

    move/from16 v0, v23

    if-le v0, v13, :cond_4

    .line 306
    aget-object v23, v20, v9

    aget v13, v23, v10

    .line 307
    move/from16 v17, v9

    .line 304
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 310
    :cond_5
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 311
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v0, v10}, Lcom/android/providers/media/NativeApi;->getFaceCount(II)I

    move-result v5

    .line 312
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 313
    .end local v22           #values:Landroid/content/ContentValues;
    .restart local v21       #values:Landroid/content/ContentValues;
    const/16 v23, 0x157c

    move/from16 v0, v23

    if-le v13, v0, :cond_6

    .line 314
    :try_start_2
    const-string v23, "recommended_id"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 315
    const-string v23, "similarity"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 317
    :cond_6
    const/16 v23, 0x1

    move/from16 v0, v23

    if-le v5, v0, :cond_7

    .line 318
    const-string v23, "group_id"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/lit8 v14, v15, 0x1

    .end local v15           #newGroupId:I
    .restart local v14       #newGroupId:I
    :try_start_3
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 321
    :goto_5
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v5, :cond_8

    .line 322
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v0, v10, v9}, Lcom/android/providers/media/NativeApi;->getFaceId(III)I

    move-result v6

    .line 323
    sget-object v23, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    int-to-long v0, v6

    move-wide/from16 v24, v0

    invoke-static/range {v23 .. v25}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    const-string v24, "person_id=?"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 320
    .end local v14           #newGroupId:I
    .restart local v15       #newGroupId:I
    :cond_7
    :try_start_4
    const-string v23, "auto_group"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v14, v15

    .end local v15           #newGroupId:I
    .restart local v14       #newGroupId:I
    goto :goto_5

    .line 300
    :cond_8
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v22, v21

    .end local v21           #values:Landroid/content/ContentValues;
    .restart local v22       #values:Landroid/content/ContentValues;
    move v15, v14

    .end local v14           #newGroupId:I
    .restart local v15       #newGroupId:I
    goto/16 :goto_3

    .end local v17           #personIndex:I
    .end local v19           #recomendPerson:I
    :cond_9
    move-object/from16 v21, v22

    .end local v22           #values:Landroid/content/ContentValues;
    .restart local v21       #values:Landroid/content/ContentValues;
    move v14, v15

    .line 341
    .end local v10           #j:I
    .end local v15           #newGroupId:I
    .end local v20           #scores:[[I
    .restart local v14       #newGroupId:I
    :goto_7
    :try_start_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/android/providers/media/NativeApi;->destroyGroups(I)V

    .line 342
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/media/FaceScanner;->mUngroupedCount:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v23, v0

    new-instance v24, Landroid/content/Intent;

    const-string v25, "com.android.media.FACE_AUTO_GROUP_FINISHED"

    sget-object v26, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct/range {v24 .. v26}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v23 .. v24}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 327
    .end local v9           #i:I
    :cond_a
    const/4 v9, 0x0

    .restart local v9       #i:I
    move-object/from16 v22, v21

    .end local v21           #values:Landroid/content/ContentValues;
    .restart local v22       #values:Landroid/content/ContentValues;
    move v15, v14

    .end local v14           #newGroupId:I
    .restart local v15       #newGroupId:I
    :goto_8
    if-ge v9, v7, :cond_d

    .line 328
    :try_start_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v0, v9}, Lcom/android/providers/media/NativeApi;->getFaceCount(II)I

    move-result v5

    .line 329
    const/4 v6, 0x0

    .line 330
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 331
    .end local v22           #values:Landroid/content/ContentValues;
    .restart local v21       #values:Landroid/content/ContentValues;
    const/16 v23, 0x1

    move/from16 v0, v23

    if-le v5, v0, :cond_b

    .line 332
    :try_start_7
    const-string v23, "group_id"
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    add-int/lit8 v14, v15, 0x1

    .end local v15           #newGroupId:I
    .restart local v14       #newGroupId:I
    :try_start_8
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 335
    :goto_9
    const/4 v10, 0x0

    .restart local v10       #j:I
    :goto_a
    if-ge v10, v5, :cond_c

    .line 336
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-static {v0, v9, v10}, Lcom/android/providers/media/NativeApi;->getFaceId(III)I

    move-result v6

    .line 337
    sget-object v23, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    int-to-long v0, v6

    move-wide/from16 v24, v0

    invoke-static/range {v23 .. v25}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 335
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 334
    .end local v10           #j:I
    .end local v14           #newGroupId:I
    .restart local v15       #newGroupId:I
    :cond_b
    :try_start_9
    const-string v23, "auto_group"

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move v14, v15

    .end local v15           #newGroupId:I
    .restart local v14       #newGroupId:I
    goto :goto_9

    .line 327
    .restart local v10       #j:I
    :cond_c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v22, v21

    .end local v21           #values:Landroid/content/ContentValues;
    .restart local v22       #values:Landroid/content/ContentValues;
    move v15, v14

    .end local v14           #newGroupId:I
    .restart local v15       #newGroupId:I
    goto :goto_8

    .line 344
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v15           #newGroupId:I
    .end local v18           #persons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v22           #values:Landroid/content/ContentValues;
    .restart local v14       #newGroupId:I
    .restart local v21       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v23

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v24, v0

    new-instance v25, Landroid/content/Intent;

    const-string v26, "com.android.media.FACE_AUTO_GROUP_FINISHED"

    sget-object v27, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct/range {v25 .. v27}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual/range {v24 .. v25}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    throw v23

    .end local v14           #newGroupId:I
    .end local v21           #values:Landroid/content/ContentValues;
    .restart local v4       #cr:Landroid/content/ContentResolver;
    .restart local v9       #i:I
    .restart local v15       #newGroupId:I
    .restart local v18       #persons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v22       #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception v23

    move-object/from16 v21, v22

    .end local v22           #values:Landroid/content/ContentValues;
    .restart local v21       #values:Landroid/content/ContentValues;
    move v14, v15

    .end local v15           #newGroupId:I
    .restart local v14       #newGroupId:I
    goto :goto_b

    .end local v14           #newGroupId:I
    .restart local v15       #newGroupId:I
    :catchall_2
    move-exception v23

    move v14, v15

    .end local v15           #newGroupId:I
    .restart local v14       #newGroupId:I
    goto :goto_b

    .end local v14           #newGroupId:I
    .end local v21           #values:Landroid/content/ContentValues;
    .restart local v15       #newGroupId:I
    .restart local v22       #values:Landroid/content/ContentValues;
    :cond_d
    move-object/from16 v21, v22

    .end local v22           #values:Landroid/content/ContentValues;
    .restart local v21       #values:Landroid/content/ContentValues;
    move v14, v15

    .end local v15           #newGroupId:I
    .restart local v14       #newGroupId:I
    goto/16 :goto_7
.end method

.method private groupOldData()V
    .locals 2

    .prologue
    .line 453
    :goto_0
    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->prepareGroupData()I

    move-result v0

    iput v0, p0, Lcom/android/providers/media/FaceScanner;->mUngroupedCount:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_0

    .line 454
    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->groupAndMatchFaces()V

    goto :goto_0

    .line 456
    :cond_0
    return-void
.end method

.method private prepareGroupData()I
    .locals 11

    .prologue
    const/16 v10, 0x12c

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 458
    const/4 v8, 0x0

    .line 459
    .local v8, faceIds:[I
    const/4 v7, 0x0

    .line 460
    .local v7, faceDataIndex:[I
    iget-object v3, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v3}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 461
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "select _id,face_data from faces where auto_group=2 AND group_id=0 AND person_id=1 "

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 462
    .local v9, sql:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 463
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 465
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 466
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/providers/media/FaceScanner;->mUngroupedCount:I

    .line 467
    const/16 v2, 0x12c

    new-array v8, v2, [I

    .line 468
    const/16 v2, 0x12c

    new-array v7, v2, [I

    .line 470
    :cond_0
    iget v2, p0, Lcom/android/providers/media/FaceScanner;->mUngroupedCount:I

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v8, v2

    .line 471
    iget v2, p0, Lcom/android/providers/media/FaceScanner;->mUngroupedCount:I

    const/4 v3, 0x1

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, v7, v2

    .line 472
    iget v2, p0, Lcom/android/providers/media/FaceScanner;->mUngroupedCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/providers/media/FaceScanner;->mUngroupedCount:I

    .line 473
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/providers/media/FaceScanner;->mUngroupedCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v10, :cond_0

    .line 476
    :cond_1
    if-eqz v6, :cond_2

    .line 477
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 479
    :cond_2
    iget v2, p0, Lcom/android/providers/media/FaceScanner;->mFR:I

    iget v3, p0, Lcom/android/providers/media/FaceScanner;->mUngroupedCount:I

    invoke-static {v2, v8, v7, v3}, Lcom/android/providers/media/NativeApi;->prepareUngroupedData(I[I[II)V

    .line 480
    iget v2, p0, Lcom/android/providers/media/FaceScanner;->mUngroupedCount:I

    return v2

    .line 476
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_3

    .line 477
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private removeFaceByFileId(Landroid/content/ContentResolver;I)V
    .locals 14
    .parameter "cr"
    .parameter "fileId"

    .prologue
    .line 136
    const/4 v8, 0x0

    .line 137
    .local v8, faceData:[I
    const/4 v9, 0x0

    .line 138
    .local v9, faceFile:Ljava/lang/String;
    const/4 v11, 0x0

    .line 139
    .local v11, i:I
    const-string v0, "select face_data from faces where image_id=%1$d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 140
    .local v13, sql:Ljava/lang/String;
    sget-object v0, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 141
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 143
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 145
    .local v6, count:I
    new-array v8, v6, [I

    move v12, v11

    .line 147
    .end local v11           #i:I
    .local v12, i:I
    :goto_0
    add-int/lit8 v11, v12, 0x1

    .end local v12           #i:I
    .restart local v11       #i:I
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v8, v12

    .line 148
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_5

    .line 151
    .end local v6           #count:I
    :cond_0
    if-eqz v7, :cond_1

    .line 152
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_1
    if-eqz v8, :cond_4

    .line 155
    const/4 v10, 0x0

    .line 156
    .local v10, file:Ljava/io/File;
    const/4 v11, 0x0

    :goto_1
    array-length v0, v8

    if-ge v11, v0, :cond_4

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/providers/media/ContentApp;->mFaceDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v2, v8, v11

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 158
    new-instance v10, Ljava/io/File;

    .end local v10           #file:Ljava/io/File;
    invoke-direct {v10, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .restart local v10       #file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    sget-object v0, Lcom/android/providers/media/FaceScanner;->TAG:Ljava/lang/String;

    const-string v2, "error deleting file"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 151
    .end local v10           #file:Ljava/io/File;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    .line 152
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 166
    :cond_4
    return-void

    .restart local v6       #count:I
    :cond_5
    move v12, v11

    .end local v11           #i:I
    .restart local v12       #i:I
    goto :goto_0
.end method

.method private scanFile(ILjava/lang/String;)I
    .locals 19
    .parameter "id"
    .parameter "name"

    .prologue
    .line 348
    const/4 v4, 0x0

    .line 349
    .local v4, faceCount:I
    const/4 v5, 0x0

    .line 350
    .local v5, faceDataIndex:I
    const/4 v15, 0x0

    .line 351
    .local v15, uri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 352
    .local v10, rawData:I
    const/4 v6, 0x0

    .line 353
    .local v6, faceId:I
    const/4 v9, 0x0

    .line 354
    .local v9, left:I
    const/4 v14, 0x0

    .line 355
    .local v14, top:I
    const/4 v12, 0x0

    .line 356
    .local v12, right:I
    const/4 v2, 0x0

    .line 357
    .local v2, bottom:I
    const/4 v13, 0x0

    .line 358
    .local v13, size:I
    const/4 v7, 0x0

    .line 359
    .local v7, hasFeature:Z
    const/4 v11, 0x0

    .line 367
    .local v11, recomendedPerson:Lcom/android/providers/media/FaceScanner$RecomendedPerson;
    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->CLOUDPATH:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 368
    const/16 v17, 0x0

    .line 417
    :goto_0
    return v17

    .line 371
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/providers/media/NativeApi;->faceDetect(ILjava/lang/String;)I

    move-result v4

    .line 372
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v4, :cond_5

    .line 373
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v8}, Lcom/android/providers/media/NativeApi;->getFaceLeft(II)I

    move-result v9

    .line 374
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v8}, Lcom/android/providers/media/NativeApi;->getFaceTop(II)I

    move-result v14

    .line 375
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v8}, Lcom/android/providers/media/NativeApi;->getFaceRight(II)I

    move-result v12

    .line 376
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v8}, Lcom/android/providers/media/NativeApi;->getFaceBottom(II)I

    move-result v2

    .line 377
    const/4 v7, 0x0

    .line 378
    const/4 v10, 0x0

    .line 379
    sub-int v13, v12, v9

    .line 380
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v8}, Lcom/android/providers/media/NativeApi;->generateFaceData(II)Z

    move-result v7

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 382
    .local v3, cr:Landroid/content/ContentResolver;
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 383
    .local v16, values:Landroid/content/ContentValues;
    const-string v17, "image_id"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 384
    const-string v17, "person_id"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 385
    const-string v17, "recommended_id"

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 386
    const-string v17, "group_id"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 387
    const-string v17, "pos_left"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 388
    const-string v17, "pos_top"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 389
    const-string v17, "pos_right"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 390
    const-string v17, "pos_bottom"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    if-eqz v7, :cond_4

    .line 392
    sget-object v17, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/media/ContentApp;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/providers/media/NativeApi;->getFaceFreeDataIndex(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v5

    .line 393
    const-string v17, "face_data"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    const/16 v17, 0x64

    move/from16 v0, v17

    if-lt v13, v0, :cond_1

    .line 396
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/providers/media/NativeApi;->getRawData(I)I

    move-result v10

    .line 397
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/providers/media/FaceScanner;->getRecomendedPerson(I)Lcom/android/providers/media/FaceScanner$RecomendedPerson;

    move-result-object v11

    .line 398
    const-string v17, "auto_group"

    const/16 v18, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 399
    const-string v17, "recommended_id"

    iget v0, v11, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mPersonId:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    const-string v17, "similarity"

    iget v0, v11, Lcom/android/providers/media/FaceScanner$RecomendedPerson;->mScore:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 406
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v5}, Lcom/android/providers/media/NativeApi;->saveFace(II)V

    .line 407
    sget-object v17, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 408
    if-eqz v15, :cond_2

    const/16 v17, 0x64

    move/from16 v0, v17

    if-lt v13, v0, :cond_2

    if-eqz v10, :cond_2

    .line 409
    invoke-static {v15}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v6, v0

    .line 410
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v0, v6, v10}, Lcom/android/providers/media/NativeApi;->addFaceDataToUngrouped(III)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/providers/media/FaceScanner;->mUngroupedCount:I

    .line 412
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mUngroupedCount:I

    move/from16 v17, v0

    const/16 v18, 0x12c

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 413
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/FaceScanner;->groupAndMatchFaces()V

    .line 372
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 403
    :cond_4
    sget-object v17, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/media/ContentApp;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/providers/media/NativeApi;->getFaceFreeDataIndexNoFeature(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v5

    .line 404
    const-string v17, "face_data"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 416
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/FaceScanner;->mFR:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/providers/media/NativeApi;->faceDetectRelease(I)V

    move/from16 v17, v4

    .line 417
    goto/16 :goto_0
.end method

.method private scanNextFile()Z
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v2, 0x0

    .line 420
    const/4 v6, 0x0

    .line 421
    .local v6, bGoOn:Z
    const/4 v9, 0x0

    .line 422
    .local v9, id:I
    const/4 v10, 0x0

    .line 423
    .local v10, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v3}, Lcom/android/providers/media/ContentApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 424
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v11, "select _id,_data from files where media_type=1 and face_count=-1 order by scan_pri desc,date_modified desc limit 1"

    .line 425
    .local v11, sql:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 426
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 428
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 429
    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 430
    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 433
    :cond_0
    if-eqz v7, :cond_1

    .line 434
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 436
    :cond_1
    if-eqz v10, :cond_3

    .line 437
    const/4 v6, 0x1

    .line 438
    invoke-direct {p0, v9, v10}, Lcom/android/providers/media/FaceScanner;->scanFile(ILjava/lang/String;)I

    move-result v8

    .line 439
    .local v8, faceCount:I
    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v9

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v4, Lcom/android/providers/media/Columns;->IGNORE_NOTIFY:Ljava/lang/String;

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 440
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 441
    .local v12, values:Landroid/content/ContentValues;
    const-string v3, "face_count"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 442
    const-string v3, "scan_pri"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    invoke-virtual {v0, v1, v12, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 444
    iget v2, p0, Lcom/android/providers/media/FaceScanner;->mScanedFileCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/providers/media/FaceScanner;->mScanedFileCount:I

    .line 445
    iget v2, p0, Lcom/android/providers/media/FaceScanner;->mScanedFileCount:I

    iget v3, p0, Lcom/android/providers/media/FaceScanner;->mTotalFileCount:I

    if-lt v2, v3, :cond_2

    .line 446
    iget v2, p0, Lcom/android/providers/media/FaceScanner;->mScanedFileCount:I

    iput v2, p0, Lcom/android/providers/media/FaceScanner;->mTotalFileCount:I

    .line 447
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/face_scanning_progress/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/providers/media/FaceScanner;->mTotalFileCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/providers/media/FaceScanner;->mScanedFileCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 448
    iget-object v2, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.media.FACE_SCANNER_PROGRESS"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 450
    .end local v8           #faceCount:I
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_3
    return v6

    .line 433
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_4

    .line 434
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method


# virtual methods
.method protected sync()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 70
    iget-object v4, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    if-eqz v4, :cond_0

    sget v4, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    if-nez v4, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    sget v4, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    const/4 v5, 0x1

    const/16 v6, 0x12c

    invoke-static {v4, v5, v6}, Lcom/android/providers/media/NativeApi;->createFR(IZI)I

    move-result v4

    iput v4, p0, Lcom/android/providers/media/FaceScanner;->mFR:I

    .line 73
    iget v4, p0, Lcom/android/providers/media/FaceScanner;->mFR:I

    const/16 v5, 0x190

    invoke-static {v4, v5}, Lcom/android/providers/media/NativeApi;->setFaceThumbnaislSize(II)V

    .line 74
    const/4 v1, 0x0

    .line 75
    .local v1, count:I
    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->getInvalidFileList()Ljava/util/ArrayList;

    move-result-object v2

    .line 76
    .local v2, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v2, :cond_3

    .line 77
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 78
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 79
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/providers/media/FaceScanner;->deleteInvalidFile(I)I

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 81
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 83
    .end local v3           #i:I
    :cond_3
    iget-object v4, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.media.FACE_SCANNER_STARTED"

    sget-object v7, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->groupOldData()V

    .line 85
    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->getTotalImageCount()I

    move-result v4

    iput v4, p0, Lcom/android/providers/media/FaceScanner;->mTotalFileCount:I

    .line 86
    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->getScannedImageCount()I

    move-result v4

    iput v4, p0, Lcom/android/providers/media/FaceScanner;->mScanedFileCount:I

    .line 87
    const/4 v0, 0x1

    .line 89
    .local v0, bGoOn:Z
    :cond_4
    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->scanNextFile()Z

    move-result v0

    .line 90
    if-eqz v0, :cond_5

    sget-boolean v4, Lcom/android/providers/media/ContentApp;->mCancelScanner:Z

    if-eqz v4, :cond_4

    .line 91
    :cond_5
    sput-boolean v8, Lcom/android/providers/media/ContentApp;->mCancelScanner:Z

    .line 92
    iget v4, p0, Lcom/android/providers/media/FaceScanner;->mUngroupedCount:I

    const/16 v5, 0x14

    if-le v4, v5, :cond_6

    .line 93
    invoke-direct {p0}, Lcom/android/providers/media/FaceScanner;->groupAndMatchFaces()V

    .line 94
    :cond_6
    iget v4, p0, Lcom/android/providers/media/FaceScanner;->mScanedFileCount:I

    iget v5, p0, Lcom/android/providers/media/FaceScanner;->mTotalFileCount:I

    if-ne v4, v5, :cond_7

    .line 95
    iget-object v4, p0, Lcom/android/providers/media/FaceScanner;->mApp:Lcom/android/providers/media/ContentApp;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.media.FACE_SCANNER_FINISHED"

    sget-object v7, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v4, v5}, Lcom/android/providers/media/ContentApp;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    :cond_7
    iget v4, p0, Lcom/android/providers/media/FaceScanner;->mFR:I

    if-eqz v4, :cond_0

    .line 97
    iget v4, p0, Lcom/android/providers/media/FaceScanner;->mFR:I

    invoke-static {v4}, Lcom/android/providers/media/NativeApi;->destroyFR(I)V

    .line 98
    iput v8, p0, Lcom/android/providers/media/FaceScanner;->mFR:I

    goto/16 :goto_0
.end method
