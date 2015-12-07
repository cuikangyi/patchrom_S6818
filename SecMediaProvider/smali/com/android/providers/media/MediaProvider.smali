.class public Lcom/android/providers/media/MediaProvider;
.super Landroid/content/ContentProvider;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MediaProvider$LocaleChangeThread;,
        Lcom/android/providers/media/MediaProvider$RecomendInfo;,
        Lcom/android/providers/media/MediaProvider$ThumbData;,
        Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;,
        Lcom/android/providers/media/MediaProvider$ScannerClient;,
        Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;,
        Lcom/android/providers/media/MediaProvider$DatabaseHelper;,
        Lcom/android/providers/media/MediaProvider$CleanerThread;
    }
.end annotation


# static fields
.field private static final ALBUMART_URI:Landroid/net/Uri;

.field private static final AUDIO_COLUMNS_CHN:Ljava/lang/String;

.field private static final FLAG_ADD_DB4VAS:Z

.field public static final FLAG_FIXLOCALE_TO:Ljava/lang/String;

.field public static final FLAG_SUPPORT_PINYIN:Z

.field private static final FLAG_USE_DOCUMENTCLASSIFIER:Z

.field private static final GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final ID3_GENRES:[Ljava/lang/String;

.field private static ID3_TO_SEC_GENRES:[Ljava/lang/String;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final MEDIA_URI:Landroid/net/Uri;

.field private static final MIME_TYPE_PROJECTION:[Ljava/lang/String;

.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final PLAYLIST_COLUMNS_CHN:Ljava/lang/String;

.field private static final READY_FLAG_PROJECTION:[Ljava/lang/String;

.field private static final SEC_ALBUM_COLUMNS_CHN:Ljava/lang/String;

.field private static final SEC_ARTIST_COLUMNS_CHN:Ljava/lang/String;

.field private static final SEC_COMPOSERS_COLUMNS_CHN:Ljava/lang/String;

.field private static final SEC_DISPLAYNAME_COLUMNS_CHN:Ljava/lang/String;

.field private static final SEC_FOLDERS_COLUMNS_CHN:Ljava/lang/String;

.field private static final SEC_GENRES_COLUMNS_CHN:Ljava/lang/String;

.field private static final SEC_TITLEKEY_COLUMNS_CHN:Ljava/lang/String;

.field private static final SOUNDS_PATH_EXTERNAL:Ljava/lang/String;

.field private static final SOUNDS_PATH_INTERNAL:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final VIDEO_COLUMNS_CHN:Ljava/lang/String;

.field private static bIsSecureMode:Z

.field private static bIsShuttingDown:Z

.field protected static mCollator:Ljava/text/Collator;

.field private static mExternalStoragePath:Ljava/lang/String;

.field private static mExternalStoragePaths:[Ljava/lang/String;

.field private static mExternalStorageSdPath:Ljava/lang/String;

.field private static final mID3ToSecGenreMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final openFileColumns:[Ljava/lang/String;

.field private static final sArtistAlbumsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCachePath:Ljava/lang/String;

.field public static sCscFeature:Lcom/sec/android/app/CscFeature;

.field private static final sDataOnlyColumn:[Ljava/lang/String;

.field private static final sDefaultFolderNames:[Ljava/lang/String;

.field private static final sExternalPath:Ljava/lang/String;

.field private static final sFolderArtMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

.field private static final sIdOnlyColumn:[Ljava/lang/String;

.field private static final sMediaTableColumns:[Ljava/lang/String;

.field private static final sMediaTypeDataId:[Ljava/lang/String;

.field private static final sPlaylistIdPlayOrder:[Ljava/lang/String;


# instance fields
.field private final SEARCH_COLUMN_BASIC_TEXT2:I

.field private mAlbumArtBaseUri:Landroid/net/Uri;

.field private mBulkInsertSync:I

.field private mBulkInsertSyncLock:Ljava/lang/Object;

.field private mCaseInsensitivePaths:Z

.field private mContentApp:Lcom/android/providers/media/ContentApp;

.field private mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

.field private mDatabases:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/media/MediaProvider$DatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field private mDatabases_lgtvas:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

.field mDirectoryCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableHomeSyncObjectCallbacks:Z

.field private mDisableMtpObjectCallbacks:Z

.field private mGetSimilarPersonsThread:Ljava/lang/Thread;

.field private mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaScannerVolume:Ljava/lang/String;

.field private mMediaThumbQueue:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/providers/media/MediaThumbRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mMtpService:Lcom/android/providers/media/IMtpService;

.field private final mMtpServiceConnection:Landroid/content/ServiceConnection;

.field private mNewPersonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

.field private mPendingThumbs:Ljava/util/HashSet;

.field private mPersonOpenHelper:Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;

.field private volatile mRecomendList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/providers/media/MediaProvider$RecomendInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRecomendThread:Ljava/lang/Thread;

.field private mSearchColsBasic:[Ljava/lang/String;

.field private mSearchColsFancy:[Ljava/lang/String;

.field private mSearchColsLegacy:[Ljava/lang/String;

.field private mSecureModeSyncLock:Ljava/lang/Object;

.field private mSecureReceiver:Landroid/content/BroadcastReceiver;

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private mSmartSortBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSmartSortContentApp:Lcom/android/providers/media/SmartSortContentApp;

.field private mThumbHandler:Landroid/os/Handler;

.field private mThumbRequestStack:Ljava/util/Stack;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 135
    const-string v0, "content://media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->MEDIA_URI:Landroid/net/Uri;

    .line 136
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->ALBUMART_URI:Landroid/net/Uri;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    .line 143
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sCscFeature:Lcom/sec/android/app/CscFeature;

    .line 146
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_Music_SupportPinyinSort"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    .line 149
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_Gallery_EnableDocumentClassifier"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_USE_DOCUMENTCLASSIFIER:Z

    .line 152
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_MediaProvider_AddDB4VAS"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_ADD_DB4VAS:Z

    .line 155
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sCscFeature:Lcom/sec/android/app/CscFeature;

    const-string v1, "CscFeature_MediaScanner_FixLocaleTo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->FLAG_FIXLOCALE_TO:Ljava/lang/String;

    .line 166
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sExternalPath:Ljava/lang/String;

    .line 167
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sCachePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "media_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sMediaTableColumns:[Ljava/lang/String;

    .line 247
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sIdOnlyColumn:[Ljava/lang/String;

    .line 251
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sDataOnlyColumn:[Ljava/lang/String;

    .line 255
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "media_type"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sMediaTypeDataId:[Ljava/lang/String;

    .line 261
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "playlist_id"

    aput-object v1, v0, v4

    const-string v1, "play_order"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sPlaylistIdPlayOrder:[Ljava/lang/String;

    .line 265
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "_size"

    aput-object v1, v0, v6

    const-string v1, "format"

    aput-object v1, v0, v7

    const-string v1, "title"

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/providers/media/MediaProvider;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 285
    sput-boolean v4, Lcom/android/providers/media/MediaProvider;->bIsShuttingDown:Z

    .line 286
    sput-boolean v4, Lcom/android/providers/media/MediaProvider;->bIsSecureMode:Z

    .line 826
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v1, v0, v4

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v1, v0, v5

    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v1, v0, v6

    sget-object v1, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v1, v0, v7

    sget-object v1, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Documents"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sDefaultFolderNames:[Ljava/lang/String;

    .line 1095
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_1

    const-string v0, ",title_search_key,title_pinyin,composer_pinyin,genre_name_pinyin,_display_name_pinyin,bucket_display_name_pinyin"

    :goto_0
    sput-object v0, Lcom/android/providers/media/MediaProvider;->AUDIO_COLUMNS_CHN:Ljava/lang/String;

    .line 1099
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_2

    const-string v0, ",name_pinyin"

    :goto_1
    sput-object v0, Lcom/android/providers/media/MediaProvider;->PLAYLIST_COLUMNS_CHN:Ljava/lang/String;

    .line 1100
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_3

    const-string v0, ",title_pinyin"

    :goto_2
    sput-object v0, Lcom/android/providers/media/MediaProvider;->VIDEO_COLUMNS_CHN:Ljava/lang/String;

    .line 2370
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_4

    const-string v0, ",album_search_key, album_pinyin, artist_search_key "

    :goto_3
    sput-object v0, Lcom/android/providers/media/MediaProvider;->SEC_ALBUM_COLUMNS_CHN:Ljava/lang/String;

    .line 2371
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_5

    const-string v0, ",artist_search_key, artist_pinyin "

    :goto_4
    sput-object v0, Lcom/android/providers/media/MediaProvider;->SEC_ARTIST_COLUMNS_CHN:Ljava/lang/String;

    .line 2373
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_6

    const-string v0, ",genre_name_pinyin "

    :goto_5
    sput-object v0, Lcom/android/providers/media/MediaProvider;->SEC_GENRES_COLUMNS_CHN:Ljava/lang/String;

    .line 2374
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_7

    const-string v0, ",bucket_display_name_pinyin "

    :goto_6
    sput-object v0, Lcom/android/providers/media/MediaProvider;->SEC_FOLDERS_COLUMNS_CHN:Ljava/lang/String;

    .line 2375
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_8

    const-string v0, ",composer_pinyin "

    :goto_7
    sput-object v0, Lcom/android/providers/media/MediaProvider;->SEC_COMPOSERS_COLUMNS_CHN:Ljava/lang/String;

    .line 2377
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_9

    const-string v0, "title_pinyin"

    :goto_8
    sput-object v0, Lcom/android/providers/media/MediaProvider;->SEC_TITLEKEY_COLUMNS_CHN:Ljava/lang/String;

    .line 2378
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_a

    const-string v0, "_display_name_pinyin"

    :goto_9
    sput-object v0, Lcom/android/providers/media/MediaProvider;->SEC_DISPLAYNAME_COLUMNS_CHN:Ljava/lang/String;

    .line 4679
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/media/MediaProvider;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 5255
    new-instance v0, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;-><init>(Lcom/android/providers/media/MediaProvider$1;)V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    .line 6318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/providers/media/MediaProvider;->sExternalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Sounds/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->SOUNDS_PATH_INTERNAL:Ljava/lang/String;

    .line 6324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/extSdCard/Sounds/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->SOUNDS_PATH_EXTERNAL:Ljava/lang/String;

    .line 6394
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->openFileColumns:[Ljava/lang/String;

    .line 7446
    const-string v0, "MediaProvider"

    sput-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    .line 7577
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 7580
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/MediaProvider;->ID_PROJECTION:[Ljava/lang/String;

    .line 7584
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/media/MediaProvider;->PATH_PROJECTION:[Ljava/lang/String;

    .line 7589
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/providers/media/MediaProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    .line 7594
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "mini_thumb_magic"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/providers/media/MediaProvider;->READY_FLAG_PROJECTION:[Ljava/lang/String;

    .line 7809
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/images/media"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7810
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/images/media/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7811
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/images/thumbnails"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7812
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/images/thumbnails/#"

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7814
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7815
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#"

    const/16 v3, 0x65

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7816
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/genres"

    const/16 v3, 0x66

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7817
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/genres/#"

    const/16 v3, 0x67

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7818
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/playlists"

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7819
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/playlists/#"

    const/16 v3, 0x69

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7820
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/genres"

    const/16 v3, 0x6a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7821
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/genres/#"

    const/16 v3, 0x6b

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7822
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/genres/#/members"

    const/16 v3, 0x6c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7823
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/genres/all/members"

    const/16 v3, 0x6d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7824
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/playlists"

    const/16 v3, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7825
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/playlists/#"

    const/16 v3, 0x6f

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7826
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/playlists/#/members"

    const/16 v3, 0x70

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7827
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/playlists/#/members/#"

    const/16 v3, 0x71

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7828
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/artists"

    const/16 v3, 0x72

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7829
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/artists/#"

    const/16 v3, 0x73

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7830
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/artists/#/albums"

    const/16 v3, 0x76

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7831
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/albums"

    const/16 v3, 0x74

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7832
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/albums/#"

    const/16 v3, 0x75

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7833
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/albumart"

    const/16 v3, 0x77

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7834
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/albumart/#"

    const/16 v3, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7835
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/#/albumart"

    const/16 v3, 0x79

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7838
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/music_years"

    const/16 v3, 0x83

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7839
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/music_composers"

    const/16 v3, 0x84

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7840
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/music_genres"

    const/16 v3, 0x85

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7841
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/music_artists_album_id"

    const/16 v3, 0x86

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7842
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/music_albums"

    const/16 v3, 0x87

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7843
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/media/music_folders"

    const/16 v3, 0x88

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7846
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/video/media"

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7847
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/video/media/#"

    const/16 v3, 0xc9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7848
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/video/thumbnails"

    const/16 v3, 0xca

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7849
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/video/thumbnails/#"

    const/16 v3, 0xcb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7851
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/media_scanner"

    const/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7853
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/fs_id"

    const/16 v3, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7854
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/version"

    const/16 v3, 0x259

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7856
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/mtp_connected"

    const/16 v3, 0x2c1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7860
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/raw_sql/*/*"

    const/16 v3, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7861
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/faces"

    const/16 v3, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7862
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/faces/#"

    const/16 v3, 0x7d1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7863
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/persons"

    const/16 v3, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7864
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/persons/#"

    const/16 v3, 0xbb9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7865
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/recommend_person/#/#"

    const/16 v3, 0xfa1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7866
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/face_scanner"

    const/16 v3, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7867
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/similar_persons/#"

    const/16 v3, 0xfa2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7870
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_USE_DOCUMENTCLASSIFIER:Z

    if-ne v0, v5, :cond_0

    .line 7871
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/smart_sort/scan"

    const/16 v3, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7872
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/smart_sort/"

    const/16 v3, 0x1389

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7873
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/smart_sort/#"

    const/16 v3, 0x138a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7877
    :cond_0
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/contextural_tags"

    const/16 v3, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7878
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/contextural_tags/#"

    const/16 v3, 0x1771

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7880
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*"

    const/16 v3, 0x12d

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7881
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const/4 v2, 0x0

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7884
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/file"

    const/16 v3, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7885
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/file/#"

    const/16 v3, 0x2bd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7886
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/object"

    const/16 v3, 0x2be

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7887
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/object/#"

    const/16 v3, 0x2bf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7888
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/object/#/references"

    const/16 v3, 0x2c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7893
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search_suggest_query"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7895
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search_suggest_query/*"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7899
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search/search_suggest_query"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7901
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search/search_suggest_query/*"

    const/16 v3, 0x191

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7905
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search/fancy"

    const/16 v3, 0x192

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7906
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/audio/search/fancy/*"

    const/16 v3, 0x192

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7908
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/mediadb/log"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7909
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "*/playlists/sync"

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7991
    const/16 v0, 0x95

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v4

    const-string v1, "Classic Rock"

    aput-object v1, v0, v5

    const-string v1, "Country"

    aput-object v1, v0, v6

    const-string v1, "Dance"

    aput-object v1, v0, v7

    const-string v1, "Disco"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Britpop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Negerpunk"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "JPop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "and further - Unknown"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaProvider;->ID3_GENRES:[Ljava/lang/String;

    .line 8147
    const/16 v0, 0x95

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Blues"

    aput-object v1, v0, v4

    const-string v1, "Rock"

    aput-object v1, v0, v5

    const-string v1, "Country"

    aput-object v1, v0, v6

    const-string v1, "Dance"

    aput-object v1, v0, v7

    const-string v1, "Dance"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Rap/Hip Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap/Hip Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Rap/Hip Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Comedy/Spoken"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "World"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "R&B/Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "Alternative/Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Others"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Religious"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "<unknown>"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MediaProvider;->ID3_TO_SEC_GENRES:[Ljava/lang/String;

    .line 8299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/media/MediaProvider;->mID3ToSecGenreMap:Ljava/util/HashMap;

    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to resolve canonical paths"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1095
    :cond_1
    const-string v0, ""

    goto/16 :goto_0

    .line 1099
    :cond_2
    const-string v0, ""

    goto/16 :goto_1

    .line 1100
    :cond_3
    const-string v0, ""

    goto/16 :goto_2

    .line 2370
    :cond_4
    const-string v0, ""

    goto/16 :goto_3

    .line 2371
    :cond_5
    const-string v0, ""

    goto/16 :goto_4

    .line 2373
    :cond_6
    const-string v0, ""

    goto/16 :goto_5

    .line 2374
    :cond_7
    const-string v0, ""

    goto/16 :goto_6

    .line 2375
    :cond_8
    const-string v0, ""

    goto/16 :goto_7

    .line 2377
    :cond_9
    const-string v0, "title_key"

    goto/16 :goto_8

    .line 2378
    :cond_a
    const-string v0, "title_key"

    goto/16 :goto_9
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 134
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    .line 177
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    .line 180
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    .line 183
    iput-object v3, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    .line 184
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xa

    invoke-static {}, Lcom/android/providers/media/MediaThumbRequest;->getComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    .line 195
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "(CASE WHEN grouporder=1 THEN 2130837505 ELSE CASE WHEN grouporder=2 THEN 2130837504 ELSE 2130837506 END END) AS suggest_icon_1"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "0 AS suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text1 AS suggest_text_1"

    aput-object v2, v0, v1

    const-string v1, "text1 AS suggest_intent_query"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "CASE when grouporder=1 THEN data1 ELSE artist END AS data1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CASE when grouporder=1 THEN data2 ELSE CASE WHEN grouporder=2 THEN NULL ELSE album END END AS data2"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "match as ar"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "grouporder"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "NULL AS itemorder"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsLegacy:[Ljava/lang/String;

    .line 214
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "artist"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "album"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "title"

    aput-object v2, v0, v1

    const-string v1, "data1"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "data2"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsFancy:[Ljava/lang/String;

    .line 224
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "mime_type"

    aput-object v1, v0, v6

    const-string v1, "(CASE WHEN grouporder=1 THEN 2130837505 ELSE CASE WHEN grouporder=2 THEN 2130837504 ELSE 2130837506 END END) AS suggest_icon_1"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "text1 AS suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "text1 AS suggest_intent_query"

    aput-object v2, v0, v1

    const-string v1, "(CASE WHEN grouporder=1 THEN \'%1\' ELSE CASE WHEN grouporder=3 THEN artist || \' - \' || album ELSE CASE WHEN text2!=\'<unknown>\' THEN text2 ELSE NULL END END END) AS suggest_text_2"

    aput-object v1, v0, v5

    const/4 v1, 0x6

    const-string v2, "suggest_intent_data"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    .line 240
    iput v5, p0, Lcom/android/providers/media/MediaProvider;->SEARCH_COLUMN_BASIC_TEXT2:I

    .line 275
    const-string v0, "content://media/external/audio/albumart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mAlbumArtBaseUri:Landroid/net/Uri;

    .line 282
    iput v4, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    .line 283
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSyncLock:Ljava/lang/Object;

    .line 287
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSecureModeSyncLock:Ljava/lang/Object;

    .line 289
    new-instance v0, Lcom/android/providers/media/MediaProvider$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$1;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 308
    new-instance v0, Lcom/android/providers/media/MediaProvider$2;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$2;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSecureReceiver:Landroid/content/BroadcastReceiver;

    .line 485
    new-instance v0, Lcom/android/providers/media/MediaProvider$3;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$3;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 534
    new-instance v0, Lcom/android/providers/media/MediaProvider$4;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$4;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    .line 773
    iput-object v3, p0, Lcom/android/providers/media/MediaProvider;->mContentApp:Lcom/android/providers/media/ContentApp;

    .line 810
    new-instance v0, Lcom/android/providers/media/MediaProvider$5;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$5;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    .line 871
    new-instance v0, Lcom/android/providers/media/MediaProvider$6;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$6;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSmartSortBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1105
    iput-object v3, p0, Lcom/android/providers/media/MediaProvider;->mSmartSortContentApp:Lcom/android/providers/media/SmartSortContentApp;

    .line 7461
    iput-object v3, p0, Lcom/android/providers/media/MediaProvider;->mDatabases_lgtvas:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 7469
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/media/MediaProvider;->mVolumeId:I

    .line 7615
    iput-object v3, p0, Lcom/android/providers/media/MediaProvider;->mRecomendThread:Ljava/lang/Thread;

    .line 7616
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/Vector;

    .line 7617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mNewPersonList:Ljava/util/ArrayList;

    .line 7769
    iput-object v3, p0, Lcom/android/providers/media/MediaProvider;->mGetSimilarPersonsThread:Ljava/lang/Thread;

    .line 8387
    new-instance v0, Lcom/android/providers/media/MediaProvider$11;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$11;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/ContentApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mContentApp:Lcom/android/providers/media/ContentApp;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->deleteAudioDeleteTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$1100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->detachVolume(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1300()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->stopMediaScanner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/providers/media/MediaProvider;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaProvider;->sendSpcObjectRemoved(J)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/IMtpService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/IMtpService;)Lcom/android/providers/media/IMtpService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/providers/media/MediaProvider;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2}, Lcom/android/providers/media/MediaProvider;->sendObjectRemoved(J)V

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_ADD_DB4VAS:Z

    return v0
.end method

.method static synthetic access$1900(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 134
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/providers/media/MediaProvider;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 134
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->bIsShuttingDown:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 134
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/providers/media/MediaProvider;->updateLGTDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V

    return-void
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    sput-boolean p0, Lcom/android/providers/media/MediaProvider;->bIsShuttingDown:Z

    return p0
.end method

.method static synthetic access$2100(Lcom/android/providers/media/MediaProvider;)Ljava/util/PriorityQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/MediaThumbRequest;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaThumbRequest;)Lcom/android/providers/media/MediaThumbRequest;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/providers/media/MediaProvider;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 134
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaProvider;->hidePath(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/android/providers/media/MediaProvider;->openFileColumns:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/media/MediaProvider;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSecureModeSyncLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/providers/media/MediaProvider;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/providers/media/MediaProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mNewPersonList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 134
    sput-boolean p0, Lcom/android/providers/media/MediaProvider;->bIsSecureMode:Z

    return p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    sget-object v0, Lcom/android/providers/media/MediaProvider;->mExternalStorageSdPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/providers/media/MediaProvider;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/media/MediaProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/providers/media/MediaProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/providers/media/MediaProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/android/providers/media/MediaProvider;->mDisableHomeSyncObjectCallbacks:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/providers/media/MediaProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/android/providers/media/MediaProvider;->mDisableHomeSyncObjectCallbacks:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/providers/media/MediaProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->createAudioDeleteTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private addKeyface(II)Z
    .locals 12

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 7673
    const/4 v10, -0x1

    .line 7678
    sget-object v0, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 7679
    if-nez v0, :cond_0

    move v0, v8

    .line 7765
    :goto_0
    return v0

    .line 7680
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 7681
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mPersonOpenHelper:Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 7682
    if-eqz v0, :cond_1

    if-nez v11, :cond_2

    :cond_1
    move v0, v8

    .line 7683
    goto :goto_0

    .line 7684
    :cond_2
    const-string v1, "faces"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "group_id"

    aput-object v3, v2, v8

    const-string v3, "face_data"

    aput-object v3, v2, v9

    const-string v3, "auto_group"

    aput-object v3, v2, v4

    const-string v3, "_id=?"

    new-array v4, v9, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 7686
    if-eqz v2, :cond_16

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 7688
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 7689
    const/4 v0, 0x2

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    move v10, v1

    .line 7692
    :goto_1
    if-eqz v2, :cond_3

    .line 7693
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 7695
    :cond_3
    if-ltz v10, :cond_4

    if-gtz v0, :cond_6

    :cond_4
    move v0, v8

    .line 7696
    goto :goto_0

    .line 7692
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_5

    .line 7693
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 7704
    :cond_6
    const-string v0, "persons"

    const-string v1, "cover"

    invoke-static {v11, v0, v1, p2}, Lcom/android/providers/media/NativeApi;->getStringById(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 7705
    if-nez v0, :cond_9

    if-ltz v10, :cond_9

    .line 7706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/face/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 7707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/providers/media/ContentApp;->mFaceDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7711
    :try_start_1
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 7712
    :try_start_2
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_16

    .line 7713
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 7714
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 7716
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 7719
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 7720
    const-string v1, "cover"

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7721
    const-string v1, "persons"

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v11, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_17

    .line 7731
    if-eqz v7, :cond_7

    .line 7732
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    .line 7738
    :cond_7
    :goto_2
    if-eqz v6, :cond_8

    .line 7739
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 7745
    :cond_8
    if-eqz v6, :cond_9

    .line 7746
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    .line 7756
    :cond_9
    :goto_3
    sget-object v0, Lcom/android/providers/media/Columns;->RAW_SQL_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "person"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/providers/media/NativeApi;->getFaceFreeDataIndex(Landroid/net/Uri;Landroid/content/Context;)I

    move-result v0

    .line 7757
    if-ltz v10, :cond_a

    if-ltz v0, :cond_a

    .line 7758
    sget v1, Lcom/android/providers/media/ContentApp;->mFaceCacheMgr:I

    invoke-static {v1, v10, v0}, Lcom/android/providers/media/NativeApi;->addAsKeyFace(III)V

    .line 7759
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 7760
    const-string v2, "person_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7761
    const-string v2, "face_data"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7762
    const-string v0, "faces"

    const-string v2, "face_data"

    invoke-virtual {v11, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_a
    move v0, v9

    .line 7765
    goto/16 :goto_0

    .line 7741
    :catch_0
    move-exception v0

    .line 7745
    if-eqz v6, :cond_9

    .line 7746
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 7748
    :catch_1
    move-exception v0

    goto :goto_3

    .line 7744
    :catchall_1
    move-exception v0

    .line 7745
    if-eqz v6, :cond_b

    .line 7746
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e

    .line 7750
    :cond_b
    :goto_4
    throw v0

    .line 7723
    :catch_2
    move-exception v0

    move-object v1, v5

    .line 7725
    :goto_5
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    .line 7731
    if-eqz v1, :cond_c

    .line 7732
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_f

    .line 7738
    :cond_c
    :goto_6
    if-eqz v5, :cond_d

    .line 7739
    :try_start_b
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 7745
    :cond_d
    if-eqz v5, :cond_9

    .line 7746
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_3

    .line 7748
    :catch_3
    move-exception v0

    goto :goto_3

    .line 7741
    :catch_4
    move-exception v0

    .line 7745
    if-eqz v5, :cond_9

    .line 7746
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_3

    .line 7748
    :catch_5
    move-exception v0

    goto :goto_3

    .line 7744
    :catchall_2
    move-exception v0

    .line 7745
    if-eqz v5, :cond_e

    .line 7746
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_10

    .line 7750
    :cond_e
    :goto_7
    throw v0

    .line 7726
    :catch_6
    move-exception v0

    move-object v6, v5

    move-object v7, v5

    .line 7728
    :goto_8
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 7731
    if-eqz v7, :cond_f

    .line 7732
    :try_start_10
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11

    .line 7738
    :cond_f
    :goto_9
    if-eqz v6, :cond_10

    .line 7739
    :try_start_11
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    .line 7745
    :cond_10
    if-eqz v6, :cond_9

    .line 7746
    :try_start_12
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    goto/16 :goto_3

    .line 7748
    :catch_7
    move-exception v0

    goto/16 :goto_3

    .line 7741
    :catch_8
    move-exception v0

    .line 7745
    if-eqz v6, :cond_9

    .line 7746
    :try_start_13
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    goto/16 :goto_3

    .line 7748
    :catch_9
    move-exception v0

    goto/16 :goto_3

    .line 7744
    :catchall_3
    move-exception v0

    .line 7745
    if-eqz v6, :cond_11

    .line 7746
    :try_start_14
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_12

    .line 7750
    :cond_11
    :goto_a
    throw v0

    .line 7730
    :catchall_4
    move-exception v0

    move-object v6, v5

    move-object v7, v5

    .line 7731
    :goto_b
    if-eqz v7, :cond_12

    .line 7732
    :try_start_15
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_13

    .line 7738
    :cond_12
    :goto_c
    if-eqz v6, :cond_13

    .line 7739
    :try_start_16
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    .line 7745
    :cond_13
    if-eqz v6, :cond_14

    .line 7746
    :try_start_17
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_14

    .line 7750
    :cond_14
    :goto_d
    throw v0

    .line 7741
    :catch_a
    move-exception v1

    .line 7745
    if-eqz v6, :cond_14

    .line 7746
    :try_start_18
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b

    goto :goto_d

    .line 7748
    :catch_b
    move-exception v1

    goto :goto_d

    .line 7744
    :catchall_5
    move-exception v0

    .line 7745
    if-eqz v6, :cond_15

    .line 7746
    :try_start_19
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_15

    .line 7750
    :cond_15
    :goto_e
    throw v0

    .line 7733
    :catch_c
    move-exception v0

    goto/16 :goto_2

    .line 7748
    :catch_d
    move-exception v0

    goto/16 :goto_3

    :catch_e
    move-exception v1

    goto :goto_4

    .line 7733
    :catch_f
    move-exception v0

    goto :goto_6

    .line 7748
    :catch_10
    move-exception v1

    goto :goto_7

    .line 7733
    :catch_11
    move-exception v0

    goto :goto_9

    .line 7748
    :catch_12
    move-exception v1

    goto :goto_a

    .line 7733
    :catch_13
    move-exception v1

    goto :goto_c

    .line 7748
    :catch_14
    move-exception v1

    goto :goto_d

    :catch_15
    move-exception v1

    goto :goto_e

    .line 7730
    :catchall_6
    move-exception v0

    move-object v6, v5

    goto :goto_b

    :catchall_7
    move-exception v0

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object v6, v5

    move-object v7, v1

    goto :goto_b

    .line 7726
    :catch_16
    move-exception v0

    move-object v6, v5

    goto :goto_8

    :catch_17
    move-exception v0

    goto :goto_8

    .line 7723
    :catch_18
    move-exception v0

    move-object v1, v7

    goto/16 :goto_5

    :catch_19
    move-exception v0

    move-object v5, v6

    move-object v1, v7

    goto/16 :goto_5

    :cond_16
    move v0, v8

    goto/16 :goto_1
.end method

.method private attachVolume(Ljava/lang/String;)Landroid/net/Uri;
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 7215
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 7216
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Opening and closing databases not allowed."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7220
    :cond_0
    iget-object v7, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v7

    .line 7221
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    monitor-exit v7

    .line 7328
    :goto_0
    return-object v0

    .line 7225
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 7227
    const-string v0, "internal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7228
    new-instance v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    const-string v2, "internal.db"

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 7295
    :goto_1
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7297
    iget-boolean v1, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-nez v1, :cond_f

    .line 7299
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/media/MediaProvider;->createDefaultFolders(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 7302
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "Android/data/com.android.providers.media/albumthumbs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 7303
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move v0, v6

    .line 7304
    :goto_2
    if-eqz v1, :cond_b

    array-length v2, v1

    if-ge v0, v2, :cond_b

    .line 7305
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 7304
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 7230
    :cond_2
    const-string v0, "external"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7231
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7232
    sget-object v0, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 7233
    invoke-static {v0}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v8

    .line 7234
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " volume ID: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "external-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".db"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7238
    new-instance v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    .line 7240
    iput v8, p0, Lcom/android/providers/media/MediaProvider;->mVolumeId:I

    goto/16 :goto_1

    .line 7325
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 7246
    :cond_3
    :try_start_1
    const-string v0, "external.db"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 7250
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 7251
    const-string v4, "mounted"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "mounted_ro"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primary storage did not mounted!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7256
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    .line 7261
    invoke-virtual {v1}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v5

    array-length v8, v5

    move v4, v6

    :goto_3
    if-ge v4, v8, :cond_8

    aget-object v0, v5, v4

    .line 7262
    const-string v9, "external-"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 7263
    invoke-virtual {v1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 7264
    if-nez v2, :cond_5

    .line 7261
    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v0

    goto :goto_3

    .line 7266
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-lez v9, :cond_6

    .line 7267
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_4

    .line 7270
    :cond_6
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_7
    move-object v0, v2

    goto :goto_4

    .line 7274
    :cond_8
    if-eqz v2, :cond_10

    .line 7275
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7276
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "renamed database "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " to "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "external.db"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v3

    .line 7288
    :goto_5
    new-instance v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    goto/16 :goto_1

    .line 7279
    :cond_9
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to rename database "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "external.db"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 7292
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no volume named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7308
    :cond_b
    sget-object v1, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "album_art"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 7311
    :goto_6
    if-eqz v1, :cond_d

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 7312
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    .line 7315
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_c

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v0

    :cond_d
    if-eqz v1, :cond_e

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7318
    :cond_e
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 7319
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7320
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7321
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleting obsolete album art "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7322
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_7

    .line 7325
    :cond_f
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7327
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attached volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    :cond_10
    move-object v2, v3

    goto/16 :goto_5
.end method

.method private static changeSoundPath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 7383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_CONSTANT_PATH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 7384
    sget-object v0, Lcom/android/providers/media/MediaProvider;->mExternalStoragePath:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/providers/media/MediaProvider;->mExternalStoragePath:Ljava/lang/String;

    .line 7385
    :goto_0
    sget-object v1, Lcom/android/providers/media/MediaProvider;->mExternalStorageSdPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/providers/media/MediaProvider;->mExternalStorageSdPath:Ljava/lang/String;

    .line 7386
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7387
    if-eqz v2, :cond_5

    .line 7388
    if-eqz v1, :cond_3

    const-string v3, "/mnt/sdcard/external_sd/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7389
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "/mnt/sdcard/external_sd"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7426
    :cond_0
    :goto_2
    return-void

    .line 7384
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7385
    :cond_2
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->getExternalStorageSdPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 7391
    :cond_3
    if-eqz v0, :cond_4

    const-string v3, "/mnt/sdcard/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7392
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "/mnt/sdcard"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v9, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 7394
    :cond_4
    if-eqz v1, :cond_0

    const-string v0, "/mnt/extSdCard/"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7395
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "/mnt/extSdCard"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v9, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    .line 7399
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 7400
    if-eqz v10, :cond_0

    .line 7401
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7404
    const-string v0, "/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 7405
    if-ltz v0, :cond_0

    .line 7408
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 7409
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeSoundPath - when pathString is null. Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7413
    :try_start_0
    const-string v1, "files"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 7414
    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_6

    .line 7415
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7416
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7417
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v9, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 7422
    :cond_6
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    .line 7419
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 7420
    :goto_3
    :try_start_2
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeSoundPath : Excepiton : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", type : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", uriString : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", index : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7422
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 7419
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method private checkLeadingPathComponentsWorldExecutable(Ljava/lang/String;)V
    .locals 7
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 6603
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 6605
    .local v2, parent:Ljava/io/File;
    sget v0, Llibcore/io/OsConstants;->S_IXOTH:I

    .line 6607
    .local v0, accessBits:I
    :goto_0
    if-eqz v2, :cond_2

    .line 6608
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6610
    new-instance v4, Ljava/io/FileNotFoundException;

    const-string v5, "access denied"

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6613
    :cond_0
    :try_start_0
    sget-object v4, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v3

    .line 6614
    .local v3, stat:Llibcore/io/StructStat;
    iget v4, v3, Llibcore/io/StructStat;->st_mode:I

    and-int/2addr v4, v0

    if-eq v4, v0, :cond_1

    .line 6616
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t access "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6618
    .end local v3           #stat:Llibcore/io/StructStat;
    :catch_0
    move-exception v1

    .line 6620
    .local v1, e1:Llibcore/io/ErrnoException;
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t access "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 6622
    .end local v1           #e1:Llibcore/io/ErrnoException;
    .restart local v3       #stat:Llibcore/io/StructStat;
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 6624
    .end local v3           #stat:Llibcore/io/StructStat;
    :cond_2
    return-void
.end method

.method private checkWorldReadAccess(Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 6586
    :try_start_0
    sget-object v2, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v2, p1}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v1

    .line 6587
    .local v1, stat:Llibcore/io/StructStat;
    sget v0, Llibcore/io/OsConstants;->S_IROTH:I

    .line 6588
    .local v0, accessBits:I
    iget v2, v1, Llibcore/io/StructStat;->st_mode:I

    invoke-static {v2}, Llibcore/io/OsConstants;->S_ISREG(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Llibcore/io/StructStat;->st_mode:I

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_0

    .line 6590
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->checkLeadingPathComponentsWorldExecutable(Ljava/lang/String;)V
    :try_end_0
    .catch Llibcore/io/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6591
    return-void

    .line 6593
    .end local v0           #accessBits:I
    .end local v1           #stat:Llibcore/io/StructStat;
    :catch_0
    move-exception v2

    .line 6598
    :cond_0
    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t access "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter
    .parameter "userArgs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3586
    .local p1, prepend:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 3587
    .local v2, presize:I
    if-nez v2, :cond_0

    .line 3599
    .end local p2
    :goto_0
    return-object p2

    .line 3591
    .restart local p2
    :cond_0
    if-eqz p2, :cond_1

    array-length v3, p2

    .line 3592
    .local v3, usersize:I
    :goto_1
    add-int v4, v2, v3

    new-array v0, v4, [Ljava/lang/String;

    .line 3593
    .local v0, combined:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 3594
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v1

    .line 3593
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3591
    .end local v0           #combined:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v3           #usersize:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 3596
    .restart local v0       #combined:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v3       #usersize:I
    :cond_2
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_3

    .line 3597
    add-int v4, v2, v1

    aget-object v5, p2, v1

    aput-object v5, v0, v4

    .line 3596
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    move-object p2, v0

    .line 3599
    goto :goto_0
.end method

.method private static computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 2785
    .line 2820
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 2821
    if-nez v0, :cond_0

    .line 2822
    new-instance v0, Ljava/io/File;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2828
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2829
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2834
    const-string v2, "bucket_id"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2835
    const-string v1, "bucket_display_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2839
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_1

    .line 2840
    const-string v0, "bucket_display_name"

    const-string v1, "bucket_display_name_pinyin"

    invoke-static {p1, v0, v1}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2844
    :cond_1
    return-void
.end method

.method private static computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 8478
    const-string v0, "<unknown>"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8479
    const-string v0, "\u0001"

    .line 8540
    :cond_0
    :goto_0
    return-object v0

    .line 8481
    :cond_1
    const-string v0, "[\\[\\]\\(\\)\"\'.,?!]"

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 8482
    invoke-static {}, Lcom/android/providers/media/HanziToPinyin;->getInstance()Lcom/android/providers/media/HanziToPinyin;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/providers/media/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 8483
    const-string v0, ""

    .line 8485
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 8486
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 8487
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v3, v1

    .line 8488
    :goto_1
    if-ge v3, v5, :cond_5

    .line 8489
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/HanziToPinyin$Token;

    .line 8490
    iget v2, v0, Lcom/android/providers/media/HanziToPinyin$Token;->type:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_3

    .line 8491
    iget-object v2, v0, Lcom/android/providers/media/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 8492
    iget-object v0, v0, Lcom/android/providers/media/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 8493
    array-length v0, v2

    array-length v8, v7

    if-ge v0, v8, :cond_2

    array-length v0, v2

    :goto_2
    move v2, v1

    .line 8495
    :goto_3
    if-ge v2, v0, :cond_4

    .line 8496
    aget-object v8, v7, v2

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8495
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 8493
    :cond_2
    array-length v0, v7

    goto :goto_2

    .line 8502
    :cond_3
    iget-object v0, v0, Lcom/android/providers/media/HanziToPinyin$Token;->target:Ljava/lang/String;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 8503
    :goto_4
    array-length v7, v2

    if-ge v0, v7, :cond_4

    .line 8504
    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8505
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8503
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 8488
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 8510
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 8511
    const/4 v2, 0x1

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 8512
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    sput-object v2, Lcom/android/providers/media/MediaProvider;->mCollator:Ljava/text/Collator;

    .line 8513
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8515
    sget-object v3, Lcom/android/providers/media/MediaProvider;->mCollator:Ljava/text/Collator;

    const-string v4, "#"

    invoke-virtual {v3, v1, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    .line 8516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8517
    :cond_6
    const-string v1, "%7C"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 8518
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8519
    :cond_7
    const-string v1, "%5B"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 8520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8521
    :cond_8
    const-string v1, "~"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    .line 8522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8523
    :cond_9
    const-string v1, "_"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 8524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8525
    :cond_a
    const-string v1, "%C2%A2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_b

    .line 8526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8527
    :cond_b
    const-string v1, "%C2%A3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    .line 8528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8529
    :cond_c
    const-string v1, "%C2%A5"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    .line 8530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8531
    :cond_d
    const-string v1, "%C3%97"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_e

    .line 8532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8533
    :cond_e
    const-string v1, "%C3%B7"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_f

    .line 8534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 8535
    :cond_f
    const-string v1, "%E2%82%AC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 8536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 2852
    if-nez p0, :cond_1

    const-string v0, ""

    .line 2853
    :goto_0
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2854
    if-ltz v1, :cond_0

    .line 2855
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 2857
    :cond_0
    const-string v1, "_display_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2858
    return-void

    .line 2852
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static computeTakenTime(Landroid/content/ContentValues;)V
    .locals 6
    .parameter "values"

    .prologue
    .line 2867
    const-string v1, "datetaken"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2870
    const-string v1, "date_modified"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 2871
    .local v0, lastModified:Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 2872
    const-string v1, "datetaken"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2875
    .end local v0           #lastModified:Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method private convertOrgin2PinyinForSort(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 8431
    if-nez p1, :cond_0

    .line 8441
    :goto_0
    return-void

    .line 8435
    :cond_0
    const-string v0, "genre_name"

    const-string v1, "genre_name_pinyin"

    invoke-static {p1, v0, v1}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8436
    const-string v0, "composer"

    const-string v1, "composer_pinyin"

    invoke-static {p1, v0, v1}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8437
    const-string v0, "title"

    const-string v1, "title_pinyin"

    invoke-static {p1, v0, v1}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8438
    const-string v0, "_display_name"

    const-string v1, "_display_name_pinyin"

    invoke-static {p1, v0, v1}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8440
    const-string v0, "title"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSearch(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private createAudioDeleteTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 324
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_meta_cleanup DELETE ON files WHEN old.media_type = 2 BEGIN DELETE FROM audio_genres_map WHERE audio_id = old._id;DELETE FROM audio_playlists_map WHERE audio_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method private createDefaultFolders(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 844
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 845
    const-string v2, "created_default_folders"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_2

    .line 846
    sget-object v2, Lcom/android/providers/media/MediaProvider;->sDefaultFolderNames:[Ljava/lang/String;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 847
    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 848
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 849
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 850
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, p2, v4}, Lcom/android/providers/media/MediaProvider;->insertDirectory(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    .line 846
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 854
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 855
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 856
    const-string v1, "created_default_folders"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 857
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 859
    :cond_2
    return-void
.end method

.method private deleteAudioDeleteTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 332
    const-string v0, "DROP TRIGGER IF EXISTS audio_meta_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method private deleteFacePerson(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "table"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 5396
    const/4 v0, 0x0

    .line 5397
    .local v0, count:I
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .line 5398
    .local v1, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v1, :cond_0

    .line 5399
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5402
    :cond_0
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 5403
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_1

    .line 5404
    const/4 v3, 0x0

    .line 5406
    :goto_0
    return v3

    .line 5405
    :cond_1
    invoke-virtual {v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move v3, v0

    .line 5406
    goto :goto_0
.end method

.method private detachVolume(Landroid/net/Uri;)V
    .locals 6

    .prologue
    .line 7339
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 7340
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Opening and closing databases not allowed."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7344
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7345
    const-string v1, "internal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7346
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Deleting the internal volume is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7348
    :cond_1
    const-string v1, "external"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 7350
    sget-boolean v1, Lcom/android/providers/media/MediaProvider;->FLAG_ADD_DB4VAS:Z

    if-eqz v1, :cond_2

    .line 7351
    const-string v1, "lgtvas"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 7352
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no volume named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7357
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no volume named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 7361
    :cond_3
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v3

    .line 7362
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 7363
    if-nez v1, :cond_4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7379
    :goto_0
    return-void

    .line 7367
    :cond_4
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7373
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7374
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 7375
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7377
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 7378
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detached volume: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7369
    :catch_0
    move-exception v2

    .line 7370
    :try_start_3
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v5, "Can\'t touch database file"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 7375
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private doAudioSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    .line 3607
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    .line 3608
    :goto_0
    const-string v2, "  "

    const-string v3, " "

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 3610
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3612
    :goto_1
    array-length v2, v1

    new-array v5, v2, [Ljava/lang/String;

    .line 3613
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    .line 3614
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/text/Collator;->setStrength(I)V

    .line 3615
    array-length v4, v1

    .line 3616
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_5

    .line 3623
    aget-object v2, v1, v3

    invoke-static {v2}, Lcom/android/providers/media/SecDatabaseUtils;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3625
    if-eqz v2, :cond_1

    .line 3626
    const-string v6, "\\"

    const-string v7, "\\\\"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3627
    const-string v6, "%"

    const-string v7, "\\%"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3628
    const-string v6, "_"

    const-string v7, "\\_"

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3629
    aget-object v6, v1, v3

    const-string v7, "a"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v6, v1, v3

    const-string v7, "an"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    aget-object v6, v1, v3

    const-string v7, "the"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    const-string v2, "%"

    :goto_3
    aput-object v2, v5, v3

    .line 3616
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    .line 3607
    :cond_2
    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3610
    :cond_3
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_1

    .line 3629
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "%"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 3635
    :cond_5
    const-string v4, ""

    .line 3636
    const/4 v2, 0x0

    move v3, v2

    :goto_4
    array-length v2, v1

    if-ge v3, v2, :cond_7

    .line 3637
    if-nez v3, :cond_6

    .line 3638
    const-string v2, "match LIKE ? ESCAPE \'\\\'"

    .line 3636
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object v4, v2

    goto :goto_4

    .line 3640
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND match LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    .line 3644
    :cond_7
    const-string v1, "search"

    invoke-virtual {p2, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3646
    const/16 v1, 0x192

    move/from16 v0, p8

    if-ne v0, v1, :cond_8

    .line 3647
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsFancy:[Ljava/lang/String;

    .line 3653
    :goto_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object/from16 v9, p9

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 3648
    :cond_8
    const/16 v1, 0x191

    move/from16 v0, p8

    if-ne v0, v1, :cond_9

    .line 3649
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    goto :goto_6

    .line 3651
    :cond_9
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsLegacy:[Ljava/lang/String;

    goto :goto_6
.end method

.method private dump(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Z)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 7922
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 7923
    iget-object v0, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7924
    const-string v0, ": "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7925
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 7926
    if-nez v0, :cond_1

    .line 7927
    const-string v0, "null"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7986
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 7929
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7930
    const-string v1, "files"

    new-array v2, v10, [Ljava/lang/String;

    const-string v4, "count(*)"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 7932
    if-eqz v1, :cond_6

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 7933
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 7934
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " rows, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7939
    :goto_1
    if-eqz v1, :cond_2

    .line 7940
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 7943
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inserts, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updates, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " deletes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " queries, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7947
    iget-wide v1, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_4

    .line 7948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v4, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const v6, 0x80011

    invoke-static {v2, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7953
    iget-wide v1, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStopTime:J

    .line 7954
    iget-wide v4, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    cmp-long v4, v1, v4

    if-gez v4, :cond_3

    .line 7955
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    .line 7957
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    sub-long/2addr v1, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v1, v5

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7959
    iget-wide v1, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStopTime:J

    iget-wide v4, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    cmp-long v1, v1, v4

    if-gez v1, :cond_4

    .line 7960
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 7962
    const-string v1, " (ongoing)"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7968
    :cond_4
    :goto_2
    if-eqz p2, :cond_0

    .line 7969
    const-string v1, "log"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "time"

    aput-object v4, v2, v9

    const-string v4, "message"

    aput-object v4, v2, v10

    const-string v7, "time"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 7972
    if-eqz v1, :cond_9

    .line 7973
    :goto_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7974
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7975
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7976
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 7980
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    .line 7981
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 7936
    :cond_6
    :try_start_2
    const-string v2, "couldn\'t get row count, "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_1

    .line 7939
    :catchall_1
    move-exception v0

    if-eqz v1, :cond_7

    .line 7940
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    .line 7964
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (scanning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 7980
    :cond_9
    if-eqz v1, :cond_0

    .line 7981
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5
    .parameter "internal"
    .parameter "initialValues"
    .parameter "preferredExtension"
    .parameter "directoryName"

    .prologue
    .line 3722
    const-string v2, "_data"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3723
    .local v0, file:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3724
    invoke-direct {p0, p1, p3, p4}, Lcom/android/providers/media/MediaProvider;->generateFileName(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3725
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 3726
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3731
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->ensureFileExists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3732
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create new file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3728
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_0
    move-object v1, p2

    .restart local v1       #values:Landroid/content/ContentValues;
    goto :goto_0

    .line 3734
    :cond_1
    return-object v1
.end method

.method private ensureFileExists(Ljava/lang/String;)Z
    .locals 8
    .parameter "path"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5228
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5229
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 5246
    :goto_0
    return v5

    .line 5234
    :cond_0
    const/16 v7, 0x2f

    invoke-virtual {p1, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 5235
    .local v4, secondSlash:I
    if-ge v4, v5, :cond_1

    move v5, v6

    goto :goto_0

    .line 5236
    :cond_1
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 5237
    .local v1, directoryPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5238
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    .line 5239
    goto :goto_0

    .line 5240
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 5242
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 5243
    :catch_0
    move-exception v3

    .line 5244
    .local v3, ioe:Ljava/io/IOException;
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v7, "File creation failed"

    invoke-static {v5, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .line 5246
    goto :goto_0
.end method

.method private static findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 8407
    const/4 v0, 0x0

    .line 8408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pragma table_info("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 8410
    if-eqz v1, :cond_2

    .line 8411
    const-string v2, "name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 8415
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8416
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 8418
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 8419
    const/4 v0, 0x1

    goto :goto_0

    .line 8423
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 8427
    :cond_2
    return v0

    .line 8423
    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private generateFileName(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 5212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 5214
    if-eqz p1, :cond_0

    .line 5215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Writing to internal storage is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5219
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCompressedAlbumArt(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 13

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 6676
    .line 6679
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6680
    const/high16 v4, 0x1000

    invoke-static {v0, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 6683
    new-instance v4, Landroid/media/MediaScanner;

    invoke-direct {v4, p0}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    .line 6684
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/MediaScanner;->extractAlbumArt(Ljava/io/FileDescriptor;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    .line 6685
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 6696
    if-nez v6, :cond_a

    if-eqz p1, :cond_a

    .line 6697
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 6698
    if-lez v0, :cond_a

    .line 6700
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 6701
    sget-object v0, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    .line 6702
    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 6706
    sget-object v9, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6707
    :try_start_2
    sget-object v7, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6708
    sget-object v0, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6744
    :goto_0
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6746
    if-eqz v0, :cond_a

    .line 6747
    :try_start_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6748
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6749
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 6752
    :try_start_4
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 6753
    :try_start_5
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 6757
    if-eqz v1, :cond_0

    .line 6758
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_0
    :goto_1
    move-object v5, v0

    .line 6768
    :goto_2
    return-object v5

    .line 6709
    :cond_1
    :try_start_7
    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v8, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 6711
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6712
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v10

    .line 6713
    if-nez v10, :cond_2

    .line 6714
    monitor-exit v9

    goto :goto_2

    .line 6744
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 6765
    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_1

    .line 6717
    :cond_2
    const/16 v4, 0x3e8

    .line 6718
    :try_start_9
    array-length v0, v10

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    move v0, v4

    move-object v4, v5

    :goto_3
    if-ltz v7, :cond_b

    .line 6719
    aget-object v11, v10, v7

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 6720
    const-string v12, "albumart.jpg"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 6721
    aget-object v0, v10, v7

    .line 6742
    :goto_4
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sFolderArtMap:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6723
    :cond_3
    const-string v12, "albumart"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "large.jpg"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    if-le v0, v1, :cond_5

    .line 6726
    aget-object v0, v10, v7

    move-object v4, v0

    move v0, v1

    .line 6718
    :cond_4
    :goto_5
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 6728
    :cond_5
    const-string v12, "albumart"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v12, ".jpg"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    if-le v0, v2, :cond_6

    .line 6731
    aget-object v0, v10, v7

    move-object v4, v0

    move v0, v2

    .line 6732
    goto :goto_5

    .line 6733
    :cond_6
    const-string v12, ".jpg"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    if-le v0, v3, :cond_7

    .line 6734
    aget-object v0, v10, v7

    move-object v4, v0

    move v0, v3

    .line 6735
    goto :goto_5

    .line 6736
    :cond_7
    const-string v12, ".png"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x4

    if-le v0, v11, :cond_4

    .line 6737
    aget-object v4, v10, v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 6738
    const/4 v0, 0x4

    goto :goto_5

    .line 6754
    :catch_1
    move-exception v0

    move-object v0, v5

    .line 6757
    :goto_6
    if-eqz v0, :cond_9

    .line 6758
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    move-object v0, v5

    goto/16 :goto_1

    .line 6757
    :catchall_1
    move-exception v1

    :goto_7
    if-eqz v5, :cond_8

    .line 6758
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_8
    throw v1
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 6765
    :catch_2
    move-exception v1

    goto/16 :goto_1

    :catch_3
    move-exception v0

    move-object v0, v5

    goto/16 :goto_1

    .line 6757
    :catchall_2
    move-exception v2

    move-object v5, v1

    move-object v1, v2

    goto :goto_7

    .line 6754
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_6

    :cond_9
    move-object v0, v5

    goto/16 :goto_1

    :cond_a
    move-object v0, v6

    goto/16 :goto_1

    :cond_b
    move-object v0, v4

    goto :goto_4

    :cond_c
    move-object v0, v5

    goto/16 :goto_0
.end method

.method private getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .locals 7
    .parameter "uri"

    .prologue
    .line 7137
    iget-object v6, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    monitor-enter v6

    .line 7138
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 7140
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_ADD_DB4VAS:Z

    if-eqz v0, :cond_1

    .line 7141
    const-string v0, "lgtvas"

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7142
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases_lgtvas:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    if-nez v0, :cond_0

    .line 7143
    new-instance v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "lgtvas.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases_lgtvas:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 7145
    :cond_0
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases_lgtvas:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    monitor-exit v6

    .line 7152
    :goto_0
    return-object v0

    .line 7149
    :cond_1
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    monitor-exit v6

    goto :goto_0

    .line 7151
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7152
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .locals 3

    .prologue
    .line 7158
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 7159
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 7160
    const/16 v2, 0x2710

    if-ne v0, v2, :cond_1

    .line 7161
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 7162
    const-string v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7163
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 7182
    :goto_0
    return-object v0

    .line 7164
    :cond_0
    const-string v1, "person"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7165
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPersonOpenHelper:Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;

    goto :goto_0

    .line 7168
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 7180
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    goto :goto_0

    .line 7171
    :sswitch_0
    const-string v0, "external"

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7172
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    goto :goto_0

    .line 7174
    :cond_2
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPersonOpenHelper:Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;

    goto :goto_0

    .line 7178
    :sswitch_1
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mPersonOpenHelper:Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;

    goto :goto_0

    .line 7182
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 7168
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7d1 -> :sswitch_0
        0xbb8 -> :sswitch_1
        0xbb9 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getDatabaseVersion(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 863
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 865
    :catch_0
    move-exception v0

    .line 866
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t get version code for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getExternalStorageSdPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 7429
    .line 7431
    if-nez v1, :cond_1

    .line 7432
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 7433
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 7434
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 7435
    aget-object v3, v2, v0

    .line 7436
    const-string v4, "sd"

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7437
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 7442
    :goto_1
    return-object v0

    .line 7434
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private getKeyIdForName(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/providers/media/MediaProvider$DatabaseHelper;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/net/Uri;",
            ")J"
        }
    .end annotation

    .prologue
    .line 6965
    sget-boolean v2, Lcom/android/providers/media/MediaProvider;->FLAG_ADD_DB4VAS:Z

    if-eqz v2, :cond_1

    .line 6966
    const-string v2, "lgtvas"

    invoke-virtual/range {p12 .. p12}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "albums"

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6967
    const-wide/16 v2, -0x1

    .line 7083
    :cond_0
    :goto_0
    return-wide v2

    .line 6972
    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 6973
    :cond_2
    const-string p6, "<unknown>"

    .line 6979
    :cond_3
    invoke-static/range {p6 .. p6}, Lcom/android/providers/media/SecDatabaseUtils;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6982
    if-nez v2, :cond_4

    .line 6984
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "null key"

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6985
    const-wide/16 v2, -0x1

    goto :goto_0

    .line 6988
    :cond_4
    const-string v3, "albums"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 6989
    const-string v3, "<unknown>"

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 6999
    if-eqz v11, :cond_c

    .line 7000
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7001
    if-eqz v12, :cond_c

    .line 7002
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v10, v2

    .line 7006
    :goto_1
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v10, v6, v2

    .line 7007
    iget v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 7008
    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 7011
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 7070
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Multiple entries in table "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7071
    const-wide/16 v2, -0x1

    .line 7075
    :cond_5
    :goto_2
    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 7078
    :cond_6
    if-eqz p11, :cond_0

    if-nez v12, :cond_0

    .line 7079
    monitor-enter p11

    .line 7080
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p11

    move-object/from16 v1, p7

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7081
    monitor-exit p11

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 7014
    :pswitch_0
    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 7015
    move-object/from16 v0, p4

    invoke-virtual {v2, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7016
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7020
    sget-boolean v3, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v3, :cond_7

    .line 7021
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_pinyin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-static {v2, v0, v3}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7022
    move-object/from16 v0, p5

    invoke-direct {p0, v2, v0}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSearch(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    .line 7026
    :cond_7
    iget v3, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 7027
    const-string v3, "duration"

    move-object/from16 v0, p3

    invoke-virtual {p2, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 7028
    if-eqz p8, :cond_8

    if-eqz v11, :cond_8

    if-nez v12, :cond_8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p8

    .line 7030
    invoke-direct/range {v2 .. v7}, Lcom/android/providers/media/MediaProvider;->makeThumbAsync(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 7032
    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-lez v2, :cond_9

    .line 7033
    invoke-virtual/range {p12 .. p12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    const/16 v4, 0x18

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 7034
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/audio/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 7035
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_9
    move-wide v2, v6

    .line 7038
    goto/16 :goto_2

    .line 7041
    :pswitch_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 7042
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 7046
    const/4 v4, 0x2

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 7047
    move-object/from16 v0, p6

    invoke-virtual {p0, v0, v4}, Lcom/android/providers/media/MediaProvider;->makeBestName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 7048
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 7050
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 7051
    move-object/from16 v0, p5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7055
    sget-boolean v5, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v5, :cond_a

    .line 7056
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_pinyin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-static {v4, v0, v5}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7060
    :cond_a
    iget v5, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 7061
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rowid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    long-to-int v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {p2, v0, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 7062
    invoke-virtual/range {p12 .. p12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    const/16 v6, 0x18

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 7063
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/audio/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 7064
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_2

    .line 7075
    :catchall_1
    move-exception v2

    if-eqz v8, :cond_b

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    :cond_c
    move-object v10, v2

    goto/16 :goto_1

    .line 7011
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getObjectFilePath(I)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3738
    if-nez p1, :cond_1

    .line 3740
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v1, " root directory deleted !!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3741
    const-string v0, "/mnt/sdcard"

    .line 3776
    :cond_0
    :goto_0
    return-object v0

    .line 3745
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 3746
    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3749
    :try_start_0
    sget-object v2, Lcom/android/providers/media/MediaProvider;->PATH_SIZE_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3751
    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3752
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3753
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3754
    const-string v0, "title"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3756
    :cond_2
    if-nez v0, :cond_4

    .line 3757
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, " path is NULL "

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3758
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3775
    if-eqz v1, :cond_3

    .line 3776
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v7

    goto :goto_0

    .line 3761
    :cond_4
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3775
    if-eqz v1, :cond_0

    .line 3776
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3764
    :cond_5
    if-eqz v1, :cond_6

    .line 3765
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3775
    :cond_6
    if-eqz v1, :cond_7

    .line 3776
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move-object v0, v7

    goto :goto_0

    .line 3768
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 3769
    :goto_1
    :try_start_4
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "RemoteException in getObjectFilePath"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3770
    if-eqz v1, :cond_8

    .line 3771
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3775
    :cond_8
    if-eqz v1, :cond_9

    .line 3776
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    move-object v0, v7

    goto/16 :goto_0

    .line 3775
    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_a

    .line 3776
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v0

    .line 3775
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 3768
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getObjectReferences(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;
    .locals 12
    .parameter "helper"
    .parameter "db"
    .parameter "handle"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4578
    iget v0, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 4579
    const-string v1, "files"

    sget-object v2, Lcom/android/providers/media/MediaProvider;->sMediaTableColumns:[Ljava/lang/String;

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4583
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4584
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 4585
    .local v10, playlistId:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 4586
    .local v9, mediaType:I
    const/4 v0, 0x4

    if-eq v9, v0, :cond_1

    .line 4595
    if-eqz v8, :cond_0

    .line 4596
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4599
    .end local v9           #mediaType:I
    .end local v10           #playlistId:J
    :cond_0
    :goto_0
    return-object v5

    .line 4590
    .restart local v9       #mediaType:I
    .restart local v10       #playlistId:J
    :cond_1
    :try_start_1
    iget v0, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 4591
    const-string v0, "SELECT audio_id FROM audio_playlists_map WHERE playlist_id=? ORDER BY play_order"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    .line 4595
    if-eqz v8, :cond_0

    .line 4596
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4595
    .end local v9           #mediaType:I
    .end local v10           #playlistId:J
    :cond_2
    if-eqz v8, :cond_0

    .line 4596
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 4595
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_3

    .line 4596
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private getParent(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 19
    .parameter "helper"
    .parameter "db"
    .parameter "path"

    .prologue
    .line 4205
    if-nez p3, :cond_1

    .line 4206
    const-wide/16 v15, 0x0

    .line 4256
    :cond_0
    :goto_0
    return-wide v15

    .line 4208
    :cond_1
    const/16 v4, 0x2f

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    .line 4209
    .local v17, lastSlash:I
    if-lez v17, :cond_a

    .line 4210
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 4211
    .local v18, parentPath:Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_1
    sget-object v4, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    array-length v4, v4

    if-ge v14, v4, :cond_3

    .line 4212
    sget-object v4, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    aget-object v4, v4, v14

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4213
    const-wide/16 v15, 0x0

    goto :goto_0

    .line 4211
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 4216
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 4217
    .local v13, cid:Ljava/lang/Long;
    if-eqz v13, :cond_4

    .line 4219
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto :goto_0

    .line 4226
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/providers/media/MediaProvider;->mCaseInsensitivePaths:Z

    if-eqz v4, :cond_6

    const-string v7, "_data LIKE ?1 AND lower(_data)=lower(?1) AND format=12289"

    .line 4233
    .local v7, selection:Ljava/lang/String;
    :goto_2
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v18, v8, v4

    .line 4234
    .local v8, selargs:[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 4235
    const-string v5, "files"

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sIdOnlyColumn:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 4238
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_5

    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_7

    .line 4240
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider;->insertDirectory(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v15

    .line 4250
    .local v15, id:J
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4253
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 4226
    .end local v7           #selection:Ljava/lang/String;
    .end local v8           #selargs:[Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v15           #id:J
    :cond_6
    const-string v7, "_data=?"

    goto :goto_2

    .line 4243
    .restart local v7       #selection:Ljava/lang/String;
    .restart local v8       #selargs:[Ljava/lang/String;
    .restart local v12       #c:Landroid/database/Cursor;
    :cond_7
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    .line 4244
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "more than one match for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4246
    :cond_8
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4247
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v15

    .restart local v15       #id:J
    goto :goto_3

    .line 4253
    .end local v15           #id:J
    :catchall_0
    move-exception v4

    if-eqz v12, :cond_9

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v4

    .line 4256
    .end local v7           #selection:Ljava/lang/String;
    .end local v8           #selargs:[Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    .end local v13           #cid:Ljava/lang/Long;
    .end local v14           #i:I
    .end local v18           #parentPath:Ljava/lang/String;
    :cond_a
    const-wide/16 v15, 0x0

    goto/16 :goto_0
.end method

.method private static getSecGenre(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 8308
    .line 8310
    if-nez p0, :cond_2

    .line 8311
    const-string v0, "<unknown>"

    .line 8313
    :goto_0
    sget-object v1, Lcom/android/providers/media/MediaProvider;->mID3ToSecGenreMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8314
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->initID3toSecGenreHashMap()V

    .line 8317
    :cond_0
    if-eqz p0, :cond_1

    sget-object v1, Lcom/android/providers/media/MediaProvider;->mID3ToSecGenreMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8318
    sget-object v0, Lcom/android/providers/media/MediaProvider;->mID3ToSecGenreMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8321
    :cond_1
    return-object v0

    :cond_2
    move-object v0, p0

    goto :goto_0
.end method

.method private getSimilarPersons(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 7771
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 7772
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 7773
    .local v0, faceId:I
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mGetSimilarPersonsThread:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mGetSimilarPersonsThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7775
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mGetSimilarPersonsThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7781
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/providers/media/MediaProvider$10;

    const-string v3, "getSimilarPersons"

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/android/providers/media/MediaProvider$10;-><init>(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;Landroid/net/Uri;I)V

    iput-object v2, p0, Lcom/android/providers/media/MediaProvider;->mGetSimilarPersonsThread:Ljava/lang/Thread;

    .line 7803
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mGetSimilarPersonsThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 7804
    return-void

    .line 7776
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getStorageId(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 4261
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 4262
    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    aget-object v2, v3, v0

    .line 4263
    .local v2, test:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4264
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 4265
    .local v1, length:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_1

    .line 4266
    :cond_0
    invoke-static {v0}, Landroid/mtp/MtpStorage;->getStorageId(I)I

    move-result v3

    .line 4271
    .end local v1           #length:I
    .end local v2           #test:Ljava/lang/String;
    :goto_1
    return v3

    .line 4261
    .restart local v2       #test:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4271
    .end local v2           #test:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/mtp/MtpStorage;->getStorageId(I)I

    move-result v3

    goto :goto_1
.end method

.method private getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x5

    const/4 v2, 0x3

    .line 5260
    const/4 v0, 0x0

    .line 5261
    sparse-switch p2, :sswitch_data_0

    .line 5378
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown or unsupported URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5263
    :sswitch_0
    const-string v0, "files"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5264
    const-string v0, "media_type=1"

    .line 5383
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5384
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    .line 5392
    :goto_1
    return-void

    .line 5268
    :sswitch_1
    const-string v0, "files"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5273
    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5275
    :sswitch_3
    const-string v1, "thumbnails"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_0

    .line 5279
    :sswitch_4
    const-string v0, "files"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5280
    const-string v0, "media_type=2"

    goto :goto_0

    .line 5284
    :sswitch_5
    const-string v0, "files"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5289
    :sswitch_6
    const-string v0, "audio_genres"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5294
    :sswitch_7
    const-string v0, "audio_genres"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND genre_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5300
    :sswitch_8
    const-string v0, "audio_playlists"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5305
    :sswitch_9
    const-string v0, "audio_playlists"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND playlists_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5311
    :sswitch_a
    const-string v1, "audio_genres"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 5315
    :sswitch_b
    const-string v0, "audio_genres"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5320
    :sswitch_c
    const-string v0, "audio_genres"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "genre_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5325
    :sswitch_d
    const-string v0, "files"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5326
    const-string v0, "media_type=4"

    goto/16 :goto_0

    .line 5330
    :sswitch_e
    const-string v0, "files"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5335
    :sswitch_f
    const-string v0, "audio_playlists_map"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5340
    :sswitch_10
    const-string v0, "audio_playlists_map"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlist_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND _id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5346
    :sswitch_11
    const-string v0, "album_art"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "album_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5351
    :sswitch_12
    const-string v0, "files"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5352
    const-string v0, "media_type=3"

    goto/16 :goto_0

    .line 5356
    :sswitch_13
    const-string v0, "files"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5361
    :sswitch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5363
    :sswitch_15
    const-string v1, "videothumbnails"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 5368
    :sswitch_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5371
    :sswitch_17
    const-string v1, "files"

    iput-object v1, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto/16 :goto_0

    .line 5374
    :sswitch_18
    const-string v0, "files"

    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 5375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 5387
    :cond_0
    iput-object p3, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_1

    .line 5390
    :cond_1
    iput-object v0, p4, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto/16 :goto_1

    .line 5261
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
        0x69 -> :sswitch_9
        0x6a -> :sswitch_a
        0x6b -> :sswitch_b
        0x6c -> :sswitch_c
        0x6e -> :sswitch_d
        0x6f -> :sswitch_e
        0x70 -> :sswitch_f
        0x71 -> :sswitch_10
        0x78 -> :sswitch_11
        0xc8 -> :sswitch_12
        0xc9 -> :sswitch_13
        0xca -> :sswitch_15
        0xcb -> :sswitch_14
        0x2bc -> :sswitch_17
        0x2bd -> :sswitch_16
        0x2be -> :sswitch_17
        0x2bf -> :sswitch_16
        0x1771 -> :sswitch_18
    .end sparse-switch
.end method

.method private getThumb(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .parameter "helper"
    .parameter "db"
    .parameter "path"
    .parameter "album_id"
    .parameter "albumart_uri"

    .prologue
    .line 6842
    new-instance v0, Lcom/android/providers/media/MediaProvider$ThumbData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/providers/media/MediaProvider$ThumbData;-><init>(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$1;)V

    .line 6843
    .local v0, d:Lcom/android/providers/media/MediaProvider$ThumbData;
    iput-object p1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 6844
    iput-object p2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 6845
    iput-object p3, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    .line 6846
    iput-wide p4, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    .line 6847
    iput-object p6, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    .line 6848
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method private hidePath(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 5088
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5089
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5090
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5091
    const-string v1, "media_type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5092
    const-string v1, "files"

    const-string v2, "_data LIKE ? AND lower(substr(_data,1,?))=lower(?)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p2, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 5098
    iget v1, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 5099
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5100
    const-string v1, "content://media/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5101
    return-void

    .line 5089
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method private static initID3toSecGenreHashMap()V
    .locals 4

    .prologue
    .line 8302
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/providers/media/MediaProvider;->ID3_GENRES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 8303
    sget-object v1, Lcom/android/providers/media/MediaProvider;->mID3ToSecGenreMap:Ljava/util/HashMap;

    sget-object v2, Lcom/android/providers/media/MediaProvider;->ID3_GENRES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/providers/media/MediaProvider;->ID3_TO_SEC_GENRES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8305
    :cond_0
    return-void
.end method

.method private insertDirectory(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 9
    .parameter "helper"
    .parameter "db"
    .parameter "path"

    .prologue
    .line 4183
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4184
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "format"

    const/16 v5, 0x3001

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4185
    const-string v4, "_data"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4186
    const-string v4, "parent"

    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaProvider;->getParent(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4187
    const-string v4, "storage_id"

    invoke-direct {p0, p3}, Lcom/android/providers/media/MediaProvider;->getStorageId(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4188
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4189
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4190
    const-string v4, "date_modified"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4192
    :cond_0
    iget v4, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4193
    const-string v4, "files"

    const-string v5, "date_modified"

    invoke-virtual {p2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 4194
    .local v1, rowId:J
    invoke-direct {p0, v1, v2}, Lcom/android/providers/media/MediaProvider;->sendObjectAdded(J)V

    .line 4195
    return-wide v1
.end method

.method private insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZLjava/util/ArrayList;)J
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/providers/media/MediaProvider$DatabaseHelper;",
            "Landroid/net/Uri;",
            "Landroid/content/ContentValues;",
            "IZ",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 4276
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 4277
    const/4 v2, 0x0

    .line 4279
    packed-switch p4, :pswitch_data_0

    .line 4433
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 4434
    new-instance v2, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4437
    :cond_1
    const-string v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4438
    if-eqz v8, :cond_2

    .line 4439
    invoke-static {v8, v2}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4441
    :cond_2
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4443
    const-wide/16 v5, 0x0

    .line 4444
    const-string v3, "media_scanner_new_object_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 4446
    if-eqz v3, :cond_23

    .line 4447
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v5, v3

    .line 4448
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4449
    const-string v2, "media_scanner_new_object_id"

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move-wide/from16 v25, v5

    move-object v5, v3

    move-wide/from16 v2, v25

    .line 4452
    :goto_1
    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4453
    if-nez v6, :cond_3

    if-eqz v8, :cond_3

    .line 4454
    invoke-static {v8}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4456
    :cond_3
    const-string v7, "title"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4458
    const-string v6, "mime_type"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4459
    const-string v7, "format"

    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 4460
    if-nez v7, :cond_15

    const/4 v7, 0x0

    .line 4461
    :goto_2
    if-nez v7, :cond_4

    .line 4462
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 4464
    const/4 v9, 0x4

    move/from16 v0, p4

    if-ne v0, v9, :cond_16

    .line 4465
    const-string v8, "format"

    const v9, 0xba05

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4467
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/Playlists/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "name"

    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4469
    const-string v9, "_data"

    invoke-virtual {v5, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4470
    const-string v9, "parent"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8}, Lcom/android/providers/media/MediaProvider;->getParent(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4478
    :cond_4
    :goto_3
    if-eqz v7, :cond_5

    .line 4479
    const-string v9, "format"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4480
    if-nez v6, :cond_5

    .line 4481
    invoke-static {v7}, Landroid/media/MediaFile;->getMimeTypeForFormatCode(I)Ljava/lang/String;

    move-result-object v6

    .line 4485
    :cond_5
    if-nez v6, :cond_6

    if-eqz v8, :cond_6

    .line 4486
    invoke-static {v8}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4488
    :cond_6
    if-eqz v6, :cond_7

    .line 4489
    const-string v9, "mime_type"

    invoke-virtual {v5, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4491
    if-nez p4, :cond_7

    invoke-static {v8}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 4492
    invoke-static {v6}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v6

    .line 4493
    invoke-static {v6}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 4494
    const/16 p4, 0x2

    .line 4504
    :cond_7
    :goto_4
    const-string v6, "media_type"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4506
    const-wide/16 v9, 0x0

    cmp-long v6, v2, v9

    if-nez v6, :cond_22

    .line 4507
    const/4 v2, 0x4

    move/from16 v0, p4

    if-ne v0, v2, :cond_1b

    .line 4508
    const-string v2, "name"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4509
    if-nez v2, :cond_1c

    if-nez v8, :cond_1c

    .line 4511
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no name was provided when inserting abstract playlist"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4281
    :pswitch_0
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const-string v3, ".jpg"

    const-string v5, "DCIM/Camera"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1, v3, v5}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 4283
    const-string v3, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4284
    const-string v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4285
    const-string v5, "_display_name"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 4286
    invoke-static {v3, v2}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4288
    :cond_8
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->computeTakenTime(Landroid/content/ContentValues;)V

    goto/16 :goto_0

    .line 4298
    :pswitch_1
    new-instance v24, Landroid/content/ContentValues;

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4300
    const-string v2, "album_artist"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4301
    const-string v2, "compilation"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 4302
    const-string v2, "compilation"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4306
    const-string v2, "artist"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 4307
    if-nez v2, :cond_c

    const-string v8, ""

    .line 4308
    :goto_5
    const-string v2, "artist"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4310
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    .line 4311
    const-string v2, "_data"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 4313
    monitor-enter v13

    .line 4314
    :try_start_0
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 4315
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4316
    if-nez v2, :cond_d

    .line 4317
    const-string v5, "artists"

    const-string v6, "artist_key"

    const-string v7, "artist"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object v9, v8

    move-object/from16 v14, p2

    invoke-direct/range {v2 .. v14}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v2

    move-wide v5, v2

    .line 4327
    :goto_6
    const-string v2, "album"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 4328
    if-nez v2, :cond_e

    const-string v17, ""

    .line 4329
    :goto_7
    const-string v2, "album"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4331
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    move-object/from16 v22, v0

    .line 4332
    const/16 v20, 0x0

    .line 4334
    monitor-enter v22

    .line 4335
    if-eqz v15, :cond_f

    .line 4336
    :try_start_1
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v20

    .line 4346
    :cond_9
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 4347
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 4348
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4349
    if-nez v2, :cond_11

    .line 4350
    const-string v14, "albums"

    const-string v15, "album_key"

    const-string v16, "album"

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v4

    move-object/from16 v19, v10

    move-object/from16 v21, v8

    move-object/from16 v23, p2

    invoke-direct/range {v11 .. v23}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v2

    .line 4357
    :goto_9
    const-string v7, "artist_id"

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4358
    const-string v5, "album_id"

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4359
    const-string v2, "title"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4360
    if-nez v2, :cond_12

    const-string v2, ""

    .line 4365
    :goto_a
    const-string v3, "title_key"

    invoke-static {v2}, Lcom/android/providers/media/SecDatabaseUtils;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4370
    const-string v3, "title"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4371
    const-string v3, "title"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4373
    const-string v2, "_data"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-static {v2, v0}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4377
    const-string v2, "composer"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4378
    const-string v3, "composer"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4379
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_13

    .line 4381
    :goto_b
    const-string v3, "composer"

    move-object/from16 v0, v24

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4387
    const-string v2, "genre_name"

    const-string v3, "<unknown>"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4390
    const-string v2, "year"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4391
    const/4 v2, 0x0

    .line 4392
    if-eqz v3, :cond_a

    .line 4393
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4394
    :cond_a
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 4395
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-le v5, v6, :cond_b

    .line 4396
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 4397
    :cond_b
    const-string v5, "year_name"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x76c

    if-lt v6, v7, :cond_14

    if-eqz v2, :cond_14

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_14

    :goto_c
    move-object/from16 v0, v24

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4402
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->updateSoundField(Landroid/content/ContentValues;)V

    .line 4404
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->updateRecordFile(Landroid/content/ContentValues;)V

    .line 4408
    sget-boolean v2, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v2, :cond_24

    .line 4409
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->convertOrgin2PinyinForSort(Landroid/content/ContentValues;)V

    move-object/from16 v2, v24

    goto/16 :goto_0

    .line 4307
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_5

    .line 4315
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 4321
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v5, v2

    goto/16 :goto_6

    .line 4328
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_7

    .line 4337
    :cond_f
    if-eqz v16, :cond_10

    :try_start_3
    const-string v2, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 4344
    :cond_10
    const/4 v2, 0x0

    const/16 v3, 0x2f

    invoke-virtual {v10, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v10, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v20

    goto/16 :goto_8

    .line 4348
    :catchall_1
    move-exception v2

    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 4354
    :cond_11
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto/16 :goto_9

    .line 4360
    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_a

    .line 4379
    :cond_13
    const-string v2, "<unknown>"

    goto/16 :goto_b

    .line 4397
    :cond_14
    const-string v3, "<unknown>"

    goto :goto_c

    .line 4418
    :pswitch_2
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const-string v3, ".3gp"

    const-string v5, "video"

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v2, v1, v3, v5}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    .line 4419
    const-string v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4420
    invoke-static {v3, v2}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 4421
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->computeTakenTime(Landroid/content/ContentValues;)V

    .line 4424
    sget-boolean v3, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v3, :cond_0

    .line 4425
    const-string v3, "_display_name"

    const-string v5, "title_pinyin"

    invoke-static {v2, v3, v5}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 4460
    :cond_15
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto/16 :goto_2

    .line 4472
    :cond_16
    sget-object v9, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v10, "path is empty in insertFile()"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 4475
    :cond_17
    invoke-static {v8, v6}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_3

    .line 4495
    :cond_18
    invoke-static {v6}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 4496
    const/16 p4, 0x3

    goto/16 :goto_4

    .line 4497
    :cond_19
    invoke-static {v6}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 4498
    const/16 p4, 0x1

    goto/16 :goto_4

    .line 4499
    :cond_1a
    invoke-static {v6}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 4500
    const/16 p4, 0x4

    goto/16 :goto_4

    .line 4515
    :cond_1b
    if-nez v8, :cond_1c

    .line 4518
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no path was provided when inserting new file"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4533
    :cond_1c
    if-eqz v8, :cond_1d

    .line 4534
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4535
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 4536
    const-string v3, "date_modified"

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4537
    const-string v3, "_size"

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4541
    :cond_1d
    const-string v2, "parent"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 4542
    if-nez v2, :cond_1e

    .line 4543
    if-eqz v8, :cond_1e

    .line 4544
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8}, Lcom/android/providers/media/MediaProvider;->getParent(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    .line 4545
    const-string v6, "parent"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4548
    :cond_1e
    const-string v2, "storage_id"

    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 4549
    if-nez v2, :cond_1f

    .line 4550
    if-eqz v8, :cond_1f

    .line 4551
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/providers/media/MediaProvider;->getStorageId(Ljava/lang/String;)I

    move-result v2

    .line 4552
    const-string v3, "storage_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4556
    :cond_1f
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4557
    const-string v2, "files"

    const-string v3, "date_modified"

    invoke-virtual {v4, v2, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 4561
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_20

    if-eqz p5, :cond_20

    .line 4562
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4570
    :cond_20
    :goto_d
    const/16 v4, 0x3001

    if-ne v7, v4, :cond_21

    .line 4571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4574
    :cond_21
    return-wide v2

    .line 4566
    :cond_22
    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    iput v6, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 4567
    const-string v6, "files"

    const-string v9, "_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v4, v6, v5, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_d

    :cond_23
    move-wide/from16 v25, v5

    move-object v5, v2

    move-wide/from16 v2, v25

    goto/16 :goto_1

    :cond_24
    move-object/from16 v2, v24

    goto/16 :goto_0

    .line 4279
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private insertInternal(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/util/ArrayList;)Landroid/net/Uri;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Landroid/content/ContentValues;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 4726
    const/16 v1, 0x1f4

    move/from16 v0, p2

    if-ne v0, v1, :cond_2

    .line 4727
    const-string v1, "volume"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    .line 4728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/audio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .line 4730
    if-nez v1, :cond_1

    .line 4731
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no database for scanned volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4735
    :goto_0
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    .line 5056
    :cond_0
    :goto_1
    return-object v1

    .line 4733
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    goto :goto_0

    .line 4738
    :cond_2
    const/4 v2, 0x0

    .line 4739
    const/4 v1, 0x0

    .line 4740
    if-eqz p3, :cond_1c

    .line 4741
    const-string v1, "genre"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4742
    const-string v1, "genre"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 4743
    const-string v1, "_data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v11, v1

    move-object v8, v2

    .line 4747
    :goto_2
    const/4 v9, 0x0

    .line 4748
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v2

    .line 4749
    if-nez v2, :cond_5

    const/16 v1, 0x12c

    move/from16 v0, p2

    if-eq v0, v1, :cond_5

    const/16 v1, 0x2c1

    move/from16 v0, p2

    if-eq v0, v1, :cond_5

    .line 4751
    sget-boolean v1, Lcom/android/providers/media/MediaProvider;->FLAG_ADD_DB4VAS:Z

    if-eqz v1, :cond_4

    .line 4752
    const/4 v1, 0x0

    .line 4753
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 4754
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "lgtvas"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4756
    :cond_3
    if-nez v1, :cond_5

    .line 4757
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4762
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4766
    :cond_5
    const/16 v1, 0x12c

    move/from16 v0, p2

    if-eq v0, v1, :cond_6

    const/16 v1, 0x2c1

    move/from16 v0, p2

    if-ne v0, v1, :cond_7

    :cond_6
    const/4 v1, 0x0

    move-object v13, v1

    .line 4769
    :goto_3
    sparse-switch p2, :sswitch_data_0

    .line 5049
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4766
    :cond_7
    invoke-virtual {v2}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    move-object v13, v1

    goto :goto_3

    .line 4771
    :sswitch_0
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZLjava/util/ArrayList;)J

    move-result-wide v3

    .line 4773
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_18

    .line 4774
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    .line 5052
    :cond_8
    :goto_4
    if-eqz v11, :cond_0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "/.nomedia"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5054
    invoke-direct {p0, v2, v13, v11}, Lcom/android/providers/media/MediaProvider;->processNewNoMediaPath(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4782
    :sswitch_1
    if-nez v2, :cond_9

    move-object v1, v9

    .line 4783
    goto :goto_4

    .line 4785
    :cond_9
    iget-boolean v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const-string v3, ".jpg"

    const-string v4, "DCIM/.thumbnails"

    move-object/from16 v0, p3

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 4787
    iget v3, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4788
    const-string v3, "thumbnails"

    const-string v4, "name"

    invoke-virtual {v13, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 4789
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_18

    .line 4790
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto :goto_4

    :sswitch_2
    move-object v1, v9

    .line 4798
    goto :goto_4

    :sswitch_3
    move-object v1, v9

    .line 4801
    goto :goto_4

    .line 4805
    :sswitch_4
    const-string v1, "objects"

    const-string v3, "name"

    move-object/from16 v0, p3

    invoke-virtual {v13, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 4806
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_18

    .line 4807
    sget-object v1, Lcom/android/providers/media/SmartSortColumns;->SMART_SORT_REQUEST_URI:Landroid/net/Uri;

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto :goto_4

    .line 4815
    :sswitch_5
    if-nez v2, :cond_a

    move-object v1, v9

    .line 4816
    goto :goto_4

    .line 4818
    :cond_a
    iget-boolean v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    const-string v3, ".jpg"

    const-string v4, "DCIM/.thumbnails"

    move-object/from16 v0, p3

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 4820
    iget v3, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4821
    const-string v3, "videothumbnails"

    const-string v4, "name"

    invoke-virtual {v13, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 4822
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_18

    .line 4823
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Video$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 4830
    :sswitch_6
    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZLjava/util/ArrayList;)J

    move-result-wide v3

    .line 4832
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_18

    .line 4833
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 4834
    if-eqz v8, :cond_1b

    .line 4835
    invoke-direct {p0, v3, v4, v8}, Lcom/android/providers/media/MediaProvider;->updateGenre(JLjava/lang/String;)V

    move-object v1, v9

    goto/16 :goto_4

    .line 4842
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 4843
    new-instance v3, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4844
    const-string v4, "audio_id"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4845
    if-eqz v2, :cond_b

    .line 4846
    iget v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4848
    :cond_b
    const-string v1, "audio_genres_map"

    const-string v4, "genre_id"

    invoke-virtual {v13, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 4849
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_18

    .line 4850
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 4856
    :sswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 4857
    new-instance v3, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4858
    const-string v4, "audio_id"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4859
    if-eqz v2, :cond_c

    .line 4860
    iget v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4862
    :cond_c
    const-string v1, "audio_playlists_map"

    const-string v4, "playlist_id"

    invoke-virtual {v13, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 4864
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_18

    .line 4865
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 4871
    :sswitch_9
    if-eqz v2, :cond_d

    .line 4872
    iget v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4874
    :cond_d
    const-string v1, "audio_genres"

    const-string v3, "audio_id"

    move-object/from16 v0, p3

    invoke-virtual {v13, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 4875
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_18

    .line 4876
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 4882
    :sswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 4883
    new-instance v4, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4884
    const-string v1, "genre_id"

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4885
    if-eqz v2, :cond_e

    .line 4886
    iget v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4888
    :cond_e
    const-string v1, "audio_genres_map"

    const-string v5, "genre_id"

    invoke-virtual {v13, v1, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 4889
    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-lez v1, :cond_1a

    .line 4890
    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 4895
    :goto_5
    const-string v5, "audio_id"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    .line 4897
    const-string v12, "<unknown>"

    .line 4898
    const-string v4, "audio_genres"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "name"

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v13

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 4900
    if-eqz v4, :cond_19

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 4901
    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4904
    :goto_6
    if-eqz v4, :cond_f

    .line 4905
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4907
    :cond_f
    if-eqz v3, :cond_8

    .line 4909
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->getSecGenre(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4911
    const-string v4, ""

    .line 4914
    sget-boolean v4, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v4, :cond_10

    .line 4915
    invoke-static {v3}, Lcom/android/providers/media/MediaProvider;->computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4918
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v4, v6

    const/4 v3, 0x1

    aput-object v5, v4, v3

    .line 4921
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "UPDATE files SET genre_name = ?, genre_name_pinyin = ? where _id = %d;"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 4933
    :goto_7
    invoke-virtual {v13, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 4925
    :cond_10
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 4928
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "\tUPDATE files SET genre_name = ? where _id = %d;"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v14, v6, v7

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 4940
    :sswitch_b
    new-instance v4, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4941
    const-string v1, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4944
    sget-boolean v1, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v1, :cond_11

    .line 4945
    const-string v1, "name"

    const-string v3, "name_pinyin"

    invoke-static {v4, v1, v3}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4949
    :cond_11
    const/4 v5, 0x4

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZLjava/util/ArrayList;)J

    move-result-wide v3

    .line 4951
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_18

    .line 4952
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 4959
    :sswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 4960
    new-instance v3, Landroid/content/ContentValues;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 4961
    const-string v4, "playlist_id"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4962
    if-eqz v2, :cond_12

    .line 4963
    iget v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4965
    :cond_12
    const-string v1, "audio_playlists_map"

    const-string v4, "playlist_id"

    invoke-virtual {v13, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 4966
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_18

    .line 4967
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 4973
    :sswitch_d
    const/4 v5, 0x3

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZLjava/util/ArrayList;)J

    move-result-wide v3

    .line 4975
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_18

    .line 4976
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 4983
    :sswitch_e
    if-eqz v2, :cond_13

    iget-boolean v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-eqz v1, :cond_13

    .line 4984
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "no internal album art allowed"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4988
    :cond_13
    const/4 v1, 0x0

    :try_start_0
    const-string v3, ""

    const-string v4, "Android/data/com.android.providers.media/albumthumbs"

    move-object/from16 v0, p3

    invoke-direct {p0, v1, v0, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 4993
    :goto_8
    if-eqz v2, :cond_14

    .line 4994
    iget v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 4996
    :cond_14
    const-string v1, "album_art"

    const-string v3, "_data"

    move-object/from16 v0, p3

    invoke-virtual {v13, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 4997
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_18

    .line 4998
    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 5005
    :sswitch_f
    if-nez p3, :cond_15

    move-object v1, v9

    .line 5006
    goto/16 :goto_4

    .line 5007
    :cond_15
    const-string v1, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5008
    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5009
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5010
    invoke-direct {p0, v1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v2

    .line 5011
    if-nez v2, :cond_16

    .line 5012
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no database for attached volume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5014
    :cond_16
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    goto/16 :goto_1

    .line 5021
    :sswitch_10
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v3

    .line 5022
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    if-nez v1, :cond_17

    .line 5023
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 5025
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/providers/media/MtpService;

    invoke-direct {v4, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 5028
    :cond_17
    monitor-exit v3

    move-object v1, v9

    .line 5029
    goto/16 :goto_4

    .line 5028
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 5032
    :sswitch_11
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZLjava/util/ArrayList;)J

    move-result-wide v3

    .line 5034
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_18

    .line 5035
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v3, v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 5041
    :sswitch_12
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/providers/media/MediaProvider;->insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;Landroid/content/ContentValues;IZLjava/util/ArrayList;)J

    move-result-wide v3

    .line 5043
    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_18

    .line 5044
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v3, v4}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v9

    move-object v1, v9

    goto/16 :goto_4

    .line 4989
    :catch_0
    move-exception v1

    goto/16 :goto_8

    :cond_18
    move-object v1, v9

    goto/16 :goto_4

    :cond_19
    move-object v3, v12

    goto/16 :goto_6

    :cond_1a
    move-object v1, v9

    goto/16 :goto_5

    :cond_1b
    move-object v1, v9

    goto/16 :goto_4

    :cond_1c
    move-object v11, v1

    move-object v8, v2

    goto/16 :goto_2

    .line 4769
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x64 -> :sswitch_6
        0x66 -> :sswitch_7
        0x68 -> :sswitch_8
        0x6a -> :sswitch_9
        0x6c -> :sswitch_a
        0x6e -> :sswitch_b
        0x6f -> :sswitch_c
        0x70 -> :sswitch_c
        0x77 -> :sswitch_e
        0xc8 -> :sswitch_d
        0xca -> :sswitch_5
        0x12c -> :sswitch_f
        0x2bc -> :sswitch_11
        0x2be -> :sswitch_12
        0x2c1 -> :sswitch_10
        0x1388 -> :sswitch_2
        0x1389 -> :sswitch_3
        0x138a -> :sswitch_4
    .end sparse-switch
.end method

.method static isInternalMediaDatabaseName(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 7200
    const-string v0, "internal.db"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7201
    const/4 v0, 0x1

    .line 7203
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isMediaDatabaseName(Ljava/lang/String;)Z
    .locals 2
    .parameter "name"

    .prologue
    const/4 v0, 0x1

    .line 7187
    const-string v1, "internal.db"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7196
    :cond_0
    :goto_0
    return v0

    .line 7190
    :cond_1
    const-string v1, "external.db"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7193
    const-string v1, "external-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7196
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRecordFile(Landroid/content/ContentValues;)Z
    .locals 2

    .prologue
    .line 6297
    const-string v0, "mime_type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6298
    const-string v0, "mime_type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6299
    if-eqz v0, :cond_1

    .line 6306
    const-string v1, "audio/mp4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/3gpp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/amr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/amr-wb"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6308
    :cond_0
    const/4 v0, 0x1

    .line 6312
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecondaryExternalPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 6572
    sget-object v1, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 6573
    sget-object v1, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6574
    const/4 v1, 0x1

    .line 6577
    :goto_1
    return v1

    .line 6572
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 6577
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isSoundsDir(Landroid/content/ContentValues;)Z
    .locals 2
    .parameter "values"

    .prologue
    .line 6328
    const-string v1, "_data"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6329
    const-string v1, "_data"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6330
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 6331
    sget-object v1, Lcom/android/providers/media/MediaProvider;->SOUNDS_PATH_INTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SOUNDS_PATH_EXTERNAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6332
    :cond_0
    const/4 v1, 0x1

    .line 6336
    .end local v0           #path:Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static logToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .parameter "db"
    .parameter "message"

    .prologue
    .line 2641
    if-nez p1, :cond_0

    .line 2649
    :goto_0
    return-void

    .line 2643
    :cond_0
    const-string v0, "INSERT INTO log (time, message) VALUES (strftime(\'%Y-%m-%d %H:%M:%S.%f\',\'now\',\'localtime\'),?);"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2646
    const-string v0, "DELETE FROM log WHERE rowid IN (SELECT rowid FROM log ORDER BY time DESC LIMIT 50000,-1);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private makeThumbAsync(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 4
    .parameter "helper"
    .parameter "db"
    .parameter "path"
    .parameter "album_id"

    .prologue
    .line 6642
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    monitor-enter v3

    .line 6643
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    invoke-virtual {v2, p3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6646
    monitor-exit v3

    .line 6671
    :goto_0
    return-void

    .line 6649
    :cond_0
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mPendingThumbs:Ljava/util/HashSet;

    invoke-virtual {v2, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 6650
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6652
    new-instance v0, Lcom/android/providers/media/MediaProvider$ThumbData;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/providers/media/MediaProvider$ThumbData;-><init>(Lcom/android/providers/media/MediaProvider;Lcom/android/providers/media/MediaProvider$1;)V

    .line 6653
    .local v0, d:Lcom/android/providers/media/MediaProvider$ThumbData;
    iput-object p1, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 6654
    iput-object p2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 6655
    iput-object p3, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    .line 6656
    iput-wide p4, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    .line 6657
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mAlbumArtBaseUri:Landroid/net/Uri;

    invoke-static {v2, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    .line 6664
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    monitor-enter v3

    .line 6665
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mThumbRequestStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6666
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6669
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 6670
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 6650
    .end local v0           #d:Lcom/android/providers/media/MediaProvider$ThumbData;
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 6666
    .restart local v0       #d:Lcom/android/providers/media/MediaProvider$ThumbData;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private makeThumbInternal(Lcom/android/providers/media/MediaProvider$ThumbData;)Landroid/os/ParcelFileDescriptor;
    .locals 12

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 6852
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->path:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/providers/media/MediaProvider;->getCompressedAlbumArt(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v9

    .line 6854
    if-nez v9, :cond_1

    .line 6938
    :cond_0
    :goto_0
    return-object v6

    .line 6863
    :cond_1
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 6864
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6865
    const/4 v3, 0x1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 6866
    const/4 v3, 0x0

    array-length v4, v9

    invoke-static {v9, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 6869
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 6870
    const/high16 v4, 0x7f03

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 6871
    :goto_1
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v4, v3, :cond_2

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v4, v3, :cond_4

    .line 6872
    :cond_2
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 6873
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 6874
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6895
    :catch_0
    move-exception v0

    move-object v2, v6

    :goto_2
    move v7, v1

    move-object v8, v2

    .line 6898
    :goto_3
    if-eqz v7, :cond_3

    if-eqz v8, :cond_0

    .line 6902
    :cond_3
    iget-object v0, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    if-nez v0, :cond_6

    .line 6906
    :try_start_1
    const-string v0, "albumthumb"

    invoke-static {v9, v0}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v6

    goto :goto_0

    .line 6877
    :cond_4
    :try_start_2
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v3, v1, :cond_5

    move-object v1, v6

    :goto_4
    move v7, v0

    move-object v8, v1

    .line 6896
    goto :goto_3

    .line 6883
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 6884
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 6885
    const/4 v0, 0x0

    array-length v3, v9

    invoke-static {v9, v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 6887
    if-eqz v2, :cond_b

    :try_start_3
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_b

    .line 6888
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6889
    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_b

    .line 6890
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move v11, v1

    move-object v1, v0

    move v0, v11

    .line 6891
    goto :goto_4

    .line 6914
    :cond_6
    sget-object v10, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    monitor-enter v10

    .line 6915
    :try_start_4
    iget-object v0, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6917
    :try_start_5
    iget-object v1, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    iget-object v2, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    iget-wide v3, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->album_id:J

    iget-object v5, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->albumart_uri:Landroid/net/Uri;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->getAlbumArtOutputUri(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;JLandroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 6919
    if-eqz v0, :cond_8

    .line 6920
    invoke-direct {p0, v7, v0, v9, v8}, Lcom/android/providers/media/MediaProvider;->writeAlbumArt(ZLandroid/net/Uri;[BLandroid/graphics/Bitmap;)V

    .line 6921
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/providers/media/MediaProvider;->MEDIA_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 6922
    const-string v1, "r"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 6923
    iget-object v1, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_2

    .line 6931
    :try_start_6
    iget-object v1, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6932
    if-eqz v8, :cond_7

    .line 6933
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    monitor-exit v10

    move-object v6, v0

    goto/16 :goto_0

    .line 6931
    :cond_8
    iget-object v0, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6932
    if-eqz v8, :cond_9

    .line 6933
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    .line 6936
    :cond_9
    :goto_5
    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 6926
    :catch_1
    move-exception v0

    .line 6931
    :try_start_7
    iget-object v0, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6932
    if-eqz v8, :cond_9

    .line 6933
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    .line 6928
    :catch_2
    move-exception v0

    .line 6931
    iget-object v0, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6932
    if-eqz v8, :cond_9

    .line 6933
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_5

    .line 6931
    :catchall_1
    move-exception v0

    iget-object v1, p1, Lcom/android/providers/media/MediaProvider$ThumbData;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 6932
    if-eqz v8, :cond_a

    .line 6933
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 6907
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 6895
    :catch_4
    move-exception v0

    goto/16 :goto_2

    :cond_b
    move v0, v1

    move-object v1, v2

    goto/16 :goto_4
.end method

.method private matchThumbRequest(Lcom/android/providers/media/MediaThumbRequest;IJJZ)Z
    .locals 7
    .parameter "req"
    .parameter "pid"
    .parameter "id"
    .parameter "gid"
    .parameter "isVideo"

    .prologue
    const-wide/16 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2920
    cmp-long v4, p3, v5

    if-nez v4, :cond_2

    move v1, v2

    .line 2921
    .local v1, cancelAllOrigId:Z
    :goto_0
    cmp-long v4, p5, v5

    if-nez v4, :cond_3

    move v0, v2

    .line 2922
    .local v0, cancelAllGroupId:Z
    :goto_1
    iget v4, p1, Lcom/android/providers/media/MediaThumbRequest;->mCallingPid:I

    if-ne v4, p2, :cond_4

    if-nez v0, :cond_0

    iget-wide v4, p1, Lcom/android/providers/media/MediaThumbRequest;->mGroupId:J

    cmp-long v4, v4, p5

    if-nez v4, :cond_4

    :cond_0
    if-nez v1, :cond_1

    iget-wide v4, p1, Lcom/android/providers/media/MediaThumbRequest;->mOrigId:J

    cmp-long v4, v4, p3

    if-nez v4, :cond_4

    :cond_1
    iget-boolean v4, p1, Lcom/android/providers/media/MediaThumbRequest;->mIsVideo:Z

    if-ne v4, p7, :cond_4

    :goto_2
    return v2

    .end local v0           #cancelAllGroupId:Z
    .end local v1           #cancelAllOrigId:Z
    :cond_2
    move v1, v3

    .line 2920
    goto :goto_0

    .restart local v1       #cancelAllOrigId:Z
    :cond_3
    move v0, v3

    .line 2921
    goto :goto_1

    .restart local v0       #cancelAllGroupId:Z
    :cond_4
    move v2, v3

    .line 2922
    goto :goto_2
.end method

.method private movePlaylistEntry(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;JII)I
    .locals 12

    .prologue
    .line 6342
    move/from16 v0, p5

    move/from16 v1, p6

    if-ne v0, v1, :cond_0

    .line 6343
    const/4 v2, 0x0

    .line 6390
    :goto_0
    return v2

    .line 6345
    :cond_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 6348
    :try_start_0
    iget v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 6349
    const-string v3, "audio_playlists_map"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "play_order"

    aput-object v5, v4, v2

    const-string v5, "playlist_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "play_order"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ",1"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6353
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6354
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 6355
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 6356
    const-string v3, "audio_playlists_map"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "play_order"

    aput-object v5, v4, v2

    const-string v5, "playlist_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "play_order"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, ",1"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, p2

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 6360
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6361
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 6362
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 6363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE audio_playlists_map SET play_order=-1 WHERE play_order="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND playlist_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6369
    move/from16 v0, p5

    move/from16 v1, p6

    if-ge v0, v1, :cond_1

    .line 6370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE audio_playlists_map SET play_order=play_order-1 WHERE play_order<="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND play_order>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND playlist_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6374
    sub-int v2, p6, p5

    add-int/lit8 v2, v2, 0x1

    .line 6382
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE audio_playlists_map SET play_order="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE play_order=-1 AND playlist_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 6384
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 6385
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 6387
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6390
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 6376
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE audio_playlists_map SET play_order=play_order+1 WHERE play_order>="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND play_order<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " AND playlist_id="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide v0, p3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6380
    sub-int v2, p5, p6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6390
    :catchall_0
    move-exception v2

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method private notifyMtp(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4138
    .local p1, rowIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4139
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4140
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/providers/media/MediaProvider;->sendObjectAdded(J)V

    .line 4139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4142
    :cond_0
    return-void
.end method

.method private openFileAndEnforcePathPermissionsHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 6514
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->modeToMode(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v4

    .line 6515
    const/high16 v0, 0x2000

    and-int/2addr v0, v4

    if-eqz v0, :cond_4

    move v0, v1

    .line 6517
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->queryForDataFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    .line 6520
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 6525
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 6526
    invoke-virtual {v6, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v7

    if-nez v7, :cond_5

    .line 6530
    :goto_1
    sget-object v2, Lcom/android/providers/media/MediaProvider;->sExternalPath:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/providers/media/MediaProvider;->mExternalStorageSdPath:Ljava/lang/String;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/providers/media/MediaProvider;->mExternalStorageSdPath:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6531
    :cond_0
    if-nez v1, :cond_1

    .line 6532
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "External path: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6535
    :cond_1
    if-eqz v0, :cond_2

    .line 6536
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "External path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6542
    :cond_2
    const/high16 v0, 0x1000

    if-ne v4, v0, :cond_3

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6543
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getMediaStorageDirectory()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/android/providers/media/MediaProvider;->sExternalPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6545
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/android/providers/media/MediaProvider;->sExternalPath:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_2
    move-object v3, v0

    .line 6568
    :cond_3
    :goto_3
    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    :cond_4
    move v0, v2

    .line 6515
    goto/16 :goto_0

    .line 6521
    :catch_0
    move-exception v0

    .line 6522
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resolve canonical path for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    move v1, v2

    .line 6526
    goto/16 :goto_1

    .line 6550
    :cond_6
    sget-object v2, Lcom/android/providers/media/MediaProvider;->sCachePath:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 6551
    if-nez v1, :cond_3

    .line 6552
    const-string v0, "android.permission.ACCESS_CACHE_FILESYSTEM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cache path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 6555
    :cond_7
    if-eqz v0, :cond_8

    .line 6557
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6558
    :cond_8
    invoke-direct {p0, v5}, Lcom/android/providers/media/MediaProvider;->isSecondaryExternalPath(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6560
    if-nez v1, :cond_3

    .line 6561
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "External path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 6565
    :cond_9
    invoke-direct {p0, v5}, Lcom/android/providers/media/MediaProvider;->checkWorldReadAccess(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    move-object v0, v3

    goto/16 :goto_2
.end method

.method private playlistBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 15
    .parameter "db"
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 4145
    new-instance v4, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v13, "audio_playlists_map"

    move-object/from16 v0, p1

    invoke-direct {v4, v0, v13}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 4147
    .local v4, helper:Landroid/database/DatabaseUtils$InsertHelper;
    const-string v13, "audio_id"

    invoke-virtual {v4, v13}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 4148
    .local v3, audioidcolidx:I
    const-string v13, "playlist_id"

    invoke-virtual {v4, v13}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 4149
    .local v10, playlistididx:I
    const-string v13, "play_order"

    invoke-virtual {v4, v13}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 4150
    .local v12, playorderidx:I
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x3

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 4152
    .local v8, playlistId:J
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 4153
    const/4 v7, 0x0

    .line 4155
    .local v7, numInserted:I
    :try_start_0
    move-object/from16 v0, p3

    array-length v6, v0

    .line 4156
    .local v6, len:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 4157
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    .line 4161
    aget-object v13, p3, v5

    const-string v14, "audio_id"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 4163
    .local v1, audioid:J
    invoke-virtual {v4, v3, v1, v2}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 4164
    invoke-virtual {v4, v10, v8, v9}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    .line 4166
    aget-object v13, p3, v5

    const-string v14, "play_order"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 4168
    .local v11, playorder:I
    invoke-virtual {v4, v12, v11}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    .line 4169
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    .line 4156
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4171
    .end local v1           #audioid:J
    .end local v11           #playorder:I
    :cond_0
    move v7, v6

    .line 4172
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4174
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4175
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    .line 4177
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4178
    return v7

    .line 4174
    .end local v5           #i:I
    .end local v6           #len:I
    :catchall_0
    move-exception v13

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 4175
    invoke-virtual {v4}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    throw v13
.end method

.method private processNewNoMediaPath(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 7
    .parameter "helper"
    .parameter "db"
    .parameter "path"

    .prologue
    .line 5068
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5069
    .local v2, nomedia:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5070
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/media/MediaProvider;->hidePath(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 5085
    :goto_0
    return-void

    .line 5074
    :cond_0
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/providers/media/MediaProvider$8;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider$8;-><init>(Lcom/android/providers/media/MediaProvider;Ljava/io/File;Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private processRemovedNoMediaPath(Ljava/lang/String;)V
    .locals 4
    .parameter "path"

    .prologue
    .line 5111
    sget-object v2, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5112
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .line 5116
    .local v1, helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :goto_0
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5117
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Lcom/android/providers/media/MediaProvider$ScannerClient;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1}, Lcom/android/providers/media/MediaProvider$ScannerClient;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 5118
    return-void

    .line 5114
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v1           #helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_0
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .restart local v1       #helper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    goto :goto_0
.end method

.method private queryForDataFile(Landroid/net/Uri;)Ljava/io/File;
    .locals 7
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 6484
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6486
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 6487
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing cursor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6491
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 6501
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple items at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6504
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 6493
    :pswitch_0
    :try_start_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6495
    :pswitch_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6496
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6504
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 6498
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to read entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6491
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private queryThumbnail(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11

    .prologue
    .line 2930
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 2931
    if-eqz p5, :cond_0

    .line 2934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2936
    const/4 v0, 0x1

    .line 2993
    :goto_0
    return v0

    .line 2938
    :cond_0
    const-string v0, "orig_id"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2940
    if-nez v8, :cond_1

    .line 2942
    const/4 v0, 0x1

    goto :goto_0

    .line 2945
    :cond_1
    const-string v0, "1"

    const-string v1, "blocking"

    invoke-virtual {p2, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2946
    const-string v1, "1"

    const-string v2, "cancel"

    invoke-virtual {p2, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2947
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "thumbnails"

    const-string v5, "media"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2951
    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/providers/media/MediaProvider;->waitForThumbnailReady(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2952
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v1, "original media doesn\'t exist or it\'s canceled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2953
    const/4 v0, 0x0

    goto :goto_0

    .line 2954
    :cond_2
    if-eqz v1, :cond_6

    .line 2955
    const-string v0, "group_id"

    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2956
    const-string v1, "video"

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 2957
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2962
    :try_start_0
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 2963
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    .line 2969
    iget-object v9, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    monitor-enter v9

    .line 2970
    :try_start_1
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/providers/media/MediaProvider;->matchThumbRequest(Lcom/android/providers/media/MediaThumbRequest;IJJZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2972
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2973
    :try_start_2
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    sget-object v10, Lcom/android/providers/media/MediaThumbRequest$State;->CANCEL:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v10, v0, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 2974
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mCurrentThumbRequest:Lcom/android/providers/media/MediaThumbRequest;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2975
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2977
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/media/MediaThumbRequest;

    move-object v0, p0

    .line 2978
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/media/MediaProvider;->matchThumbRequest(Lcom/android/providers/media/MediaThumbRequest;IJJZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2979
    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2980
    :try_start_4
    sget-object v0, Lcom/android/providers/media/MediaThumbRequest$State;->CANCEL:Lcom/android/providers/media/MediaThumbRequest$State;

    iput-object v0, v1, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    .line 2981
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2982
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2984
    :try_start_5
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2987
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 2964
    :catch_0
    move-exception v0

    .line 2966
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 2975
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2982
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0

    .line 2987
    :cond_5
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2990
    :cond_6
    if-eqz v8, :cond_7

    .line 2991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 2993
    :cond_7
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private recomendPesonRequest(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 7620
    .line 7622
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 7623
    const/4 v0, 0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 7624
    const/4 v0, 0x3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 7625
    const-string v1, "1"

    const-string v3, "cancel"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 7626
    if-eqz v1, :cond_3

    .line 7627
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    .line 7628
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 7629
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$RecomendInfo;

    .line 7630
    iget v0, v0, Lcom/android/providers/media/MediaProvider$RecomendInfo;->mFaceId:I

    if-ne v0, v2, :cond_2

    .line 7631
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 7635
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 7670
    :cond_1
    :goto_1
    return-void

    .line 7628
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 7637
    :cond_3
    invoke-direct {p0, v2, v0}, Lcom/android/providers/media/MediaProvider;->addKeyface(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7639
    new-instance v1, Lcom/android/providers/media/MediaProvider$RecomendInfo;

    invoke-direct {v1, v2, v0}, Lcom/android/providers/media/MediaProvider$RecomendInfo;-><init>(II)V

    .line 7640
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 7641
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7642
    :cond_4
    new-instance v0, Lcom/android/providers/media/MediaProvider$9;

    const-string v1, "recomendPerson"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/providers/media/MediaProvider$9;-><init>(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendThread:Ljava/lang/Thread;

    .line 7667
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider;->mRecomendThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method private static recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2676
    const-string v0, "DROP VIEW IF EXISTS audio"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2677
    const-string v0, "CREATE VIEW IF NOT EXISTS audio as SELECT * FROM audio_meta LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2680
    return-void
.end method

.method private static recreateSecAudioPlaylistView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 2555
    const-string v0, "DROP VIEW IF EXISTS audio_playlists;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW audio_playlists AS SELECT _id,_data,name,date_added,date_modified,mini_thumb_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->PLAYLIST_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM files WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2559
    return-void
.end method

.method private static recreateSecAudioSearchView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2562
    const-string v0, "DROP VIEW IF EXISTS searchhelpertitle"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2563
    const-string v0, "CREATE VIEW IF NOT EXISTS searchhelpertitle AS SELECT * FROM audio WHERE is_music = 1 ORDER BY title_key;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2568
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_0

    .line 2569
    const-string v0, "DROP VIEW IF EXISTS search"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2570
    const-string v0, "CREATE VIEW IF NOT EXISTS search AS SELECT _id,\'artist\' AS mime_type,artist,NULL AS album,NULL AS title,artist AS text1,NULL AS text2,number_of_albums AS data1,number_of_tracks AS data2,artist_key||\' \'||artist_search_key AS match,\'content://media/external/audio/artists/\'||_id AS suggest_intent_data,1 AS grouporder FROM music_artist_info_except_audio WHERE (artist!=\'<unknown>\') UNION ALL SELECT _id,\'album\' AS mime_type,artist,album,NULL AS title,album AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_key||\' \'||album_key||\' \'||artist_search_key||\' \'||album_search_key AS match,\'content://media/external/audio/albums/\'||_id AS suggest_intent_data,2 AS grouporder FROM music_album_info WHERE (album!=\'<unknown>\') UNION ALL SELECT searchhelpertitle._id AS _id,mime_type,artist,album,title,title AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_key||\' \'||album_key||\' \'||title_key||\' \'||artist_search_key||\' \'||album_search_key||\' \'||title_search_key AS match,\'content://media/external/audio/media/\'||searchhelpertitle._id AS suggest_intent_data,3 AS grouporder FROM searchhelpertitle WHERE (title != \'\') "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2619
    :cond_0
    return-void
.end method

.method private static recreateSecAudioView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 2473
    const-string v0, "DROP VIEW IF EXISTS audio_meta;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW audio_meta AS SELECT _id,_data,_display_name,_size,mime_type,date_added,is_drm,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,album_artist,is_sound,year_name,genre_name,recently_played,most_played,recently_added_remove_flag,is_favorite,bucket_id,bucket_display_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->AUDIO_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM files WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2478
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2481
    const-string v0, "DROP VIEW IF EXISTS music_album_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2482
    const-string v0, "DROP VIEW IF EXISTS music_audio_order_album_key"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2483
    const-string v0, "DROP VIEW IF EXISTS music_artist_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2485
    const-string v0, "DROP VIEW IF EXISTS music_genres_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2486
    const-string v0, "DROP VIEW IF EXISTS music_folders_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2487
    const-string v0, "DROP VIEW IF EXISTS music_composers_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2488
    const-string v0, "DROP VIEW IF EXISTS music_years_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_album_info AS SELECT audio.album_id AS _id, album, album_key, MIN(year) AS minyear, MAX(year) AS maxyear, artist, artist_id, artist_key, count(*) AS numsongs ,album_art._data AS album_art"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_ALBUM_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE is_music=1 GROUP BY audio.album_id;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_audio_order_album_key AS SELECT audio_meta.artist_id as artist_id, artist, artist_key, album_key, audio_meta.album_id as album_id, is_music, is_sound "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_ARTIST_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM audio_meta "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "order by album_key desc;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_artist_info AS SELECT artist_id AS _id, artist, artist_key, album_id, COUNT(DISTINCT album_key) AS number_of_albums, COUNT(*) AS number_of_tracks "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_ARTIST_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM music_audio_order_album_key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2520
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_0

    .line 2521
    const-string v0, "DROP VIEW IF EXISTS music_artist_info_except_audio"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2522
    const-string v0, "CREATE VIEW IF NOT EXISTS music_artist_info_except_audio AS SELECT artist_id AS _id, artist, artist_key, artist_search_key,COUNT(DISTINCT album_key) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2533
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_genres_view AS SELECT max(_id) AS _id, genre_name, count(_id) AS count, album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_GENRES_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM (SELECT _id, genre_name, album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_GENRES_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM audio_meta WHERE is_music=1 ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_TITLEKEY_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC) GROUP BY genre_name;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_years_view AS SELECT max(_id) AS _id, year, year_name, count(_id) AS count, album_id FROM (SELECT _id, year, year_name, album_id FROM audio_meta WHERE is_music=1 ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_TITLEKEY_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC) GROUP BY year_name;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_composers_view AS SELECT max(_id) AS _id, composer, count(_id) AS count, album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_COMPOSERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM (SELECT _id, composer, album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_COMPOSERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM audio_meta WHERE is_music=1 ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_TITLEKEY_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC) GROUP BY composer;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_folders_view AS SELECT max(_id) AS _id, bucket_id, bucket_display_name, album_id, _data, count(_id) AS count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_FOLDERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM (SELECT _id, bucket_id, bucket_display_name, album_id, _data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_FOLDERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM audio_meta WHERE is_music=1 ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_DISPLAYNAME_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC) GROUP BY bucket_id;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2552
    return-void
.end method

.method private static recreateSecAudioViewByVersion(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 2

    .prologue
    .line 2382
    const-string v0, "DROP VIEW IF EXISTS audio_meta;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2384
    const-string v0, "CREATE VIEW audio_meta AS SELECT _id,"

    .line 2385
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_data,_display_name,_size,mime_type,date_added,is_drm,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,album_artist,is_sound,year_name,genre_name,recently_played,most_played,recently_added_remove_flag,is_favorite,bucket_id,bucket_display_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->AUDIO_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2388
    const/16 v1, 0x19b

    if-lt p1, v1, :cond_0

    .line 2389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",recordingtype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2391
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM files WHERE media_type=2;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2393
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2395
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2398
    const-string v0, "DROP VIEW IF EXISTS music_album_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2399
    const-string v0, "DROP VIEW IF EXISTS music_audio_order_album_key"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2400
    const-string v0, "DROP VIEW IF EXISTS music_artist_info"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2402
    const-string v0, "DROP VIEW IF EXISTS music_genres_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2403
    const-string v0, "DROP VIEW IF EXISTS music_folders_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2404
    const-string v0, "DROP VIEW IF EXISTS music_composers_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2405
    const-string v0, "DROP VIEW IF EXISTS music_years_view;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_album_info AS SELECT audio.album_id AS _id, album, album_key, MIN(year) AS minyear, MAX(year) AS maxyear, artist, artist_id, artist_key, count(*) AS numsongs ,album_art._data AS album_art"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_ALBUM_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " WHERE is_music=1 GROUP BY audio.album_id;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_audio_order_album_key AS SELECT audio_meta.artist_id as artist_id, artist, artist_key, album_key, audio_meta.album_id as album_id, is_music, is_sound "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_ARTIST_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM audio_meta "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "order by album_key desc;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_artist_info AS SELECT artist_id AS _id, artist, artist_key, album_id, COUNT(DISTINCT album_key) AS number_of_albums, COUNT(*) AS number_of_tracks "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_ARTIST_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM music_audio_order_album_key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2437
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_1

    .line 2438
    const-string v0, "DROP VIEW IF EXISTS music_artist_info_except_audio"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2439
    const-string v0, "CREATE VIEW IF NOT EXISTS music_artist_info_except_audio AS SELECT artist_id AS _id, artist, artist_key, artist_search_key,COUNT(DISTINCT album_key) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2450
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_genres_view AS SELECT max(_id) AS _id, genre_name, count(_id) AS count, album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_GENRES_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM (SELECT _id, genre_name, album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_GENRES_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM audio_meta WHERE is_music=1 ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_TITLEKEY_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC) GROUP BY genre_name;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_years_view AS SELECT max(_id) AS _id, year, year_name, count(_id) AS count, album_id FROM (SELECT _id, year, year_name, album_id FROM audio_meta WHERE is_music=1 ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_TITLEKEY_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC) GROUP BY year_name;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_composers_view AS SELECT max(_id) AS _id, composer, count(_id) AS count, album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_COMPOSERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM (SELECT _id, composer, album_id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_COMPOSERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM audio_meta WHERE is_music=1 ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_TITLEKEY_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC) GROUP BY composer;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS music_folders_view AS SELECT max(_id) AS _id, bucket_id, bucket_display_name, album_id, _data, count(_id) AS count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_FOLDERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM (SELECT _id, bucket_id, bucket_display_name, album_id, _data "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_FOLDERS_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "FROM audio_meta WHERE is_music=1 ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->SEC_DISPLAYNAME_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DESC) GROUP BY bucket_id;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2469
    return-void
.end method

.method private static recreateSecImageView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2629
    const-string v0, "DROP VIEW IF EXISTS images"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2630
    const-string v0, "CREATE VIEW images AS SELECT _id,_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,width,height,group_id FROM files WHERE media_type=1;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2633
    return-void
.end method

.method private static recreateSecVideoView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 2622
    const-string v0, "DROP VIEW IF EXISTS video"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW video AS SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name,bookmark,width,height,resumePos,isPlayed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/MediaProvider;->VIDEO_COLUMNS_CHN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM files WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2626
    return-void
.end method

.method private requestMediaThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/android/providers/media/MediaThumbRequest;
    .locals 11
    .parameter "path"
    .parameter "uri"
    .parameter "priority"
    .parameter "magic"

    .prologue
    .line 5193
    iget-object v10, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    monitor-enter v10

    .line 5194
    const/4 v8, 0x0

    .line 5196
    .local v8, req:Lcom/android/providers/media/MediaThumbRequest;
    :try_start_0
    new-instance v0, Lcom/android/providers/media/MediaThumbRequest;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/media/MediaThumbRequest;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Landroid/net/Uri;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5198
    .end local v8           #req:Lcom/android/providers/media/MediaThumbRequest;
    .local v0, req:Lcom/android/providers/media/MediaThumbRequest;
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mMediaThumbQueue:Ljava/util/PriorityQueue;

    invoke-virtual {v1, v0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 5200
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 5201
    .local v7, msg:Landroid/os/Message;
    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 5205
    .end local v7           #msg:Landroid/os/Message;
    :goto_0
    :try_start_2
    monitor-exit v10

    return-object v0

    .line 5202
    .end local v0           #req:Lcom/android/providers/media/MediaThumbRequest;
    .restart local v8       #req:Lcom/android/providers/media/MediaThumbRequest;
    :catch_0
    move-exception v9

    move-object v0, v8

    .line 5203
    .end local v8           #req:Lcom/android/providers/media/MediaThumbRequest;
    .restart local v0       #req:Lcom/android/providers/media/MediaThumbRequest;
    .local v9, t:Ljava/lang/Throwable;
    :goto_1
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5206
    .end local v9           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    :goto_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .end local v0           #req:Lcom/android/providers/media/MediaThumbRequest;
    .restart local v8       #req:Lcom/android/providers/media/MediaThumbRequest;
    :catchall_1
    move-exception v1

    move-object v0, v8

    .end local v8           #req:Lcom/android/providers/media/MediaThumbRequest;
    .restart local v0       #req:Lcom/android/providers/media/MediaThumbRequest;
    goto :goto_2

    .line 5202
    :catch_1
    move-exception v9

    goto :goto_1
.end method

.method private restorePlaylistTableConfiguration(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 4093
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v1, "restorePlaylistTableConfiguration started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4095
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 4096
    sget-object v1, Lcom/android/providers/media/MediaProvider;->mExternalStorageSdPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4100
    :try_start_0
    const-string v0, "CREATE TABLE IF NOT EXISTS audio_playlists_map_cache (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL,_data TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4108
    const-string v0, "INSERT INTO audio_playlists_map ( audio_id, playlist_id, play_order ) SELECT files._id, audio_playlists_map_cache.playlist_id,  audio_playlists_map_cache.play_order FROM audio_playlists_map_cache, files WHERE  files._data = audio_playlists_map_cache._data ;"

    .line 4111
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4113
    if-nez v1, :cond_1

    .line 4124
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 4125
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/#/members"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4135
    :goto_0
    return-void

    .line 4116
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 4118
    const-string v0, "DROP TABLE IF EXISTS audio_playlists_map_cache"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4124
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 4125
    :cond_2
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/#/members"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4134
    :goto_1
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v1, "restorePlaylistTableConfiguration finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4120
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 4121
    :goto_2
    :try_start_2
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " restorePlaylistTableConfiguration(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4124
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 4125
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/#/members"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_1

    .line 4124
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 4125
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/#/members"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    throw v0

    .line 4131
    :cond_5
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v1, "restorePlaylistTableConfiguration extSdCard isn\'t mounted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4124
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 4120
    :catch_1
    move-exception v0

    goto/16 :goto_2
.end method

.method private static sanityCheck(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 2656
    const-string v1, "audio_meta"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "count(*)"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2658
    const-string v1, "audio_meta"

    new-array v2, v10, [Ljava/lang/String;

    const-string v0, "count(distinct _data)"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2660
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2661
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2662
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2663
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2664
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2665
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2666
    if-eq v1, v2, :cond_0

    .line 2667
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audio_meta._data column is not unique while upgrading from schema "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    const-string v0, "DELETE FROM audio_meta;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2672
    :cond_0
    return-void
.end method

.method private sendObjectAdded(J)V
    .locals 9
    .parameter "objectHandle"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3782
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3783
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 3784
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mtp_open_session"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v8, v4, :cond_0

    .line 3786
    long-to-int v4, p1

    invoke-direct {p0, v4}, Lcom/android/providers/media/MediaProvider;->getObjectFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 3787
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3789
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.MTP.OBJECT_ADDED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3790
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "Path"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3791
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3796
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #path:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v5

    .line 3797
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 3799
    :try_start_1
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    long-to-int v6, p1

    invoke-interface {v4, v6}, Lcom/android/providers/media/IMtpService;->sendObjectAdded(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3805
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3807
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "home_sync_running_status"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v8, v4, :cond_2

    .line 3808
    long-to-int v4, p1

    invoke-direct {p0, v4}, Lcom/android/providers/media/MediaProvider;->getObjectFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 3809
    .restart local v3       #path:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 3810
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.HOME_SYNC.OBJECT_ADDED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3811
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "Path"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3812
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3815
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #path:Ljava/lang/String;
    :cond_2
    return-void

    .line 3800
    :catch_0
    move-exception v1

    .line 3801
    .local v1, e:Landroid/os/RemoteException;
    :try_start_3
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "RemoteException in sendObjectAdded"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3802
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    goto :goto_0

    .line 3805
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method private sendObjectRemoved(J)V
    .locals 8
    .parameter "objectHandle"

    .prologue
    .line 3818
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3819
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 3820
    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mtp_open_session"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 3822
    long-to-int v4, p1

    invoke-direct {p0, v4}, Lcom/android/providers/media/MediaProvider;->getObjectFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 3823
    .local v3, path:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3825
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.MTP.OBJECT_REMOVED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3826
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "Path"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3827
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3832
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #path:Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v5

    .line 3833
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 3835
    :try_start_1
    iget-object v4, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    long-to-int v6, p1

    invoke-interface {v4, v6}, Lcom/android/providers/media/IMtpService;->sendObjectRemoved(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3841
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v5

    .line 3842
    return-void

    .line 3836
    :catch_0
    move-exception v1

    .line 3837
    .local v1, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "RemoteException in sendObjectRemoved"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3838
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    goto :goto_0

    .line 3841
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method private sendSpcObjectRemoved(J)V
    .locals 7
    .parameter "objectHandle"

    .prologue
    .line 3845
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3846
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "home_sync_running_status"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 3847
    long-to-int v3, p1

    invoke-direct {p0, v3}, Lcom/android/providers/media/MediaProvider;->getObjectFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 3848
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 3849
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.HOME_SYNC.OBJECT_REMOVED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3850
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "Path"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3851
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3854
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #path:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setObjectReferences(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I[Landroid/content/ContentValues;)I
    .locals 18

    .prologue
    .line 4605
    const-wide/16 v10, 0x0

    .line 4606
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 4607
    const-string v3, "files"

    sget-object v4, Lcom/android/providers/media/MediaProvider;->sMediaTableColumns:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 4611
    if-eqz v4, :cond_c

    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4612
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 4613
    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 4615
    const/4 v2, 0x0

    .line 4620
    if-eqz v4, :cond_0

    .line 4621
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4674
    :cond_0
    :goto_0
    return v2

    .line 4617
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    move-wide v15, v2

    .line 4620
    :goto_1
    if-eqz v4, :cond_2

    .line 4621
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4624
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v15, v2

    if-nez v2, :cond_4

    .line 4625
    const/4 v2, 0x0

    goto :goto_0

    .line 4620
    :catchall_0
    move-exception v2

    if-eqz v4, :cond_3

    .line 4621
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 4629
    :cond_4
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    .line 4630
    const-string v2, "audio_playlists_map"

    const-string v3, "playlist_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4634
    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v17, v0

    .line 4635
    const/4 v10, 0x0

    .line 4636
    move/from16 v0, v17

    new-array v11, v0, [Landroid/content/ContentValues;

    .line 4637
    const/4 v2, 0x0

    move v14, v2

    :goto_2
    move/from16 v0, v17

    if-ge v14, v0, :cond_8

    .line 4639
    const-wide/16 v12, 0x0

    .line 4640
    aget-object v2, p4, v14

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 4641
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 4642
    const-string v3, "files"

    sget-object v4, Lcom/android/providers/media/MediaProvider;->sMediaTableColumns:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 4646
    if-eqz v4, :cond_b

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4647
    const/4 v2, 0x1

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    .line 4648
    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    .line 4655
    if-eqz v4, :cond_a

    .line 4656
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move v2, v10

    .line 4637
    :goto_3
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    move v10, v2

    goto :goto_2

    .line 4652
    :cond_5
    const/4 v2, 0x0

    :try_start_3
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v2

    .line 4655
    :goto_4
    if-eqz v4, :cond_6

    .line 4656
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4659
    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_a

    .line 4660
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 4661
    const-string v5, "playlist_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4662
    const-string v5, "audio_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4663
    const-string v2, "play_order"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4664
    add-int/lit8 v2, v10, 0x1

    aput-object v4, v11, v10

    goto :goto_3

    .line 4655
    :catchall_1
    move-exception v2

    if-eqz v4, :cond_7

    .line 4656
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2

    .line 4667
    :cond_8
    move/from16 v0, v17

    if-ge v10, v0, :cond_9

    .line 4670
    new-array v2, v10, [Landroid/content/ContentValues;

    .line 4671
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v11, v3, v2, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4674
    :goto_5
    const-string v3, "external"

    move-wide v0, v15

    invoke-static {v3, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/providers/media/MediaProvider;->playlistBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v2

    goto/16 :goto_0

    :cond_9
    move-object v2, v11

    goto :goto_5

    :cond_a
    move v2, v10

    goto :goto_3

    :cond_b
    move-wide v2, v12

    goto :goto_4

    :cond_c
    move-wide v15, v10

    goto/16 :goto_1
.end method

.method private stopMediaScanner(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 516
    invoke-static {p1}, Landroid/media/MediaScanner;->notifyUnmount(Ljava/lang/String;)V

    .line 517
    invoke-static {p1}, Landroid/media/MediaScanner;->terminateBulkDeleter(Ljava/lang/String;)V

    .line 518
    invoke-static {p1}, Lcom/android/providers/media/MediaScannerService;->setTerminatedStatusForExtSdCard(Ljava/lang/String;)V

    .line 519
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSyncLock:Ljava/lang/Object;

    monitor-enter v1

    .line 520
    :try_start_0
    iget v0, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 521
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to stop bulkInsertion during  - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    .line 525
    :goto_0
    monitor-exit v1

    .line 526
    return-void

    .line 524
    :cond_0
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "No DB operation"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private subConvertOrgin2PinyinForSearch(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "values"
    .parameter "orginKey"

    .prologue
    .line 8464
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8466
    .local v0, orgin:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 8469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_search_key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/android/providers/media/MediaProvider;->computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/media/SecDatabaseUtils;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8472
    :cond_0
    return-object v0
.end method

.method private static subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 8444
    const/4 v0, 0x0

    .line 8445
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8447
    if-eqz v1, :cond_0

    .line 8448
    const-string v0, "<unknown>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8449
    const-string v0, "\u0001"

    .line 8454
    :goto_0
    if-eqz v0, :cond_0

    .line 8455
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 8456
    invoke-virtual {p0, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8460
    :cond_0
    return-object v0

    .line 8452
    :cond_1
    invoke-static {v1}, Lcom/android/providers/media/MediaProvider;->computeChineseSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static updateBucketNames(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    .line 2689
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2692
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2693
    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2694
    const-string v1, "_data"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2698
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    .line 2699
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2706
    const-string v1, "files"

    const-string v3, "media_type=1 OR media_type=2 OR media_type=3"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 2711
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2712
    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2716
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 2717
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2718
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2719
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2720
    const/4 v6, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    .line 2724
    if-eqz v5, :cond_0

    .line 2725
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 2728
    invoke-static {v5, v4}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2729
    const-string v5, "files"

    const-string v6, "_id=?"

    invoke-virtual {p0, v5, v4, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2735
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2739
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2731
    :cond_0
    :try_start_3
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "null data at id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2735
    :cond_1
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2737
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2739
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2741
    return-void
.end method

.method private static updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 11

    .prologue
    const/16 v10, 0x199

    const/16 v9, 0x198

    const/16 v8, 0x191

    const/16 v0, 0x3f

    const/4 v7, 0x0

    .line 1120
    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->getDatabaseVersion(Landroid/content/Context;)I

    move-result v1

    .line 1121
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrading media database from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    if-eq p4, v1, :cond_0

    .line 1123
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal update request. Got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1125
    :cond_0
    if-le p3, p4, :cond_1

    .line 1126
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal update request: can\'t downgrade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Did you forget to wipe data?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1130
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    .line 1140
    if-lt p3, v0, :cond_3

    const/16 v3, 0x54

    if-lt p3, v3, :cond_2

    const/16 v3, 0x59

    if-le p3, v3, :cond_3

    :cond_2
    const/16 v3, 0x5c

    if-lt p3, v3, :cond_5

    const/16 v3, 0x5e

    if-gt p3, v3, :cond_5

    .line 1143
    :cond_3
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Upgrading media database from version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", which will destroy all old data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const-string v3, "DROP TABLE IF EXISTS images"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1147
    const-string v3, "DROP TRIGGER IF EXISTS images_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1148
    const-string v3, "DROP TABLE IF EXISTS thumbnails"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1149
    const-string v3, "DROP TRIGGER IF EXISTS thumbnails_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1150
    const-string v3, "DROP TABLE IF EXISTS audio_meta"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1151
    const-string v3, "DROP TABLE IF EXISTS artists"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1152
    const-string v3, "DROP TABLE IF EXISTS albums"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1153
    const-string v3, "DROP TABLE IF EXISTS album_art"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1154
    const-string v3, "DROP VIEW IF EXISTS artist_info"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1155
    const-string v3, "DROP VIEW IF EXISTS album_info"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1156
    const-string v3, "DROP VIEW IF EXISTS artists_albums_map"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1157
    const-string v3, "DROP TRIGGER IF EXISTS audio_meta_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1158
    const-string v3, "DROP TABLE IF EXISTS audio_genres"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1159
    const-string v3, "DROP TABLE IF EXISTS audio_genres_map"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1160
    const-string v3, "DROP TRIGGER IF EXISTS audio_genres_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1161
    const-string v3, "DROP TABLE IF EXISTS audio_playlists"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1162
    const-string v3, "DROP TABLE IF EXISTS audio_playlists_map"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1163
    const-string v3, "DROP TRIGGER IF EXISTS audio_playlists_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1164
    const-string v3, "DROP TRIGGER IF EXISTS albumart_cleanup1"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1165
    const-string v3, "DROP TRIGGER IF EXISTS albumart_cleanup2"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1166
    const-string v3, "DROP TABLE IF EXISTS video"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1167
    const-string v3, "DROP TRIGGER IF EXISTS video_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1168
    const-string v3, "DROP TABLE IF EXISTS objects"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1169
    const-string v3, "DROP TRIGGER IF EXISTS images_objects_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1170
    const-string v3, "DROP TRIGGER IF EXISTS audio_objects_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1171
    const-string v3, "DROP TRIGGER IF EXISTS video_objects_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1172
    const-string v3, "DROP TRIGGER IF EXISTS playlists_objects_cleanup"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1174
    const-string v3, "CREATE TABLE IF NOT EXISTS images (_id INTEGER PRIMARY KEY,_data TEXT,_size INTEGER,_display_name TEXT,mime_type TEXT,title TEXT,date_added INTEGER,date_modified INTEGER,description TEXT,picasa_id TEXT,isprivate INTEGER,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,orientation INTEGER,mini_thumb_magic INTEGER,bucket_id TEXT,bucket_display_name TEXT);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1195
    const-string v3, "CREATE INDEX IF NOT EXISTS mini_thumb_magic_index on images(mini_thumb_magic);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1206
    const-string v3, "CREATE TRIGGER IF NOT EXISTS images_cleanup DELETE ON images BEGIN DELETE FROM thumbnails WHERE image_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1213
    const-string v3, "CREATE TABLE IF NOT EXISTS thumbnails (_id INTEGER PRIMARY KEY,_data TEXT,image_id INTEGER,kind INTEGER,width INTEGER,height INTEGER);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1222
    const-string v3, "CREATE INDEX IF NOT EXISTS image_id_index on thumbnails(image_id);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1224
    const-string v3, "CREATE TRIGGER IF NOT EXISTS thumbnails_cleanup DELETE ON thumbnails BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1230
    const-string v3, "CREATE TABLE IF NOT EXISTS audio_meta (_id INTEGER PRIMARY KEY,_data TEXT UNIQUE NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT NOT NULL,title_key TEXT NOT NULL,duration INTEGER,artist_id INTEGER,composer TEXT,album_id INTEGER,track INTEGER,year INTEGER CHECK(year!=0),is_ringtone INTEGER,is_music INTEGER,is_alarm INTEGER,is_notification INTEGER);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1253
    const-string v3, "CREATE TABLE IF NOT EXISTS artists (artist_id INTEGER PRIMARY KEY,artist_key TEXT NOT NULL UNIQUE,artist TEXT NOT NULL);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1260
    const-string v3, "CREATE TABLE IF NOT EXISTS albums (album_id INTEGER PRIMARY KEY,album_key TEXT NOT NULL UNIQUE,album TEXT NOT NULL);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1266
    const-string v3, "CREATE TABLE IF NOT EXISTS album_art (album_id INTEGER PRIMARY KEY,_data TEXT);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1271
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1276
    const-string v3, "CREATE VIEW IF NOT EXISTS artist_info AS SELECT artist_id AS _id, artist, artist_key, COUNT(DISTINCT album) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1283
    const-string v3, "CREATE VIEW IF NOT EXISTS album_info AS SELECT audio.album_id AS _id, album, album_key, MIN(year) AS minyear, MAX(year) AS maxyear, artist, artist_id, artist_key, count(*) AS numsongs,album_art._data AS album_art FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id WHERE is_music=1 GROUP BY audio.album_id;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1294
    const-string v3, "CREATE VIEW IF NOT EXISTS artists_albums_map AS SELECT DISTINCT artist_id, album_id FROM audio_meta;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1300
    if-nez p2, :cond_4

    .line 1302
    const-string v3, "CREATE TRIGGER IF NOT EXISTS audio_meta_cleanup DELETE ON audio_meta BEGIN DELETE FROM audio_genres_map WHERE audio_id = old._id;DELETE FROM audio_playlists_map WHERE audio_id = old._id;END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1309
    const-string v3, "CREATE TABLE IF NOT EXISTS audio_genres (_id INTEGER PRIMARY KEY,name TEXT NOT NULL);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1315
    const-string v3, "CREATE TABLE IF NOT EXISTS audio_genres_map (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,genre_id INTEGER NOT NULL);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1322
    const-string v3, "CREATE TRIGGER IF NOT EXISTS audio_genres_cleanup DELETE ON audio_genres BEGIN DELETE FROM audio_genres_map WHERE genre_id = old._id;END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1328
    const-string v3, "CREATE TABLE IF NOT EXISTS audio_playlists (_id INTEGER PRIMARY KEY,_data TEXT,name TEXT NOT NULL,date_added INTEGER,date_modified INTEGER);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1337
    const-string v3, "CREATE TABLE IF NOT EXISTS audio_playlists_map (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1345
    const-string v3, "CREATE TRIGGER IF NOT EXISTS audio_playlists_cleanup DELETE ON audio_playlists BEGIN DELETE FROM audio_playlists_map WHERE playlist_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1352
    const-string v3, "CREATE TRIGGER IF NOT EXISTS albumart_cleanup1 DELETE ON albums BEGIN DELETE FROM album_art WHERE album_id = old.album_id;END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1358
    const-string v3, "CREATE TRIGGER IF NOT EXISTS albumart_cleanup2 DELETE ON album_art BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1365
    :cond_4
    const-string v3, "CREATE TABLE IF NOT EXISTS video (_id INTEGER PRIMARY KEY,_data TEXT NOT NULL,_display_name TEXT,_size INTEGER,mime_type TEXT,date_added INTEGER,date_modified INTEGER,title TEXT,duration INTEGER,artist TEXT,album TEXT,resolution TEXT,description TEXT,isprivate INTEGER,tags TEXT,category TEXT,language TEXT,mini_thumb_data TEXT,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,mini_thumb_magic INTEGER);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1397
    const-string v3, "CREATE TRIGGER IF NOT EXISTS video_cleanup DELETE ON video BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move p3, v0

    .line 1408
    :cond_5
    const/16 v0, 0x40

    if-ge p3, v0, :cond_6

    .line 1410
    const-string v0, "CREATE INDEX IF NOT EXISTS sort_index on images(datetaken ASC, _id ASC);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1417
    :cond_6
    const/16 v0, 0x41

    if-ge p3, v0, :cond_7

    .line 1419
    const-string v0, "CREATE INDEX IF NOT EXISTS titlekey_index on audio_meta(title_key);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1425
    :cond_7
    const/16 v0, 0x43

    if-ge p3, v0, :cond_8

    .line 1427
    const-string v0, "CREATE INDEX IF NOT EXISTS albumkey_index on albums(album_key);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1428
    const-string v0, "CREATE INDEX IF NOT EXISTS artistkey_index on artists(artist_key);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1431
    :cond_8
    const/16 v0, 0x44

    if-ge p3, v0, :cond_9

    .line 1433
    const-string v0, "ALTER TABLE video ADD COLUMN bucket_id TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1434
    const-string v0, "ALTER TABLE video ADD COLUMN bucket_display_name TEXT"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1440
    :cond_9
    const/16 v0, 0x45

    if-ge p3, v0, :cond_a

    .line 1441
    const-string v0, "images"

    invoke-static {p1, v0}, Lcom/android/providers/media/MediaProvider;->updateDisplayName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 1444
    :cond_a
    const/16 v0, 0x46

    if-ge p3, v0, :cond_b

    .line 1446
    const-string v0, "ALTER TABLE video ADD COLUMN bookmark INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1449
    :cond_b
    const/16 v0, 0x47

    if-ge p3, v0, :cond_c

    .line 1456
    const-string v0, "UPDATE audio_meta SET date_modified=0 WHERE _id IN (SELECT _id FROM audio where mime_type=\'audio/mp4\' AND artist=\'<unknown>\' AND album=\'<unknown>\');"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1463
    :cond_c
    const/16 v0, 0x48

    if-ge p3, v0, :cond_d

    .line 1465
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN is_podcast INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1466
    const-string v0, "UPDATE audio_meta SET is_podcast=1 WHERE _data LIKE \'%/podcasts/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1467
    const-string v0, "UPDATE audio_meta SET is_music=0 WHERE is_podcast=1 AND _data NOT LIKE \'%/music/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1469
    const-string v0, "ALTER TABLE audio_meta ADD COLUMN bookmark INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1475
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1482
    :cond_d
    const/16 v0, 0x49

    if-ge p3, v0, :cond_e

    .line 1486
    const-string v0, "UPDATE audio_meta SET is_music=1 WHERE is_music=0 AND _data LIKE \'%/music/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1488
    const-string v0, "UPDATE audio_meta SET is_ringtone=1 WHERE is_ringtone=0 AND _data LIKE \'%/ringtones/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1490
    const-string v0, "UPDATE audio_meta SET is_notification=1 WHERE is_notification=0 AND _data LIKE \'%/notifications/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1492
    const-string v0, "UPDATE audio_meta SET is_alarm=1 WHERE is_alarm=0 AND _data LIKE \'%/alarms/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1494
    const-string v0, "UPDATE audio_meta SET is_podcast=1 WHERE is_podcast=0 AND _data LIKE \'%/podcasts/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1498
    :cond_e
    const/16 v0, 0x4a

    if-ge p3, v0, :cond_f

    .line 1503
    const-string v0, "CREATE VIEW IF NOT EXISTS searchhelpertitle AS SELECT * FROM audio ORDER BY title_key;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1506
    const-string v0, "CREATE VIEW IF NOT EXISTS search AS SELECT _id,\'artist\' AS mime_type,artist,NULL AS album,NULL AS title,artist AS text1,NULL AS text2,number_of_albums AS data1,number_of_tracks AS data2,artist_key AS match,\'content://media/external/audio/artists/\'||_id AS suggest_intent_data,1 AS grouporder FROM artist_info WHERE (artist!=\'<unknown>\') UNION ALL SELECT _id,\'album\' AS mime_type,artist,album,NULL AS title,album AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_key||\' \'||album_key AS match,\'content://media/external/audio/albums/\'||_id AS suggest_intent_data,2 AS grouporder FROM album_info WHERE (album!=\'<unknown>\') UNION ALL SELECT searchhelpertitle._id AS _id,mime_type,artist,album,title,title AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_key||\' \'||album_key||\' \'||title_key AS match,\'content://media/external/audio/media/\'||searchhelpertitle._id AS suggest_intent_data,3 AS grouporder FROM searchhelpertitle WHERE (title != \'\') "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1552
    :cond_f
    const/16 v0, 0x4b

    if-ge p3, v0, :cond_10

    .line 1555
    const-string v0, "UPDATE audio_meta SET date_modified=0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1556
    const-string v0, "DELETE FROM albums"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1559
    :cond_10
    const/16 v0, 0x4c

    if-ge p3, v0, :cond_11

    .line 1562
    const-string v0, "UPDATE audio_meta SET title_key=REPLACE(title_key,x\'081D08C29F081D\',x\'081D\') WHERE title_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1565
    const-string v0, "UPDATE albums SET album_key=REPLACE(album_key,x\'081D08C29F081D\',x\'081D\') WHERE album_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1568
    const-string v0, "UPDATE artists SET artist_key=REPLACE(artist_key,x\'081D08C29F081D\',x\'081D\') WHERE artist_key LIKE \'%\'||x\'081D08C29F081D\'||\'%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1577
    :cond_11
    const/16 v0, 0x4d

    if-ge p3, v0, :cond_12

    .line 1579
    const-string v0, "CREATE TABLE IF NOT EXISTS videothumbnails (_id INTEGER PRIMARY KEY,_data TEXT,video_id INTEGER,kind INTEGER,width INTEGER,height INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1588
    const-string v0, "CREATE INDEX IF NOT EXISTS video_id_index on videothumbnails(video_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1590
    const-string v0, "CREATE TRIGGER IF NOT EXISTS videothumbnails_cleanup DELETE ON videothumbnails BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1600
    :cond_12
    const/16 v0, 0x4e

    if-ge p3, v0, :cond_13

    .line 1603
    const-string v0, "UPDATE video SET date_modified=0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1610
    :cond_13
    const/16 v0, 0x4f

    if-ge p3, v0, :cond_14

    .line 1615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/albumthumbs"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1616
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Android/data/com.android.providers.media/albumthumbs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1617
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1618
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 1620
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1621
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 1622
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1624
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE album_art SET _data=REPLACE(_data, \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\',\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\');"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1630
    :cond_14
    const/16 v0, 0x50

    if-ge p3, v0, :cond_15

    .line 1632
    const-string v0, "UPDATE images SET date_modified=0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1635
    :cond_15
    const/16 v0, 0x51

    if-ge p3, v0, :cond_16

    if-nez p2, :cond_16

    .line 1643
    const-string v0, "UPDATE audio_playlists SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1644
    const-string v0, "UPDATE images SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1645
    const-string v0, "UPDATE video SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1646
    const-string v0, "UPDATE videothumbnails SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1647
    const-string v0, "UPDATE thumbnails SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1648
    const-string v0, "UPDATE album_art SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1649
    const-string v0, "UPDATE audio_meta SET _data=\'////\' WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1651
    const-string v0, "DELETE FROM audio_playlists WHERE _data IS \'////\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1652
    const-string v0, "DELETE FROM images WHERE _data IS \'////\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1653
    const-string v0, "DELETE FROM video WHERE _data IS \'////\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1654
    const-string v0, "DELETE FROM videothumbnails WHERE _data IS \'////\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1655
    const-string v0, "DELETE FROM thumbnails WHERE _data IS \'////\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1656
    const-string v0, "DELETE FROM audio_meta WHERE _data  IS \'////\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1657
    const-string v0, "DELETE FROM album_art WHERE _data  IS \'////\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1660
    const-string v0, "UPDATE audio_meta SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1662
    const-string v0, "UPDATE audio_playlists SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1664
    const-string v0, "UPDATE images SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1666
    const-string v0, "UPDATE video SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1668
    const-string v0, "UPDATE videothumbnails SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1670
    const-string v0, "UPDATE thumbnails SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1672
    const-string v0, "UPDATE album_art SET _data=\'/mnt/sdcard\'||SUBSTR(_data,8) WHERE _data LIKE \'/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1680
    const-string v0, "DELETE from albums"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1681
    const-string v0, "DELETE from artists"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1682
    const-string v0, "UPDATE audio_meta SET date_modified=0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1685
    :cond_16
    const/16 v0, 0x52

    if-ge p3, v0, :cond_17

    .line 1687
    const-string v0, "DROP VIEW IF EXISTS artist_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1688
    const-string v0, "CREATE VIEW IF NOT EXISTS artist_info AS SELECT artist_id AS _id, artist, artist_key, COUNT(DISTINCT album_key) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 GROUP BY artist_key;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1697
    :cond_17
    const/16 v0, 0x57

    if-ge p3, v0, :cond_18

    .line 1701
    const-string v0, "CREATE INDEX IF NOT EXISTS title_idx on audio_meta(title);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1702
    const-string v0, "CREATE INDEX IF NOT EXISTS artist_idx on artists(artist);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1703
    const-string v0, "CREATE INDEX IF NOT EXISTS album_idx on albums(album);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1706
    :cond_18
    const/16 v0, 0x58

    if-ge p3, v0, :cond_19

    .line 1709
    const-string v0, "DROP TRIGGER IF EXISTS albums_update1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1710
    const-string v0, "DROP TRIGGER IF EXISTS albums_update2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1711
    const-string v0, "DROP TRIGGER IF EXISTS albums_update3;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1712
    const-string v0, "DROP TRIGGER IF EXISTS albums_update4;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1713
    const-string v0, "DROP TRIGGER IF EXISTS artist_update1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1714
    const-string v0, "DROP TRIGGER IF EXISTS artist_update2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1715
    const-string v0, "DROP TRIGGER IF EXISTS artist_update3;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1716
    const-string v0, "DROP TRIGGER IF EXISTS artist_update4;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1717
    const-string v0, "DROP VIEW IF EXISTS album_artists;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1718
    const-string v0, "CREATE INDEX IF NOT EXISTS album_id_idx on audio_meta(album_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1719
    const-string v0, "CREATE INDEX IF NOT EXISTS artist_id_idx on audio_meta(artist_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1722
    const-string v0, "CREATE VIEW IF NOT EXISTS artists_albums_map AS SELECT DISTINCT artist_id, album_id FROM audio_meta;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1730
    :cond_19
    const/16 v0, 0x5b

    if-ge p3, v0, :cond_1a

    .line 1732
    const-string v0, "DROP INDEX IF EXISTS mini_thumb_magic_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1735
    const-string v0, "CREATE INDEX IF NOT EXISTS image_bucket_index ON images(bucket_id, datetaken)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1736
    const-string v0, "CREATE INDEX IF NOT EXISTS video_bucket_index ON video(bucket_id, datetaken)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1743
    :cond_1a
    const/16 v0, 0x64

    if-gt p3, v0, :cond_1e

    .line 1745
    const-string v0, "DROP TABLE IF EXISTS objects"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1746
    const-string v0, "DROP TABLE IF EXISTS files"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1747
    const-string v0, "DROP TRIGGER IF EXISTS images_objects_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1748
    const-string v0, "DROP TRIGGER IF EXISTS audio_objects_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1749
    const-string v0, "DROP TRIGGER IF EXISTS video_objects_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1750
    const-string v0, "DROP TRIGGER IF EXISTS playlists_objects_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1751
    const-string v0, "DROP TRIGGER IF EXISTS files_cleanup_images;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1752
    const-string v0, "DROP TRIGGER IF EXISTS files_cleanup_audio;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1753
    const-string v0, "DROP TRIGGER IF EXISTS files_cleanup_video;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1754
    const-string v0, "DROP TRIGGER IF EXISTS files_cleanup_playlists;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1755
    const-string v0, "DROP TRIGGER IF EXISTS media_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1760
    const-string v0, "CREATE TABLE files (_id INTEGER PRIMARY KEY AUTOINCREMENT,_data TEXT,_size INTEGER,format INTEGER,parent INTEGER,date_added INTEGER,date_modified INTEGER,mime_type TEXT,title TEXT,description TEXT,_display_name TEXT,picasa_id TEXT,orientation INTEGER,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,mini_thumb_magic INTEGER,bucket_id TEXT,bucket_display_name TEXT,isprivate INTEGER,title_key TEXT,artist_id INTEGER,album_id INTEGER,composer TEXT,track INTEGER,year INTEGER CHECK(year!=0),is_ringtone INTEGER,is_music INTEGER,is_alarm INTEGER,is_notification INTEGER,is_podcast INTEGER,album_artist TEXT,duration INTEGER,bookmark INTEGER,artist TEXT,album TEXT,resolution TEXT,tags TEXT,category TEXT,language TEXT,mini_thumb_data TEXT,name TEXT,media_type INTEGER,old_id INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1825
    const-string v0, "CREATE INDEX path_index ON files(_data);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1826
    const-string v0, "CREATE INDEX media_type_index ON files(media_type);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1835
    const-string v0, "INSERT INTO files (_id,_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,old_id,media_type) SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,_id,2 FROM audio_meta;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1839
    const-string v0, "INSERT INTO files (_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,old_id,media_type) SELECT _data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,_id,1 FROM images;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1841
    const-string v0, "INSERT INTO files (_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name, bookmark,old_id,media_type) SELECT _data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name, bookmark,_id,3 FROM video;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1843
    if-nez p2, :cond_1b

    .line 1844
    const-string v0, "INSERT INTO files (_data,name,date_added,date_modified,old_id,media_type) SELECT _data,name,date_added,date_modified,_id,4 FROM audio_playlists;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1850
    :cond_1b
    const-string v0, "DROP TABLE IF EXISTS images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1851
    const-string v0, "DROP TABLE IF EXISTS audio_meta"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1852
    const-string v0, "DROP TABLE IF EXISTS video"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1853
    const-string v0, "DROP TABLE IF EXISTS audio_playlists"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1856
    const-string v0, "CREATE VIEW images AS SELECT _id,_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name FROM files WHERE media_type=1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1859
    const-string v0, "CREATE VIEW audio_meta AS SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,album_artist FROM files WHERE media_type=2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1862
    const-string v0, "CREATE VIEW video AS SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name, bookmark FROM files WHERE media_type=3;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1865
    if-nez p2, :cond_1c

    .line 1866
    const-string v0, "CREATE VIEW audio_playlists AS SELECT _id,_data,name,date_added,date_modified FROM files WHERE media_type=4;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1872
    :cond_1c
    const-string v0, "CREATE INDEX tmp ON files(old_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1875
    const-string v0, "UPDATE thumbnails SET image_id = (SELECT _id FROM files WHERE files.old_id = thumbnails.image_id AND files.media_type = 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1879
    if-nez p2, :cond_1d

    .line 1882
    const-string v0, "UPDATE audio_genres_map SET audio_id = (SELECT _id FROM files WHERE files.old_id = audio_genres_map.audio_id AND files.media_type = 2);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1885
    const-string v0, "UPDATE audio_playlists_map SET audio_id = (SELECT _id FROM files WHERE files.old_id = audio_playlists_map.audio_id AND files.media_type = 2);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1888
    const-string v0, "UPDATE audio_playlists_map SET playlist_id = (SELECT _id FROM files WHERE files.old_id = audio_playlists_map.playlist_id AND files.media_type = 4);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1894
    :cond_1d
    const-string v0, "UPDATE videothumbnails SET video_id = (SELECT _id FROM files WHERE files.old_id = videothumbnails.video_id AND files.media_type = 3);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1899
    const-string v0, "DROP INDEX tmp;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1902
    const-string v0, "DROP INDEX IF EXISTS title_idx"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1903
    const-string v0, "DROP INDEX IF EXISTS album_id_idx"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1904
    const-string v0, "DROP INDEX IF EXISTS image_bucket_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1905
    const-string v0, "DROP INDEX IF EXISTS video_bucket_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1906
    const-string v0, "DROP INDEX IF EXISTS sort_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1907
    const-string v0, "DROP INDEX IF EXISTS titlekey_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1908
    const-string v0, "DROP INDEX IF EXISTS artist_id_idx"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1909
    const-string v0, "CREATE INDEX title_idx ON files(title);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1910
    const-string v0, "CREATE INDEX album_id_idx ON files(album_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1911
    const-string v0, "CREATE INDEX bucket_index ON files(bucket_id, datetaken);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1912
    const-string v0, "CREATE INDEX sort_index ON files(datetaken ASC, _id ASC);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1913
    const-string v0, "CREATE INDEX titlekey_index ON files(title_key);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1914
    const-string v0, "CREATE INDEX artist_id_idx ON files(artist_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1917
    const-string v0, "DROP TRIGGER IF EXISTS images_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1918
    const-string v0, "DROP TRIGGER IF EXISTS audio_meta_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1919
    const-string v0, "DROP TRIGGER IF EXISTS video_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1920
    const-string v0, "DROP TRIGGER IF EXISTS audio_playlists_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1921
    const-string v0, "DROP TRIGGER IF EXISTS audio_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1923
    const-string v0, "CREATE TRIGGER IF NOT EXISTS images_cleanup DELETE ON files WHEN old.media_type = 1 BEGIN DELETE FROM thumbnails WHERE image_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1930
    const-string v0, "CREATE TRIGGER IF NOT EXISTS video_cleanup DELETE ON files WHEN old.media_type = 3 BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1936
    if-nez p2, :cond_1e

    .line 1937
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_meta_cleanup DELETE ON files WHEN old.media_type = 2 BEGIN DELETE FROM audio_genres_map WHERE audio_id = old._id;DELETE FROM audio_playlists_map WHERE audio_id = old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1944
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_playlists_cleanup DELETE ON files WHEN old.media_type = 4 BEGIN DELETE FROM audio_playlists_map WHERE playlist_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1951
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_delete INSTEAD OF DELETE ON audio BEGIN DELETE from files where _id=old._id;DELETE from audio_playlists_map where audio_id=old._id;DELETE from audio_genres_map where audio_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1960
    :cond_1e
    const/16 v0, 0x12d

    if-ge p3, v0, :cond_1f

    .line 1961
    const-string v0, "DROP INDEX IF EXISTS bucket_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1962
    const-string v0, "CREATE INDEX bucket_index on files(bucket_id, media_type, datetaken, _id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1963
    const-string v0, "CREATE INDEX bucket_name on files(bucket_id, media_type, bucket_display_name)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1966
    :cond_1f
    const/16 v0, 0x12e

    if-ge p3, v0, :cond_20

    .line 1967
    const-string v0, "CREATE INDEX parent_index ON files(parent);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1968
    const-string v0, "CREATE INDEX format_index ON files(format);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1971
    :cond_20
    const/16 v0, 0x12f

    if-ge p3, v0, :cond_21

    .line 1974
    const-string v0, "DELETE from albums"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1975
    const-string v0, "UPDATE files SET date_modified=0 WHERE media_type=2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1979
    :cond_21
    const/16 v0, 0x130

    if-ge p3, v0, :cond_22

    if-nez p2, :cond_22

    .line 1981
    const-string v0, "CREATE TRIGGER IF NOT EXISTS files_cleanup DELETE ON files BEGIN SELECT _OBJECT_REMOVED(old._id);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1988
    :cond_22
    const/16 v0, 0x131

    if-ge p3, v0, :cond_23

    if-eqz p2, :cond_23

    .line 1990
    const-string v0, "DROP TRIGGER IF EXISTS files_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1993
    :cond_23
    const/16 v0, 0x132

    if-ge p3, v0, :cond_24

    if-nez p2, :cond_24

    .line 1996
    const-string v0, "UPDATE files SET date_modified=0 WHERE media_type=2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1998
    const-string v0, "DELETE FROM audio_genres_map"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1999
    const-string v0, "DELETE FROM audio_genres"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2002
    :cond_24
    const/16 v0, 0x133

    if-ge p3, v0, :cond_25

    if-nez p2, :cond_25

    .line 2005
    const-string v0, "UPDATE files SET date_modified=0 WHERE media_type=1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2010
    :cond_25
    const/16 v0, 0x134

    if-ge p3, v0, :cond_26

    .line 2013
    const-string v0, "ALTER TABLE files ADD COLUMN year_name TEXT default \'<unknown>\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2014
    const-string v0, "ALTER TABLE files ADD COLUMN genre_name TEXT default \'<unknown>\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2015
    const-string v0, "ALTER TABLE files ADD COLUMN recently_played INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2016
    const-string v0, "ALTER TABLE files ADD COLUMN most_played INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2017
    const-string v0, "ALTER TABLE files ADD COLUMN recently_added_remove_flag INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2018
    const-string v0, "ALTER TABLE files ADD COLUMN is_favorite INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2022
    const-string v0, "ALTER TABLE files ADD COLUMN resumePos INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2023
    const-string v0, "ALTER TABLE files ADD COLUMN isPlayed INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2028
    :cond_26
    if-lt p3, v8, :cond_27

    if-ne p3, v8, :cond_28

    if-eqz p2, :cond_28

    .line 2030
    :cond_27
    const-string v0, "ALTER TABLE files ADD COLUMN storage_id INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE files SET storage_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Landroid/mtp/MtpStorage;->getStorageId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2035
    :cond_28
    const/16 v0, 0x193

    if-ge p3, v0, :cond_29

    if-nez p2, :cond_29

    .line 2036
    const-string v0, "CREATE VIEW audio_genres_map_noid AS SELECT audio_id,genre_id from audio_genres_map;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2040
    :cond_29
    const/16 v0, 0x194

    if-ge p3, v0, :cond_2a

    .line 2043
    const-string v0, "DELETE from albums"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2044
    const-string v0, "UPDATE files SET date_modified=0 WHERE media_type=2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2048
    :cond_2a
    const/16 v0, 0x195

    if-ge p3, v0, :cond_2b

    .line 2050
    const-string v0, "ALTER TABLE files ADD COLUMN is_drm INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2052
    const-string v0, "DROP VIEW IF EXISTS audio_meta"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2053
    const-string v0, "CREATE VIEW audio_meta AS SELECT _id,_data,_display_name,_size,mime_type,date_added,is_drm,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,album_artist FROM files WHERE media_type=2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2057
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2060
    :cond_2b
    const/16 v0, 0x197

    if-ge p3, v0, :cond_2c

    .line 2064
    const-string v0, "UPDATE files SET date_modified=0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2067
    :cond_2c
    if-ge p3, v9, :cond_2d

    .line 2069
    const-string v0, "ALTER TABLE files ADD COLUMN width INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2070
    const-string v0, "ALTER TABLE files ADD COLUMN height INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2073
    const-string v0, "UPDATE files SET date_modified=0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2076
    const-string v0, "DROP VIEW IF EXISTS images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2077
    const-string v0, "DROP VIEW IF EXISTS video"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2078
    const-string v0, "CREATE VIEW images AS SELECT _id,_data,_size,_display_name,mime_type,title,date_added,date_modified,description,picasa_id,isprivate,latitude,longitude,datetaken,orientation,mini_thumb_magic,bucket_id,bucket_display_name,width,height FROM files WHERE media_type=1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2081
    const-string v0, "CREATE VIEW video AS SELECT _id,_data,_display_name,_size,mime_type,date_added,date_modified,title,duration,artist,album,resolution,description,isprivate,tags,category,language,mini_thumb_data,latitude,longitude,datetaken,mini_thumb_magic,bucket_id,bucket_display_name,bookmark,width,height FROM files WHERE media_type=3;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2086
    :cond_2d
    if-ge p3, v10, :cond_2e

    .line 2093
    :try_start_0
    const-string v0, "ALTER TABLE files ADD COLUMN is_sound INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2100
    :cond_2e
    :goto_0
    if-ge p3, v9, :cond_31

    .line 2103
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v0, :cond_2f

    .line 2104
    const-string v0, "ALTER TABLE files ADD COLUMN title_search_key TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2105
    const-string v0, "ALTER TABLE files ADD COLUMN title_pinyin TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2106
    const-string v0, "ALTER TABLE files ADD COLUMN composer_pinyin TEXT default \'<unknown>\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2107
    const-string v0, "ALTER TABLE files ADD COLUMN genre_name_pinyin TEXT default \'<unknown>\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2108
    const-string v0, "ALTER TABLE files ADD COLUMN _display_name_pinyin TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2109
    const-string v0, "ALTER TABLE files ADD COLUMN bucket_display_name_pinyin TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2110
    const-string v0, "ALTER TABLE files ADD COLUMN name_pinyin TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2112
    const-string v0, "artists"

    const-string v3, "artist_search_key"

    invoke-static {p1, v0, v3}, Lcom/android/providers/media/MediaProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 2113
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "UpgradeDatabaseToVersion408 Column artist_search_key Exist in artists"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    :goto_1
    const-string v0, "artists"

    const-string v3, "artist_pinyin"

    invoke-static {p1, v0, v3}, Lcom/android/providers/media/MediaProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2119
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "UpgradeDatabaseToVersion408 Column artist_pinyin Exist in artists"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    :goto_2
    const-string v0, "albums"

    const-string v3, "album_search_key"

    invoke-static {p1, v0, v3}, Lcom/android/providers/media/MediaProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 2125
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "UpgradeDatabaseToVersion408 Column album_search_key Exist in albums"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    :goto_3
    const-string v0, "albums"

    const-string v3, "album_pinyin"

    invoke-static {p1, v0, v3}, Lcom/android/providers/media/MediaProvider;->findExistColumnInTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2131
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "UpgradeDatabaseToVersion408 Column album_pinyin Exist in albums"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    :cond_2f
    :goto_4
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateSecAudioView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2140
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateSecAudioSearchView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2141
    if-nez p2, :cond_30

    .line 2142
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateSecAudioPlaylistView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2145
    :cond_30
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateSecVideoView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2153
    :cond_31
    if-ge p3, v10, :cond_32

    .line 2154
    const-string v0, "ALTER TABLE files ADD COLUMN face_count INTEGER default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2155
    const-string v0, "ALTER TABLE files ADD COLUMN scan_pri INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2156
    const-string v0, "DROP TABLE IF EXISTS faces"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2157
    const-string v0, "create table if not exists faces(_id integer primary key,image_id integer ,person_id integer,recommended_id integer default 0,group_id integer default 0,pos_left integer default 0,pos_top integer default 0,pos_right integer default 0,pos_bottom integer default 0,face_data integer default 0,auto_group integer default 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2158
    const-string v0, "CREATE TRIGGER IF NOT EXISTS images_update_face UPDATE OF date_modified ON files WHEN old.media_type = 1 BEGIN UPDATE files set face_count=-1 WHERE _id = old._id;DELETE FROM faces WHERE image_id=old._id;END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2167
    :cond_32
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_USE_DOCUMENTCLASSIFIER:Z

    const/4 v3, 0x1

    if-ne v0, v3, :cond_33

    .line 2168
    const-string v0, "ALTER TABLE files ADD COLUMN object_count INTEGER default -1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2169
    const-string v0, "DROP TABLE IF EXISTS objects"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2170
    const-string v0, "create table if not exists objects(_id integer primary key,file_id integer ,object_type integer default -1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2171
    const-string v0, "DROP VIEW IF EXISTS objects_info"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2172
    const-string v0, "CREATE VIEW IF NOT EXISTS objects_info AS SELECT f._id AS file_id, f._data AS file_path, o._id AS obj_id, o.object_type AS obj_type FROM files f , objects o WHERE f._id = o.file_id;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2179
    :cond_33
    const/16 v0, 0x19a

    if-ge p3, v0, :cond_34

    .line 2181
    const-string v0, "ALTER TABLE files ADD COLUMN weather_ID INTEGER default 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2182
    const-string v0, "DROP VIEW IF EXISTS contextual_tags"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2183
    const-string v0, "CREATE VIEW contextual_tags AS SELECT _id , _data  , media_type, datetaken , latitude, longitude,  weather_ID ,  (SELECT group_concat( faces._id  ) FROM faces WHERE files._id = faces.[image_id]  ) as faces_IDs FROM files WHERE media_type = 2 OR media_type = 1 OR media_type = 3"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2196
    :cond_34
    const/16 v0, 0x19b

    if-ge p3, v0, :cond_35

    .line 2197
    const-string v0, "ALTER TABLE files ADD COLUMN recordingtype INTEGER default 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2198
    const/16 v0, 0x19b

    invoke-static {p1, v0}, Lcom/android/providers/media/MediaProvider;->recreateSecAudioViewByVersion(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 2199
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateSecAudioSearchView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2200
    if-nez p2, :cond_35

    .line 2201
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateSecAudioPlaylistView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2211
    :cond_35
    const/16 v0, 0x19c

    if-ge p3, v0, :cond_36

    if-nez p2, :cond_36

    .line 2214
    const-string v0, "UPDATE files SET date_modified=0 WHERE media_type=2;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2216
    const-string v0, "DELETE FROM audio_genres_map"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2217
    const-string v0, "DELETE FROM audio_genres"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2220
    :cond_36
    const/16 v0, 0x1f4

    if-ge p3, v0, :cond_37

    .line 2222
    const-string v0, "DROP TRIGGER IF EXISTS videothumbnails_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2224
    :cond_37
    const/16 v0, 0x1f5

    if-ge p3, v0, :cond_38

    .line 2229
    const-string v0, "DROP TRIGGER IF EXISTS images_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2230
    const-string v0, "DROP TRIGGER IF EXISTS thumbnails_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2232
    :cond_38
    const/16 v0, 0x1f6

    if-ge p3, v0, :cond_39

    .line 2234
    const-string v0, "DROP TRIGGER IF EXISTS video_cleanup;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2236
    :cond_39
    const/16 v0, 0x1f7

    if-ge p3, v0, :cond_3a

    .line 2238
    const-string v0, "DROP TRIGGER IF EXISTS audio_delete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2239
    const-string v0, "DROP TRIGGER IF EXISTS audio_meta_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2241
    :cond_3a
    const/16 v0, 0x1f8

    if-ge p3, v0, :cond_3b

    .line 2243
    const-string v0, "CREATE INDEX IF NOT EXISTS path_index_lower ON files(_data COLLATE NOCASE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2246
    :cond_3b
    const/16 v0, 0x1f9

    if-ge p3, v0, :cond_3c

    .line 2249
    const-string v0, "UPDATE files SET date_modified=0 WHERE media_type=3;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2252
    :cond_3c
    const/16 v0, 0x1fa

    if-ge p3, v0, :cond_3e

    .line 2256
    const-string v0, "DROP TRIGGER IF EXISTS files_cleanup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2257
    const-string v0, "DELETE FROM files WHERE _data LIKE \'/storage/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2258
    const-string v0, "DELETE FROM album_art WHERE _data LIKE \'/storage/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2259
    const-string v0, "DELETE FROM thumbnails WHERE _data LIKE \'/storage/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2260
    const-string v0, "DELETE FROM videothumbnails WHERE _data LIKE \'/storage/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2265
    if-nez p2, :cond_3d

    .line 2267
    const-string v0, "DELETE FROM files WHERE media_type=0 AND format<>12289;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2268
    const-string v0, "UPDATE files SET _data=\'/storage/extSdCard\'||SUBSTR(_data,24) WHERE _data LIKE \'/mnt/sdcard/external_sd/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2270
    const-string v0, "UPDATE files SET _data=\'/storage/sdcard0\'||SUBSTR(_data,12) WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2272
    const-string v0, "UPDATE files SET _data=\'/storage/extSdCard\'||SUBSTR(_data,15) WHERE _data LIKE \'/mnt/extSdCard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2274
    const-string v0, "UPDATE album_art SET _data=\'/storage/extSdCard\'||SUBSTR(_data,24) WHERE _data LIKE \'/mnt/sdcard/external_sd/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2276
    const-string v0, "UPDATE album_art SET _data=\'/storage/sdcard0\'||SUBSTR(_data,12) WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2278
    const-string v0, "UPDATE album_art SET _data=\'/storage/extSdCard\'||SUBSTR(_data,15) WHERE _data LIKE \'/mnt/extSdCard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2280
    const-string v0, "UPDATE thumbnails SET _data=\'/storage/extSdCard\'||SUBSTR(_data,24) WHERE _data LIKE \'/mnt/sdcard/external_sd/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2282
    const-string v0, "UPDATE thumbnails SET _data=\'/storage/sdcard0\'||SUBSTR(_data,12) WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2284
    const-string v0, "UPDATE thumbnails SET _data=\'/storage/extSdCard\'||SUBSTR(_data,15) WHERE _data LIKE \'/mnt/extSdCard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2286
    const-string v0, "UPDATE videothumbnails SET _data=\'/storage/extSdCard\'||SUBSTR(_data,24) WHERE _data LIKE \'/mnt/sdcard/external_sd/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2288
    const-string v0, "UPDATE videothumbnails SET _data=\'/storage/sdcard0\'||SUBSTR(_data,12) WHERE _data LIKE \'/mnt/sdcard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2290
    const-string v0, "UPDATE videothumbnails SET _data=\'/storage/extSdCard\'||SUBSTR(_data,15) WHERE _data LIKE \'/mnt/extSdCard/%\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2294
    const-string v0, "alarm_alert"

    invoke-static {p0, p1, v0}, Lcom/android/providers/media/MediaProvider;->changeSoundPath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2295
    const-string v0, "notification_sound"

    invoke-static {p0, p1, v0}, Lcom/android/providers/media/MediaProvider;->changeSoundPath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2296
    const-string v0, "ringtone"

    invoke-static {p0, p1, v0}, Lcom/android/providers/media/MediaProvider;->changeSoundPath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2300
    :cond_3d
    if-nez p2, :cond_3e

    .line 2301
    const-string v0, "CREATE TRIGGER IF NOT EXISTS files_cleanup DELETE ON files BEGIN SELECT _OBJECT_REMOVED(old._id);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2307
    :cond_3e
    const/16 v0, 0x1fb

    if-ge p3, v0, :cond_3f

    .line 2309
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->updateBucketNames(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2311
    :cond_3f
    const/16 v0, 0x1fc

    if-ge p3, v0, :cond_40

    if-nez p2, :cond_40

    .line 2313
    const-string v0, "CREATE TABLE IF NOT EXISTS audio_genres_map_tmp (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,genre_id INTEGER NOT NULL,UNIQUE (audio_id,genre_id) ON CONFLICT IGNORE);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2319
    const-string v0, "INSERT INTO audio_genres_map_tmp (audio_id,genre_id) SELECT DISTINCT audio_id,genre_id FROM audio_genres_map;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2321
    const-string v0, "DROP TABLE audio_genres_map;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2322
    const-string v0, "ALTER TABLE audio_genres_map_tmp RENAME TO audio_genres_map;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2325
    :cond_40
    const/16 v0, 0x1fd

    if-ge p3, v0, :cond_41

    .line 2326
    const-string v0, "CREATE TABLE IF NOT EXISTS log (time DATETIME PRIMARY KEY, message TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2331
    :cond_41
    const/16 v0, 0x1ff

    if-ge p3, v0, :cond_42

    .line 2333
    :try_start_1
    const-string v0, "ALTER TABLE files ADD COLUMN group_id INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2338
    :goto_5
    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->recreateSecImageView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2342
    :cond_42
    const/16 v0, 0x200

    if-ge p3, v0, :cond_43

    .line 2343
    const-string v0, "ALTER TABLE files ADD COLUMN city_ID INTEGER default 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2344
    const-string v0, "DROP VIEW IF EXISTS contextual_tags"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2345
    const-string v0, "CREATE VIEW contextual_tags AS SELECT _id , _data  , media_type, datetaken , latitude, longitude,  weather_ID , city_ID , (SELECT group_concat( faces._id  ) FROM faces WHERE files._id = faces.[image_id]  ) as faces_IDs FROM files WHERE media_type = 2 OR media_type = 1 OR media_type = 3"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2357
    :cond_43
    const/16 v0, 0x201

    if-ge p3, v0, :cond_44

    .line 2358
    const-string v0, "ALTER TABLE faces ADD COLUMN similarity INTEGER default 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2362
    :cond_44
    invoke-static {p1, p3}, Lcom/android/providers/media/MediaProvider;->sanityCheck(Landroid/database/sqlite/SQLiteDatabase;I)V

    .line 2363
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v3

    sub-long v0, v3, v1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 2364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database upgraded from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/providers/media/MediaProvider;->logToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 2366
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Database upgraded from version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    return-void

    .line 2115
    :cond_45
    const-string v0, "ALTER TABLE artists ADD COLUMN artist_search_key TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2121
    :cond_46
    const-string v0, "ALTER TABLE artists ADD COLUMN artist_pinyin TEXT default \'<unknown>\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2127
    :cond_47
    const-string v0, "ALTER TABLE albums ADD COLUMN album_search_key TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2133
    :cond_48
    const-string v0, "ALTER TABLE albums ADD COLUMN album_pinyin TEXT default \'<unknown>\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2334
    :catch_0
    move-exception v0

    .line 2335
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "SQLException : ALTER TABLE files ADD COLUMN group_id INTEGER default 0"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2094
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method private static updateDisplayName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 2751
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2753
    const/4 v0, 0x3

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_display_name"

    aput-object v1, v2, v0

    .line 2754
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 2756
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2757
    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2758
    const-string v3, "_display_name"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2759
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2760
    :cond_0
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2761
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2762
    if-nez v5, :cond_0

    .line 2763
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2764
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 2765
    invoke-static {v5, v4}, Lcom/android/providers/media/MediaProvider;->computeDisplayName(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 2766
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 2767
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2771
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2775
    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 2771
    :cond_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2773
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2775
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2777
    return-void
.end method

.method private updateFacePerson(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "uri"
    .parameter "table"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 5778
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .line 5779
    .local v1, rawSqlDatabase:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v1, :cond_0

    .line 5780
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5783
    :cond_0
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 5784
    .local v2, rawdb:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_1

    .line 5785
    const/4 v0, 0x0

    .line 5788
    :goto_0
    return v0

    .line 5787
    :cond_1
    invoke-virtual {v2, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 5788
    .local v0, count:I
    goto :goto_0
.end method

.method private updateGenre(JLjava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4685
    .line 4687
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4690
    :try_start_0
    sget-object v2, Lcom/android/providers/media/MediaProvider;->GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 4692
    if-eqz v2, :cond_0

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 4694
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4695
    const-string v3, "name"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4696
    invoke-virtual {p0, v1, v0}, Lcom/android/providers/media/MediaProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 4702
    :goto_0
    if-eqz v0, :cond_1

    .line 4703
    const-string v1, "members"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 4707
    :cond_1
    if-eqz v2, :cond_2

    .line 4708
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4712
    :cond_2
    if-eqz v0, :cond_3

    .line 4714
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4715
    const-string v2, "audio_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4716
    invoke-virtual {p0, v0, v1}, Lcom/android/providers/media/MediaProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 4718
    :cond_3
    return-void

    .line 4699
    :cond_4
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 4700
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 4707
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_1
    if-eqz v1, :cond_5

    .line 4708
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 4707
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private static updateLGTDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 1

    .prologue
    .line 575
    const/16 v0, 0x5d

    if-gt p3, v0, :cond_0

    .line 576
    const-string v0, "CREATE TABLE IF NOT EXISTS videothumbnails (_id INTEGER PRIMARY KEY,_data TEXT,video_id INTEGER,kind INTEGER,width INTEGER,height INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 585
    const-string v0, "CREATE INDEX IF NOT EXISTS video_id_index on videothumbnails(video_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 587
    const-string v0, "CREATE TRIGGER IF NOT EXISTS videothumbnails_cleanup DELETE ON videothumbnails BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 592
    :cond_0
    return-void
.end method

.method private updateRecordFile(Landroid/content/ContentValues;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 6291
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->isRecordFile(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->isSoundsDir(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6292
    const-string v0, "is_music"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6294
    :cond_0
    return-void
.end method

.method private updateSmartSortInfo(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 5795
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSmartSortInfo():uri=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), table=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), initialValues=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), userWhere=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5797
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 5798
    if-nez v0, :cond_0

    .line 5799
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5802
    :cond_0
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5803
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 5804
    return v0
.end method

.method private updateSoundField(Landroid/content/ContentValues;)V
    .locals 3

    .prologue
    .line 6264
    const-string v0, "is_sound"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 6265
    if-nez v0, :cond_2

    .line 6266
    const-string v0, "mime_type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6267
    const-string v0, "mime_type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6268
    if-eqz v1, :cond_2

    .line 6269
    const/4 v0, 0x0

    .line 6270
    const-string v2, "audio/x-wav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/amr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/amr-wb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/midi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/mid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/sp-midi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "audio/imelody"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6274
    :cond_0
    const/4 v0, 0x1

    .line 6276
    :cond_1
    const-string v1, "is_sound"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6280
    :cond_2
    return-void
.end method

.method private waitForThumbnailReady(Landroid/net/Uri;)Z
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2884
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string v0, "_data"

    aput-object v0, v2, v7

    const-string v0, "mini_thumb_magic"

    aput-object v0, v2, v9

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2886
    if-nez v8, :cond_1

    .line 2915
    :cond_0
    :goto_0
    return v6

    .line 2890
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2891
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 2892
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2893
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2895
    const/4 v3, 0x5

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->requestMediaThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/android/providers/media/MediaThumbRequest;

    move-result-object v1

    .line 2897
    if-eqz v1, :cond_0

    .line 2900
    monitor-enter v1

    .line 2902
    :goto_1
    :try_start_0
    iget-object v0, v1, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    sget-object v2, Lcom/android/providers/media/MediaThumbRequest$State;->WAIT:Lcom/android/providers/media/MediaThumbRequest$State;

    if-ne v0, v2, :cond_2

    .line 2903
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2905
    :catch_0
    move-exception v0

    .line 2906
    :try_start_1
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2908
    :cond_2
    iget-object v0, v1, Lcom/android/providers/media/MediaThumbRequest;->mState:Lcom/android/providers/media/MediaThumbRequest$State;

    sget-object v2, Lcom/android/providers/media/MediaThumbRequest$State;->DONE:Lcom/android/providers/media/MediaThumbRequest$State;

    if-ne v0, v2, :cond_3

    move v0, v7

    .line 2911
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2913
    :goto_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v6, v0

    .line 2915
    goto :goto_0

    .line 2911
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    move v0, v6

    goto :goto_2

    :cond_4
    move v0, v6

    goto :goto_3
.end method

.method private writeAlbumArt(ZLandroid/net/Uri;[BLandroid/graphics/Bitmap;)V
    .locals 6
    .parameter "need_to_recompress"
    .parameter "out"
    .parameter "compressed"
    .parameter "bm"

    .prologue
    const/4 v5, 0x0

    .line 6815
    const/4 v2, 0x0

    .line 6817
    .local v2, success:Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 6819
    .local v1, outstream:Ljava/io/OutputStream;
    if-nez p1, :cond_1

    .line 6822
    invoke-virtual {v1, p3}, Ljava/io/OutputStream;->write([B)V

    .line 6823
    const/4 v2, 0x1

    .line 6828
    :goto_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6834
    .end local v1           #outstream:Ljava/io/OutputStream;
    :goto_1
    if-nez v2, :cond_0

    .line 6836
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p2, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 6838
    :cond_0
    return-void

    .line 6825
    .restart local v1       #outstream:Ljava/io/OutputStream;
    :cond_1
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    invoke-virtual {p4, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 6829
    .end local v1           #outstream:Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 6830
    .local v0, ex:Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "error creating file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 6831
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 6832
    .local v0, ex:Ljava/io/IOException;
    sget-object v3, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v4, "error creating file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 5162
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v3

    .line 5163
    .local v3, ihelper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .line 5164
    .local v1, ehelper:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    invoke-virtual {v3}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 5165
    .local v2, idb:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5166
    const/4 v0, 0x0

    .line 5167
    .local v0, edb:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    .line 5168
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 5169
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5172
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 5173
    .local v5, result:[Landroid/content/ContentProviderResult;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 5174
    if-eqz v0, :cond_1

    .line 5175
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 5180
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 5181
    .local v4, res:Landroid/content/ContentResolver;
    const-string v6, "content://media/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5184
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5185
    if-eqz v0, :cond_2

    .line 5186
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_2
    return-object v5

    .line 5184
    .end local v4           #res:Landroid/content/ContentResolver;
    .end local v5           #result:[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5185
    if-eqz v0, :cond_3

    .line 5186
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    throw v6
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 3858
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 3859
    const/16 v0, 0x12c

    if-ne v2, v0, :cond_0

    .line 3860
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    .line 3937
    :goto_0
    return v0

    .line 3862
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v3

    .line 3863
    if-nez v3, :cond_1

    .line 3864
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3867
    :cond_1
    invoke-virtual {v3}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 3868
    if-nez v4, :cond_2

    .line 3869
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t open database for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3872
    :cond_2
    const/16 v0, 0x6f

    if-eq v2, v0, :cond_3

    const/16 v0, 0x70

    if-ne v2, v0, :cond_4

    .line 3873
    :cond_3
    invoke-direct {p0, v4, p1, p2}, Lcom/android/providers/media/MediaProvider;->playlistBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 3874
    :cond_4
    const/16 v0, 0x2c0

    if-ne v2, v0, :cond_5

    .line 3875
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3876
    invoke-direct {p0, v3, v4, v0, p2}, Lcom/android/providers/media/MediaProvider;->setObjectReferences(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I[Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 3879
    :cond_5
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v3, "bulkInsert started"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3880
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSyncLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3881
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    const-string v5, "_data"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3882
    if-eqz v0, :cond_6

    .line 3883
    sget-object v5, Lcom/android/providers/media/MediaProvider;->mExternalStorageSdPath:Ljava/lang/String;

    if-eqz v5, :cond_8

    sget-object v5, Lcom/android/providers/media/MediaProvider;->mExternalStorageSdPath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3884
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    .line 3895
    :cond_6
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3897
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3898
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3901
    :try_start_1
    array-length v0, p2

    .line 3904
    :goto_2
    if-ge v1, v0, :cond_b

    .line 3905
    aget-object v5, p2, v1

    if-eqz v5, :cond_7

    .line 3907
    aget-object v5, p2, v1

    const-string v6, "_data"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3908
    if-eqz v5, :cond_7

    .line 3909
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3910
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_a

    .line 3911
    invoke-static {v5}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3912
    if-eqz v5, :cond_7

    .line 3913
    sget-object v6, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File name : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " did not existed"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3904
    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3887
    :cond_8
    :try_start_2
    sget-object v5, Lcom/android/providers/media/MediaProvider;->mExternalStoragePath:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3888
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    goto :goto_1

    .line 3895
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3891
    :cond_9
    const/4 v0, 0x3

    :try_start_3
    iput v0, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    .line 3892
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v5, "DB operation to unknown"

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3917
    :cond_a
    :try_start_4
    aget-object v5, p2, v1

    invoke-direct {p0, p1, v2, v5, v3}, Lcom/android/providers/media/MediaProvider;->insertInternal(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/util/ArrayList;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 3929
    :catchall_1
    move-exception v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3930
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "bulkInsert finished"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0

    .line 3923
    :cond_b
    :try_start_5
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSyncLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3924
    :try_start_6
    iget v2, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    if-lez v2, :cond_c

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 3926
    :goto_4
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/providers/media/MediaProvider;->mBulkInsertSync:I

    .line 3927
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 3929
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3930
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "bulkInsert finished"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3934
    invoke-direct {p0, v3}, Lcom/android/providers/media/MediaProvider;->notifyMtp(Ljava/util/ArrayList;)V

    .line 3936
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_0

    .line 3925
    :cond_c
    :try_start_7
    sget-object v2, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v5, "bulkInsert cancelled"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3927
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .parameter "method"
    .parameter "arg"
    .parameter "extras"

    .prologue
    .line 5810
    const-string v0, "unhide"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5811
    invoke-direct {p0, p2}, Lcom/android/providers/media/MediaProvider;->processRemovedNoMediaPath(Ljava/lang/String;)V

    .line 5812
    const/4 v0, 0x0

    return-object v0

    .line 5814
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 18

    .prologue
    .line 5414
    sget-object v4, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 5417
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 5418
    const/16 v5, 0x2710

    if-ne v13, v5, :cond_2

    .line 5419
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v5

    .line 5420
    if-nez v5, :cond_0

    .line 5421
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5424
    :cond_0
    invoke-virtual {v5}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 5425
    if-nez v5, :cond_1

    .line 5426
    const/4 v5, 0x0

    .line 5772
    :goto_0
    return v5

    .line 5428
    :cond_1
    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5429
    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5430
    const/4 v5, 0x0

    goto :goto_0

    .line 5431
    :cond_2
    const/16 v5, 0x7d0

    if-ne v13, v5, :cond_3

    .line 5432
    const-string v4, "faces"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/providers/media/MediaProvider;->deleteFacePerson(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 5433
    :cond_3
    const/16 v5, 0x7d1

    if-ne v13, v5, :cond_5

    .line 5434
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5435
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5439
    :goto_1
    const-string v5, "faces"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/android/providers/media/MediaProvider;->deleteFacePerson(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 5437
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 5440
    :cond_5
    const/16 v5, 0xbb8

    if-ne v13, v5, :cond_6

    .line 5441
    const-string v4, "persons"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/providers/media/MediaProvider;->deleteFacePerson(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 5442
    :cond_6
    const/16 v5, 0xbb9

    if-ne v13, v5, :cond_8

    .line 5443
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5444
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5448
    :goto_2
    const-string v5, "persons"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v5, v4, v2}, Lcom/android/providers/media/MediaProvider;->deleteFacePerson(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0

    .line 5446
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 5453
    :cond_8
    const/16 v4, 0x1f4

    if-ne v13, v4, :cond_b

    .line 5454
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    if-nez v4, :cond_9

    .line 5455
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 5457
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "content://media/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/audio"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v4

    .line 5459
    if-nez v4, :cond_a

    .line 5460
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "no database for scanned volume "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5466
    :goto_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    .line 5467
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 5462
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStopTime:J

    goto :goto_3

    .line 5470
    :cond_b
    const/16 v4, 0x12d

    if-ne v13, v4, :cond_c

    .line 5471
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->detachVolume(Landroid/net/Uri;)V

    .line 5472
    const/4 v4, 0x1

    :goto_4
    move v5, v4

    .line 5772
    goto/16 :goto_0

    .line 5473
    :cond_c
    const/16 v4, 0x2c1

    if-ne v13, v4, :cond_e

    .line 5474
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    monitor-enter v5

    .line 5475
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    if-eqz v4, :cond_d

    .line 5477
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/media/MediaProvider;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 5478
    const/4 v4, 0x1

    .line 5481
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;

    .line 5485
    :goto_5
    monitor-exit v5

    goto :goto_4

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 5483
    :cond_d
    const/4 v4, 0x0

    goto :goto_5

    .line 5487
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v14

    .line 5488
    if-nez v14, :cond_f

    .line 5489
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " match: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5638
    :cond_f
    iget v4, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    .line 5639
    invoke-virtual {v14}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 5641
    sget-object v15, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    monitor-enter v15

    .line 5642
    :try_start_1
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v13, v2, v5}, Lcom/android/providers/media/MediaProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V

    .line 5644
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    const-string v6, "files"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 5645
    const-string v5, "deletedata"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5646
    if-eqz v5, :cond_10

    const-string v6, "false"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    .line 5647
    :cond_10
    iget v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 5648
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sMediaTypeDataId:[Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 5651
    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v8, v5

    .line 5652
    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v17, v5

    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v17, v5

    .line 5653
    :cond_11
    :goto_6
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 5654
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    .line 5655
    const/4 v6, 0x1

    if-ne v5, v6, :cond_14

    .line 5656
    const/4 v12, 0x0

    .line 5658
    :try_start_2
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Llibcore/io/Os;->remove(Ljava/lang/String;)V

    .line 5659
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    .line 5660
    iget v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 5661
    const-string v5, "thumbnails"

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sDataOnlyColumn:[Ljava/lang/String;

    const-string v7, "image_id=?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Llibcore/io/ErrnoException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v5

    .line 5663
    :goto_7
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 5664
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Llibcore/io/Os;->remove(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4
    .catch Llibcore/io/ErrnoException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_7

    .line 5668
    :catch_0
    move-exception v6

    .line 5670
    :goto_8
    if-eqz v5, :cond_11

    .line 5671
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 5769
    :catchall_1
    move-exception v4

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 5666
    :cond_12
    :try_start_5
    iget v6, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    .line 5667
    const-string v6, "thumbnails"

    const-string v7, "image_id=?"

    invoke-virtual {v4, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Llibcore/io/ErrnoException; {:try_start_5 .. :try_end_5} :catch_0

    .line 5670
    if-eqz v5, :cond_11

    .line 5671
    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 5670
    :catchall_2
    move-exception v4

    :goto_9
    if-eqz v12, :cond_13

    .line 5671
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_13
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 5674
    :cond_14
    const/4 v6, 0x3

    if-ne v5, v6, :cond_15

    .line 5676
    :try_start_7
    sget-object v5, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Llibcore/io/Os;->remove(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Llibcore/io/ErrnoException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_6

    .line 5677
    :catch_1
    move-exception v5

    goto/16 :goto_6

    .line 5679
    :cond_15
    const/4 v6, 0x2

    if-ne v5, v6, :cond_17

    .line 5680
    :try_start_8
    iget-boolean v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-nez v5, :cond_11

    .line 5681
    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v5

    .line 5682
    const-string v5, "audio_genres_map"

    const-string v6, "audio_id=?"

    invoke-virtual {v4, v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5685
    const-string v5, "audio_playlists_map"

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sPlaylistIdPlayOrder:[Ljava/lang/String;

    const-string v7, "audio_id=?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 5688
    :goto_a
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 5689
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v9, 0x0

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v17, v6

    .line 5690
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v9, 0x1

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v17, v6

    .line 5691
    const-string v6, "UPDATE audio_playlists_map SET play_order=play_order-1 WHERE playlist_id=? AND play_order>?"

    move-object/from16 v0, v17

    invoke-virtual {v4, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 5696
    :cond_16
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 5697
    const-string v5, "audio_playlists_map"

    const-string v6, "audio_id=?"

    invoke-virtual {v4, v5, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_6

    .line 5699
    :cond_17
    const/4 v6, 0x4

    if-ne v5, v6, :cond_11

    goto/16 :goto_6

    .line 5704
    :cond_18
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 5708
    :cond_19
    sparse-switch v13, :sswitch_data_0

    .line 5749
    iget v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    .line 5750
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 5756
    :goto_b
    const-string v4, "notifyChange"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5757
    const-string v6, "disable"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 5758
    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 5713
    :sswitch_0
    const/4 v5, 0x1

    :try_start_9
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    .line 5714
    iget v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    .line 5715
    const-string v5, "files"

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result v5

    .line 5717
    const/4 v4, 0x0

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    goto :goto_b

    :catchall_3
    move-exception v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z

    throw v4

    .line 5721
    :sswitch_1
    iget v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    .line 5722
    const-string v5, "audio_genres_map"

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto :goto_b

    .line 5731
    :sswitch_2
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sDataOnlyColumn:[Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p3

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 5734
    if-eqz v5, :cond_1b

    .line 5735
    :goto_c
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result v6

    if-eqz v6, :cond_1a

    .line 5737
    :try_start_b
    sget-object v6, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Llibcore/io/Os;->remove(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Llibcore/io/ErrnoException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_c

    .line 5738
    :catch_2
    move-exception v6

    goto :goto_c

    .line 5741
    :cond_1a
    :try_start_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 5743
    :cond_1b
    iget v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumDeletes:I

    .line 5744
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v4, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_b

    .line 5766
    :cond_1c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5767
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://media/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 5768
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5769
    monitor-exit v15
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move v4, v5

    goto/16 :goto_4

    .line 5670
    :catchall_4
    move-exception v4

    move-object v12, v5

    goto/16 :goto_9

    .line 5668
    :catch_3
    move-exception v5

    move-object v5, v12

    goto/16 :goto_8

    .line 5708
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_2
        0x6c -> :sswitch_1
        0xca -> :sswitch_2
        0xcb -> :sswitch_2
        0x2be -> :sswitch_0
        0x2bf -> :sswitch_0
    .end sparse-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 7914
    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 7915
    .local v1, foo:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/media/MediaProvider$DatabaseHelper;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    .line 7916
    .local v0, dbh:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/providers/media/MediaProvider;->dump(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 7918
    .end local v0           #dbh:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 7919
    return-void
.end method

.method getAlbumArtOutputUri(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;JLandroid/net/Uri;)Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 6773
    .line 6776
    if-eqz p5, :cond_5

    .line 6777
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    move-object v0, p0

    move-object v1, p5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 6780
    if-eqz v1, :cond_3

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6781
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 6782
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->ensureFileExists(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    move-object v3, p5

    :cond_0
    move-object v0, v3

    .line 6789
    :goto_0
    if-eqz v1, :cond_1

    .line 6790
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 6794
    :cond_1
    :goto_1
    if-nez p5, :cond_2

    .line 6795
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 6796
    const-string v2, "album_id"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6798
    const/4 v2, 0x0

    :try_start_1
    const-string v3, ""

    const-string v4, "Android/data/com.android.providers.media/albumthumbs"

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/android/providers/media/MediaProvider;->ensureFile(ZLandroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 6799
    iget v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumInserts:I

    .line 6800
    const-string v2, "album_art"

    const-string v3, "_data"

    invoke-virtual {p2, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 6801
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 6802
    sget-object v3, Lcom/android/providers/media/MediaProvider;->ALBUMART_URI:Landroid/net/Uri;

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 6808
    :cond_2
    :goto_2
    return-object v0

    :cond_3
    move-object v0, v3

    move-object p5, v3

    .line 6786
    goto :goto_0

    .line 6789
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    .line 6790
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 6804
    :catch_0
    move-exception v1

    .line 6805
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v2, "error creating album thumb file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "url"

    .prologue
    const/4 v8, 0x1

    .line 3659
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3709
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3665
    :sswitch_0
    const/4 v6, 0x0

    .line 3667
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/android/providers/media/MediaProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3668
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 3669
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3670
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3671
    .local v7, mimeType:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3675
    if-eqz v6, :cond_1

    .line 3676
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3707
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #mimeType:Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v7

    .line 3675
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_2
    if-eqz v6, :cond_0

    .line 3676
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3675
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3676
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 3683
    .end local v6           #c:Landroid/database/Cursor;
    :sswitch_1
    const-string v7, "vnd.android.cursor.dir/image"

    goto :goto_1

    .line 3686
    :sswitch_2
    const-string v7, "image/jpeg"

    goto :goto_1

    .line 3691
    :sswitch_3
    const-string v7, "vnd.android.cursor.dir/audio"

    goto :goto_1

    .line 3695
    :sswitch_4
    const-string v7, "vnd.android.cursor.dir/genre"

    goto :goto_1

    .line 3698
    :sswitch_5
    const-string v7, "vnd.android.cursor.item/genre"

    goto :goto_1

    .line 3701
    :sswitch_6
    const-string v7, "vnd.android.cursor.dir/playlist"

    goto :goto_1

    .line 3704
    :sswitch_7
    const-string v7, "vnd.android.cursor.item/playlist"

    goto :goto_1

    .line 3707
    :sswitch_8
    const-string v7, "vnd.android.cursor.dir/video"

    goto :goto_1

    .line 3659
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x64 -> :sswitch_3
        0x65 -> :sswitch_0
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_7
        0x6a -> :sswitch_4
        0x6b -> :sswitch_5
        0x6c -> :sswitch_3
        0x6e -> :sswitch_6
        0x6f -> :sswitch_7
        0x70 -> :sswitch_3
        0x71 -> :sswitch_0
        0x78 -> :sswitch_2
        0xc8 -> :sswitch_8
        0xc9 -> :sswitch_0
        0x2bd -> :sswitch_0
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4005
    sget-object v0, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    .line 4011
    const/16 v0, 0x2710

    if-ne v3, v0, :cond_2

    .line 4012
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 4013
    if-nez v0, :cond_0

    .line 4014
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4017
    :cond_0
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 4018
    if-nez v2, :cond_1

    move-object v0, v1

    .line 4089
    :goto_0
    return-object v0

    .line 4020
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 4022
    const/4 v3, 0x3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4023
    invoke-virtual {v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move-object v0, v1

    .line 4024
    goto :goto_0

    .line 4025
    :cond_2
    const/16 v0, 0x7d0

    if-ne v3, v0, :cond_3

    .line 4026
    const-string v0, "faces"

    const-string v1, "face_data"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/providers/media/MediaProvider;->insertFacePerson(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 4027
    :cond_3
    const/16 v0, 0xbb8

    if-ne v3, v0, :cond_4

    .line 4028
    const-string v0, "persons"

    const-string v1, "name"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/providers/media/MediaProvider;->insertFacePerson(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 4031
    :cond_4
    const/16 v0, 0x1388

    if-ne v3, v0, :cond_5

    .line 4032
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert(): match@SMART_SORT_SCAN:uri=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), initialValues=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    const-string v0, "objects"

    const-string v1, "name"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/providers/media/MediaProvider;->insertSmartSortInfo(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 4034
    :cond_5
    const/16 v0, 0x1389

    if-ne v3, v0, :cond_6

    .line 4035
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert(): match@SMART_SORT_LIST:uri=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), initialValues=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4036
    const-string v0, "objects"

    const-string v1, "name"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/providers/media/MediaProvider;->insertSmartSortInfo(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 4037
    :cond_6
    const/16 v0, 0x138a

    if-ne v3, v0, :cond_7

    .line 4038
    sget-object v0, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert(): match@SMART_SORT_ID:uri=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), initialValues=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4039
    const-string v0, "objects"

    const-string v1, "name"

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/providers/media/MediaProvider;->insertSmartSortInfo(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 4042
    :cond_7
    const/16 v0, 0x3e8

    if-ne v3, v0, :cond_8

    .line 4043
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/media/MediaProvider;->insertMediaDBLog(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto/16 :goto_0

    .line 4045
    :cond_8
    const/16 v0, 0x3e9

    if-ne v3, v0, :cond_a

    .line 4046
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 4048
    if-nez v0, :cond_9

    .line 4049
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4052
    :cond_9
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4054
    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->restorePlaylistTableConfiguration(Landroid/database/sqlite/SQLiteDatabase;)V

    move-object v0, v1

    .line 4058
    goto/16 :goto_0

    .line 4061
    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4062
    invoke-direct {p0, p1, v3, p2, v4}, Lcom/android/providers/media/MediaProvider;->insertInternal(Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/util/ArrayList;)Landroid/net/Uri;

    move-result-object v2

    .line 4066
    const/16 v0, 0x6e

    if-ne v3, v0, :cond_b

    .line 4067
    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4068
    const-string v5, "now playing list 0123456789"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v2

    .line 4070
    goto/16 :goto_0

    .line 4075
    :cond_b
    invoke-direct {p0, v4}, Lcom/android/providers/media/MediaProvider;->notifyMtp(Ljava/util/ArrayList;)V

    .line 4078
    const-string v0, "notifyChange"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4079
    const-string v4, "disable"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, v2

    .line 4080
    goto/16 :goto_0

    .line 4086
    :cond_c
    if-eqz v2, :cond_d

    const/16 v0, 0x2be

    if-eq v3, v0, :cond_d

    .line 4087
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_d
    move-object v0, v2

    .line 4089
    goto/16 :goto_0
.end method

.method insertFacePerson(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .parameter "uri"
    .parameter "initialValues"
    .parameter "table"
    .parameter "nullColumnHack"

    .prologue
    const/4 v5, 0x0

    .line 3942
    const/4 v2, 0x0

    .line 3943
    .local v2, newUri:Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 3944
    .local v0, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v0, :cond_0

    .line 3945
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3948
    :cond_0
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3949
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v1, :cond_1

    .line 3958
    :goto_0
    return-object v5

    .line 3951
    :cond_1
    invoke-virtual {v1, p3, p4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 3952
    .local v3, rowId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-lez v6, :cond_2

    .line 3953
    invoke-static {p1, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 3955
    :cond_2
    if-eqz v2, :cond_3

    .line 3956
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_3
    move-object v5, v2

    .line 3958
    goto :goto_0
.end method

.method insertMediaDBLog(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3988
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 3989
    if-nez v0, :cond_0

    .line 3990
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3994
    :cond_0
    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3996
    if-nez v0, :cond_1

    .line 4000
    :goto_0
    return-object v2

    .line 3998
    :cond_1
    const-string v1, "title"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3999
    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider;->logToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0
.end method

.method insertSmartSortInfo(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 3965
    sget-object v1, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertSmartSortInfo():uri=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), table=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), initialValues=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), nullColumnHack=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3968
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1

    .line 3969
    if-nez v1, :cond_0

    .line 3970
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3973
    :cond_0
    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3974
    if-nez v1, :cond_1

    .line 3983
    :goto_0
    return-object v0

    .line 3976
    :cond_1
    invoke-virtual {v1, p3, p4, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 3977
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    .line 3978
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 3980
    :goto_1
    if-eqz v1, :cond_2

    .line 3981
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2
    move-object v0, v1

    .line 3983
    goto :goto_0

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method makeBestName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2c

    .line 7106
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_3

    .line 7118
    :cond_0
    :goto_0
    const-string v0, ", the"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ",the"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ", an"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ",an"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ", a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ",a"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7121
    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 7122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7126
    :cond_2
    return-object p1

    .line 7110
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    move-object p1, p2

    .line 7113
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    .line 895
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 897
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "_id"

    const-string v3, "audio.album_id AS _id"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "album"

    const-string v3, "album"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "album_key"

    const-string v3, "album_key"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 901
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "minyear"

    const-string v3, "MIN(year) AS minyear"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "maxyear"

    const-string v3, "MAX(year) AS maxyear"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "artist"

    const-string v3, "artist"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "artist_id"

    const-string v3, "artist"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "artist_key"

    const-string v3, "artist_key"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "numsongs"

    const-string v3, "count(*) AS numsongs"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    sget-object v1, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v2, "album_art"

    const-string v3, "album_art._data AS album_art"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mSearchColsBasic:[Ljava/lang/String;

    aget-object v2, v2, v6

    const-string v3, "%1"

    const v4, 0x7f040003

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    .line 916
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/providers/media/MediaProvider;->mDatabases:Ljava/util/HashMap;

    .line 917
    const-string v1, "internal"

    invoke-direct {p0, v1}, Lcom/android/providers/media/MediaProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    .line 920
    new-instance v1, Lcom/android/providers/media/ContentApp;

    invoke-direct {v1, v0}, Lcom/android/providers/media/ContentApp;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/media/MediaProvider;->mContentApp:Lcom/android/providers/media/ContentApp;

    .line 921
    new-instance v1, Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;

    invoke-direct {v1, v0}, Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/media/MediaProvider;->mPersonOpenHelper:Lcom/android/providers/media/MediaProvider$PersonDatabaseHelper;

    .line 924
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 925
    const-string v2, "file"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 926
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 928
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 929
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 931
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.app.action.UNMOUNT_SDCARD_ENCRYPTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 932
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mSecureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 934
    iput-boolean v5, p0, Lcom/android/providers/media/MediaProvider;->mCaseInsensitivePaths:Z

    .line 936
    const-string v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 938
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumePaths()[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/media/MediaProvider;->mExternalStoragePaths:[Ljava/lang/String;

    .line 942
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 943
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 944
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/media/MediaProvider;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 947
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/providers/media/MediaProvider;->mExternalStoragePath:Ljava/lang/String;

    .line 948
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 949
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 950
    aget-object v2, v1, v0

    .line 951
    const-string v3, "sd"

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 952
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/media/MediaProvider;->mExternalStorageSdPath:Ljava/lang/String;

    .line 956
    :cond_0
    invoke-static {}, Landroid/media/MediaScanner;->initMutex()V

    .line 959
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 960
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 962
    :cond_1
    const-string v0, "external"

    invoke-direct {p0, v0}, Lcom/android/providers/media/MediaProvider;->attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    .line 964
    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->FLAG_USE_DOCUMENTCLASSIFIER:Z

    if-ne v0, v5, :cond_2

    .line 965
    new-instance v0, Lcom/android/providers/media/SmartSortContentApp;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/media/SmartSortContentApp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/media/MediaProvider;->mSmartSortContentApp:Lcom/android/providers/media/SmartSortContentApp;

    .line 966
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 967
    const-string v1, "com.android.providers.media.SMART_SORT_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 968
    const-string v1, "com.android.providers.media.SMART_SORT_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 969
    const-string v1, "com.android.providers.media.SMART_SORT_PROGRESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider;->mSmartSortBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 974
    :cond_2
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "thumbs thread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 975
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 976
    new-instance v1, Lcom/android/providers/media/MediaProvider$7;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/providers/media/MediaProvider$7;-><init>(Lcom/android/providers/media/MediaProvider;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/providers/media/MediaProvider;->mThumbHandler:Landroid/os/Handler;

    .line 1034
    return v5

    .line 949
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 25
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 6402
    const/16 v22, 0x0

    .line 6404
    .local v22, pfd:Landroid/os/ParcelFileDescriptor;
    sget-object v5, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v7, 0x79

    if-ne v5, v7, :cond_3

    .line 6406
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v19

    .line 6407
    .local v19, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v19, :cond_0

    .line 6408
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t open database for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 6410
    :cond_0
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 6411
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v4, :cond_1

    .line 6412
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t open database for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 6414
    :cond_1
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 6415
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 6416
    .local v24, songid:I
    const-string v5, "audio_meta"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6417
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 6418
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, "_data"

    aput-object v9, v5, v7

    const/4 v7, 0x1

    const-string v9, "album_id"

    aput-object v9, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 6423
    .local v18, c:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6424
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 6425
    .local v8, audiopath:Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 6429
    .local v17, albumid:I
    sget-object v5, Lcom/android/providers/media/MediaProvider;->ALBUMART_URI:Landroid/net/Uri;

    move/from16 v0, v17

    int-to-long v9, v0

    invoke-static {v5, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v21

    .line 6431
    .local v21, newUri:Landroid/net/Uri;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/MediaProvider;->openFileAndEnforcePathPermissionsHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 6437
    .end local v8           #audiopath:Ljava/lang/String;
    .end local v17           #albumid:I
    .end local v21           #newUri:Landroid/net/Uri;
    :cond_2
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    move-object/from16 v23, v22

    .line 6477
    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v18           #c:Landroid/database/Cursor;
    .end local v19           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v22           #pfd:Landroid/os/ParcelFileDescriptor;
    .end local v24           #songid:I
    .local v23, pfd:Landroid/os/ParcelFileDescriptor;
    :goto_1
    return-object v23

    .line 6432
    .end local v23           #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #audiopath:Ljava/lang/String;
    .restart local v17       #albumid:I
    .restart local v18       #c:Landroid/database/Cursor;
    .restart local v19       #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .restart local v21       #newUri:Landroid/net/Uri;
    .restart local v22       #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v24       #songid:I
    :catch_0
    move-exception v20

    .line 6434
    .local v20, ex:Ljava/io/FileNotFoundException;
    move/from16 v0, v17

    int-to-long v9, v0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, v19

    move-object v7, v4

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/media/MediaProvider;->getThumb(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v22

    goto :goto_0

    .line 6442
    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #audiopath:Ljava/lang/String;
    .end local v17           #albumid:I
    .end local v18           #c:Landroid/database/Cursor;
    .end local v19           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v20           #ex:Ljava/io/FileNotFoundException;
    .end local v21           #newUri:Landroid/net/Uri;
    .end local v24           #songid:I
    :cond_3
    :try_start_1
    invoke-direct/range {p0 .. p2}, Lcom/android/providers/media/MediaProvider;->openFileAndEnforcePathPermissionsHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v22

    :cond_4
    move-object/from16 v23, v22

    .line 6477
    .end local v22           #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v23       #pfd:Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 6443
    .end local v23           #pfd:Landroid/os/ParcelFileDescriptor;
    .restart local v22       #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v20

    .line 6444
    .restart local v20       #ex:Ljava/io/FileNotFoundException;
    const-string v5, "w"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 6446
    throw v20

    .line 6449
    :cond_5
    sget-object v5, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/16 v7, 0x78

    if-ne v5, v7, :cond_9

    .line 6451
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v6

    .line 6452
    .local v6, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v6, :cond_6

    .line 6453
    throw v20

    .line 6455
    :cond_6
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 6456
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez v4, :cond_7

    .line 6457
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t open database for "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 6459
    :cond_7
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 6460
    .restart local v3       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 6461
    .restart local v17       #albumid:I
    const-string v5, "audio_meta"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 6462
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "album_id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 6463
    const/4 v5, 0x1

    new-array v11, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "_data"

    aput-object v7, v11, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-string v16, "track"

    move-object v9, v3

    move-object v10, v4

    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 6467
    .restart local v18       #c:Landroid/database/Cursor;
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 6468
    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 6469
    .restart local v8       #audiopath:Ljava/lang/String;
    move/from16 v0, v17

    int-to-long v9, v0

    move-object/from16 v5, p0

    move-object v7, v4

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/providers/media/MediaProvider;->getThumb(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;JLandroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v22

    .line 6471
    .end local v8           #audiopath:Ljava/lang/String;
    :cond_8
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 6473
    .end local v3           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v6           #database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .end local v17           #albumid:I
    .end local v18           #c:Landroid/database/Cursor;
    :cond_9
    if-nez v22, :cond_4

    .line 6474
    throw v20
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 17

    .prologue
    .line 3014
    sget-object v4, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    .line 3015
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3019
    const/16 v4, 0x1f4

    if-ne v14, v4, :cond_2

    .line 3020
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 3021
    const/4 v4, 0x0

    .line 3582
    :cond_0
    :goto_0
    return-object v4

    .line 3024
    :cond_1
    new-instance v4, Landroid/database/MatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "volume"

    aput-object v7, v5, v6

    invoke-direct {v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3025
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/media/MediaProvider;->mMediaScannerVolume:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 3033
    :cond_2
    const/16 v4, 0x258

    if-ne v14, v4, :cond_3

    .line 3034
    new-instance v4, Landroid/database/MatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "fsid"

    aput-object v7, v5, v6

    invoke-direct {v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3035
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/providers/media/MediaProvider;->mVolumeId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 3039
    :cond_3
    const/16 v4, 0x259

    if-ne v14, v4, :cond_4

    .line 3040
    new-instance v4, Landroid/database/MatrixCursor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "version"

    aput-object v7, v5, v6

    invoke-direct {v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3041
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/providers/media/MediaProvider;->getDatabaseVersion(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 3046
    :cond_4
    const/16 v4, 0x2710

    if-ne v14, v4, :cond_7

    .line 3047
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v4

    .line 3048
    if-nez v4, :cond_5

    .line 3049
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3052
    :cond_5
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 3053
    if-nez v5, :cond_6

    .line 3054
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3055
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 3057
    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3058
    move-object/from16 v0, p4

    invoke-virtual {v5, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 3059
    if-eqz v4, :cond_0

    .line 3060
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v4, v5, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 3065
    :cond_7
    const/16 v4, 0xfa0

    if-ne v14, v4, :cond_a

    .line 3066
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mContentApp:Lcom/android/providers/media/ContentApp;

    if-eqz v4, :cond_8

    .line 3067
    const-string v4, "1"

    const-string v5, "cancel"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3068
    if-eqz v4, :cond_9

    .line 3069
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mContentApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v4}, Lcom/android/providers/media/ContentApp;->stopScan()V

    .line 3074
    :cond_8
    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3071
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mContentApp:Lcom/android/providers/media/ContentApp;

    invoke-virtual {v4}, Lcom/android/providers/media/ContentApp;->startScan()V

    goto :goto_1

    .line 3077
    :cond_a
    const/16 v4, 0xfa2

    if-ne v14, v4, :cond_b

    .line 3078
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getSimilarPersons(Landroid/net/Uri;)V

    .line 3079
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3082
    :cond_b
    const/16 v4, 0xfa1

    if-ne v14, v4, :cond_c

    .line 3083
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->recomendPesonRequest(Landroid/net/Uri;)V

    .line 3084
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3086
    :cond_c
    const/4 v10, 0x0

    .line 3087
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v7

    .line 3090
    sget-boolean v4, Lcom/android/providers/media/MediaProvider;->FLAG_USE_DOCUMENTCLASSIFIER:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    .line 3091
    const/16 v4, 0x1388

    if-ne v14, v4, :cond_d

    .line 3092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider;->mSmartSortContentApp:Lcom/android/providers/media/SmartSortContentApp;

    invoke-virtual {v4}, Lcom/android/providers/media/SmartSortContentApp;->startScan()V

    .line 3094
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3098
    :cond_d
    if-nez v7, :cond_e

    .line 3099
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3101
    :cond_e
    iget v4, v7, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v7, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 3102
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 3103
    if-nez v13, :cond_f

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3107
    :cond_f
    if-eqz p5, :cond_10

    const-string v4, "ljw"

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_10

    .line 3108
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/media/MediaProvider;->rawQuery(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    .line 3112
    :cond_10
    new-instance v5, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v5}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3113
    const-string v4, "limit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 3114
    const-string v4, "filter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3115
    const/4 v4, 0x0

    .line 3116
    if-eqz v6, :cond_12

    .line 3117
    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 3118
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 3119
    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 3120
    array-length v4, v8

    new-array v6, v4, [Ljava/lang/String;

    .line 3121
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v4

    .line 3122
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/text/Collator;->setStrength(I)V

    .line 3123
    const/4 v4, 0x0

    :goto_2
    array-length v9, v8

    if-ge v4, v9, :cond_13

    .line 3127
    aget-object v9, v8, v4

    invoke-static {v9}, Lcom/android/providers/media/SecDatabaseUtils;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3129
    if-eqz v9, :cond_11

    .line 3130
    const-string v12, "\\"

    const-string v16, "\\\\"

    move-object/from16 v0, v16

    invoke-virtual {v9, v12, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 3131
    const-string v12, "%"

    const-string v16, "\\%"

    move-object/from16 v0, v16

    invoke-virtual {v9, v12, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 3132
    const-string v12, "_"

    const-string v16, "\\_"

    move-object/from16 v0, v16

    invoke-virtual {v9, v12, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 3133
    aput-object v9, v6, v4

    .line 3123
    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_12
    move-object v6, v4

    .line 3138
    :cond_13
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 3139
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 3142
    :cond_14
    const/4 v9, 0x0

    .line 3144
    sparse-switch v14, :sswitch_data_0

    .line 3570
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3146
    :sswitch_0
    const-string v4, "images"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3147
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 3148
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 3575
    :cond_15
    :goto_3
    :sswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v11, v1}, Lcom/android/providers/media/MediaProvider;->combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    move-object v6, v13

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v12, p5

    move-object v13, v15

    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 3578
    if-eqz v4, :cond_0

    .line 3579
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v4, v5, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 3159
    :sswitch_2
    const-string v4, "images"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3160
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 3161
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 3165
    :cond_16
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3166
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 3170
    :sswitch_3
    const/4 v9, 0x1

    .line 3172
    :sswitch_4
    const-string v7, "thumbnails"

    const-string v8, "image_id"

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->queryThumbnail(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_15

    .line 3173
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3178
    :sswitch_5
    if-eqz p2, :cond_18

    move-object/from16 v0, p2

    array-length v4, v0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_18

    if-nez p4, :cond_18

    if-eqz p3, :cond_17

    const-string v4, "is_music=1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v4, "is_podcast=1"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_17
    const/4 v4, 0x0

    aget-object v4, p2, v4

    const-string v7, "count(*)"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    if-eqz v6, :cond_18

    .line 3184
    const-string v4, "audio_meta"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3186
    :cond_18
    const-string v4, "audio"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3187
    const/4 v4, 0x0

    :goto_4
    if-eqz v6, :cond_15

    array-length v7, v6

    if-ge v4, v7, :cond_15

    .line 3188
    if-lez v4, :cond_19

    .line 3189
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3191
    :cond_19
    const-string v7, "artist_key||album_key||title_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3194
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3187
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 3208
    :sswitch_6
    const-string v4, "audio"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3209
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3210
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3214
    :sswitch_7
    const-string v4, "audio_genres"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3215
    const-string v4, "_id IN (SELECT genre_id FROM audio_genres_map WHERE audio_id=?)"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3217
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3221
    :sswitch_8
    const-string v4, "audio_genres"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3222
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3223
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x5

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3227
    :sswitch_9
    const-string v4, "audio_playlists"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3228
    const-string v4, "_id IN (SELECT playlist_id FROM audio_playlists_map WHERE audio_id=?)"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3230
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3234
    :sswitch_a
    const-string v4, "audio_playlists"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3235
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3236
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x5

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3240
    :sswitch_b
    const-string v4, "audio_genres"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3244
    :sswitch_c
    const-string v4, "audio_genres"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3245
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3246
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3255
    :sswitch_d
    if-nez v6, :cond_1d

    if-eqz p2, :cond_1d

    if-eqz p3, :cond_1a

    const-string v4, "genre_id=?"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    :cond_1a
    const/4 v7, 0x1

    .line 3257
    :goto_5
    if-eqz p2, :cond_1e

    .line 3258
    const/4 v4, 0x0

    :goto_6
    move-object/from16 v0, p2

    array-length v8, v0

    if-ge v4, v8, :cond_1e

    .line 3259
    aget-object v8, p2, v4

    .line 3260
    const-string v9, "_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 3265
    const/4 v7, 0x0

    .line 3267
    :cond_1b
    if-eqz v7, :cond_1c

    const-string v9, "audio_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1c

    const-string v9, "genre_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 3269
    const/4 v7, 0x0

    .line 3258
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 3255
    :cond_1d
    const/4 v7, 0x0

    goto :goto_5

    .line 3273
    :cond_1e
    if-eqz v7, :cond_1f

    .line 3274
    const-string v4, "audio_genres_map_noid"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3275
    const/16 v4, 0x6c

    if-ne v14, v4, :cond_15

    .line 3276
    const-string v4, "genre_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3277
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3280
    :cond_1f
    const-string v4, "audio_genres_map_noid, audio"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3281
    const-string v4, "audio._id = audio_id"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3282
    const/16 v4, 0x6c

    if-ne v14, v4, :cond_20

    .line 3283
    const-string v4, " AND genre_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3284
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x3

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3286
    :cond_20
    const/4 v4, 0x0

    :goto_7
    if-eqz v6, :cond_15

    array-length v7, v6

    if-ge v4, v7, :cond_15

    .line 3287
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3288
    const-string v7, "artist_key||album_key||title_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3292
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3286
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 3299
    :sswitch_e
    const-string v4, "audio_playlists"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3302
    const-string v4, "secFilter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3304
    const-string v6, "include"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 3305
    const-string v4, "name <> \'now playing list 0123456789\' "

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3309
    :cond_21
    const-string v4, "audio_playlists"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3313
    :sswitch_f
    const-string v4, "audio_playlists"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3314
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3315
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3323
    :sswitch_10
    if-nez v6, :cond_25

    if-eqz p2, :cond_25

    if-eqz p3, :cond_22

    const-string v4, "playlist_id=?"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_22
    const/4 v7, 0x1

    .line 3325
    :goto_8
    if-eqz p2, :cond_26

    .line 3326
    const/4 v4, 0x0

    :goto_9
    move-object/from16 v0, p2

    array-length v8, v0

    if-ge v4, v8, :cond_26

    .line 3327
    aget-object v8, p2, v4

    .line 3328
    if-eqz v7, :cond_23

    const-string v9, "audio_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_23

    const-string v9, "playlist_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_23

    const-string v9, "play_order"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_23

    .line 3330
    const/4 v7, 0x0

    .line 3332
    :cond_23
    const-string v9, "_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    .line 3333
    const-string v8, "audio_playlists_map._id AS _id"

    aput-object v8, p2, v4

    .line 3326
    :cond_24
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 3323
    :cond_25
    const/4 v7, 0x0

    goto :goto_8

    .line 3337
    :cond_26
    if-eqz v7, :cond_28

    .line 3338
    const-string v4, "audio_playlists_map"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3339
    const-string v4, "playlist_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3340
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3354
    :cond_27
    const/16 v4, 0x71

    if-ne v14, v4, :cond_15

    .line 3355
    const-string v4, " AND audio_playlists_map._id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3356
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x5

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3342
    :cond_28
    const-string v4, "audio_playlists_map, audio"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3343
    const-string v4, "audio._id = audio_id AND playlist_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3344
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x3

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3345
    const/4 v4, 0x0

    :goto_a
    if-eqz v6, :cond_27

    array-length v7, v6

    if-ge v4, v7, :cond_27

    .line 3346
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3347
    const-string v7, "artist_key||album_key||title_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3351
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3345
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 3362
    :sswitch_11
    const-string v4, "music_years_view"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3366
    :sswitch_12
    const-string v4, "music_composers_view"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3370
    :sswitch_13
    const-string v4, "music_genres_view"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3374
    :sswitch_14
    const-string v4, "music_artist_info"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3378
    :sswitch_15
    const-string v4, "music_album_info"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3382
    :sswitch_16
    const-string v4, "music_folders_view"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3387
    :sswitch_17
    const-string v4, "video"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3394
    :sswitch_18
    const-string v4, "video"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3395
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3396
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3400
    :sswitch_19
    const/4 v9, 0x1

    .line 3402
    :sswitch_1a
    const-string v7, "videothumbnails"

    const-string v8, "video_id"

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->queryThumbnail(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_15

    .line 3403
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 3408
    :sswitch_1b
    if-eqz p2, :cond_2a

    move-object/from16 v0, p2

    array-length v4, v0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2a

    if-nez p4, :cond_2a

    if-eqz p3, :cond_29

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2a

    :cond_29
    const/4 v4, 0x0

    aget-object v4, p2, v4

    const-string v7, "count(*)"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    if-eqz v6, :cond_2a

    .line 3413
    const-string v4, "audio_meta"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3414
    const/4 v4, 0x0

    const-string v6, "count(distinct artist_id)"

    aput-object v6, p2, v4

    .line 3415
    const-string v4, "is_music=1"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 3417
    :cond_2a
    const-string v4, "artist_info"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3418
    const/4 v4, 0x0

    :goto_b
    if-eqz v6, :cond_15

    array-length v7, v6

    if-ge v4, v7, :cond_15

    .line 3419
    if-lez v4, :cond_2b

    .line 3420
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3422
    :cond_2b
    const-string v7, "artist_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3424
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3418
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 3430
    :sswitch_1c
    const-string v4, "artist_info"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3431
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3432
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3436
    :sswitch_1d
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x3

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3437
    const-string v7, "audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3439
    const-string v7, "is_music=1 AND audio.album_id IN (SELECT album_id FROM artists_albums_map WHERE artist_id=?)"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3441
    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3442
    const/4 v7, 0x0

    :goto_c
    if-eqz v6, :cond_2c

    array-length v8, v6

    if-ge v7, v8, :cond_2c

    .line 3443
    const-string v8, " AND "

    invoke-virtual {v5, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3444
    const-string v8, "artist_key||album_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v5, v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3447
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v11, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3442
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 3449
    :cond_2c
    const-string v10, "audio.album_id"

    .line 3450
    sget-object v6, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    const-string v7, "numsongs_by_artist"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "count(CASE WHEN artist_id=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " THEN \'foo\' ELSE NULL END) AS "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "numsongs_by_artist"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3453
    sget-object v4, Lcom/android/providers/media/MediaProvider;->sArtistAlbumsMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_3

    .line 3457
    :sswitch_1e
    if-eqz p2, :cond_2e

    move-object/from16 v0, p2

    array-length v4, v0

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2e

    if-nez p4, :cond_2e

    if-eqz p3, :cond_2d

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2e

    :cond_2d
    const/4 v4, 0x0

    aget-object v4, p2, v4

    const-string v7, "count(*)"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e

    if-eqz v6, :cond_2e

    .line 3462
    const-string v4, "audio_meta"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3463
    const/4 v4, 0x0

    const-string v6, "count(distinct album_id)"

    aput-object v6, p2, v4

    .line 3464
    const-string v4, "is_music=1"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 3466
    :cond_2e
    const-string v4, "album_info"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3467
    const/4 v4, 0x0

    :goto_d
    if-eqz v6, :cond_15

    array-length v7, v6

    if-ge v4, v7, :cond_15

    .line 3468
    if-lez v4, :cond_2f

    .line 3469
    const-string v7, " AND "

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3471
    :cond_2f
    const-string v7, "artist_key||album_key LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v5, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3474
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3467
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 3480
    :sswitch_1f
    const-string v4, "album_info"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3481
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3482
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3486
    :sswitch_20
    const-string v4, "album_art"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3487
    const-string v4, "album_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3488
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 3492
    :sswitch_21
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "Legacy media search Uri used. Please update your code."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    :sswitch_22
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v11, v1}, Lcom/android/providers/media/MediaProvider;->combine(Ljava/util/List;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v6, p0

    move-object v7, v13

    move-object v8, v5

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v13, p5

    invoke-direct/range {v6 .. v15}, Lcom/android/providers/media/MediaProvider;->doAudioSearch(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    .line 3501
    :sswitch_23
    const-string v4, "_id=?"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3502
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3506
    :sswitch_24
    const-string v4, "files"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3510
    :sswitch_25
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3511
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13, v4}, Lcom/android/providers/media/MediaProvider;->getObjectReferences(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    move-result-object v4

    goto/16 :goto_0

    .line 3515
    :sswitch_26
    const-string v4, "faces"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3516
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 3517
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 3518
    :cond_30
    const-string v4, "image_id  in (select _id from files where media_type=1 and face_count<>-1)"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 3521
    :sswitch_27
    const-string v4, "faces"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3522
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 3523
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 3524
    :cond_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 3527
    :sswitch_28
    const-string v4, "persons"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3528
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 3529
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_3

    .line 3532
    :sswitch_29
    const-string v4, "persons"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3533
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 3534
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 3535
    :cond_32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 3540
    :sswitch_2a
    const-string v4, "objects_info"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3541
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 3542
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_3

    .line 3551
    :sswitch_2b
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "MediaDB own log is requested"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3552
    const-string v4, "log"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 3556
    :sswitch_2c
    const-string v4, "contextual_tags"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3557
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    .line 3558
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    goto/16 :goto_3

    .line 3562
    :sswitch_2d
    const-string v4, "contextual_tags"

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3563
    const-string v4, "distinct"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 3564
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 3565
    :cond_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v7, 0x2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 3144
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_3
        0x64 -> :sswitch_5
        0x65 -> :sswitch_6
        0x66 -> :sswitch_7
        0x67 -> :sswitch_8
        0x68 -> :sswitch_9
        0x69 -> :sswitch_a
        0x6a -> :sswitch_b
        0x6b -> :sswitch_c
        0x6c -> :sswitch_d
        0x6d -> :sswitch_d
        0x6e -> :sswitch_e
        0x6f -> :sswitch_f
        0x70 -> :sswitch_10
        0x71 -> :sswitch_10
        0x72 -> :sswitch_1b
        0x73 -> :sswitch_1c
        0x74 -> :sswitch_1e
        0x75 -> :sswitch_1f
        0x76 -> :sswitch_1d
        0x78 -> :sswitch_20
        0x83 -> :sswitch_11
        0x84 -> :sswitch_12
        0x85 -> :sswitch_13
        0x86 -> :sswitch_14
        0x87 -> :sswitch_15
        0x88 -> :sswitch_16
        0xc8 -> :sswitch_17
        0xc9 -> :sswitch_18
        0xca -> :sswitch_1a
        0xcb -> :sswitch_19
        0x190 -> :sswitch_21
        0x191 -> :sswitch_22
        0x192 -> :sswitch_22
        0x2bc -> :sswitch_24
        0x2bd -> :sswitch_23
        0x2be -> :sswitch_24
        0x2bf -> :sswitch_23
        0x2c0 -> :sswitch_25
        0x3e8 -> :sswitch_2b
        0x7d0 -> :sswitch_26
        0x7d1 -> :sswitch_27
        0xbb8 -> :sswitch_28
        0xbb9 -> :sswitch_29
        0x1389 -> :sswitch_2a
        0x138a -> :sswitch_1
        0x1770 -> :sswitch_2c
        0x1771 -> :sswitch_2d
    .end sparse-switch
.end method

.method public rawQuery(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "uri"
    .parameter "query"
    .parameter "args"

    .prologue
    .line 2999
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    .line 3002
    .local v0, database:Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    if-nez v0, :cond_0

    .line 3003
    const/4 v2, 0x0

    .line 3006
    :goto_0
    return-object v2

    .line 3005
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3006
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 31

    .prologue
    .line 5821
    const/16 v26, 0x1

    .line 5824
    sget-object v4, Lcom/android/providers/media/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v27

    .line 5825
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 5826
    const/16 v5, 0x2710

    move/from16 v0, v27

    if-ne v0, v5, :cond_2

    .line 5827
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUriEx(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v5

    .line 5828
    if-nez v5, :cond_0

    .line 5829
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5832
    :cond_0
    invoke-virtual {v5}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 5833
    if-nez v5, :cond_1

    .line 5834
    const/4 v4, 0x0

    .line 6258
    :goto_0
    return v4

    .line 5836
    :cond_1
    const/4 v6, 0x3

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5837
    invoke-virtual {v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5838
    const/4 v4, 0x0

    goto :goto_0

    .line 5839
    :cond_2
    const/16 v5, 0x7d0

    move/from16 v0, v27

    if-ne v0, v5, :cond_3

    .line 5840
    const-string v6, "faces"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->updateFacePerson(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 5842
    :cond_3
    const/16 v5, 0x7d1

    move/from16 v0, v27

    if-ne v0, v5, :cond_5

    .line 5843
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5844
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5848
    :goto_1
    const-string v6, "faces"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->updateFacePerson(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 5846
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 5850
    :cond_5
    const/16 v5, 0xbb8

    move/from16 v0, v27

    if-ne v0, v5, :cond_6

    .line 5851
    const-string v6, "persons"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->updateFacePerson(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 5853
    :cond_6
    const/16 v5, 0xbb9

    move/from16 v0, v27

    if-ne v0, v5, :cond_8

    .line 5854
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5855
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5859
    :goto_2
    const-string v6, "persons"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->updateFacePerson(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 5857
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 5865
    :cond_8
    const/16 v4, 0x1388

    move/from16 v0, v27

    if-ne v0, v4, :cond_9

    .line 5866
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update(): match@SMART_SORT_SCAN:uri=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), userWhere=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), initialValues=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 5867
    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->updateSmartSortInfo(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 5869
    :cond_9
    const/16 v4, 0x1389

    move/from16 v0, v27

    if-ne v0, v4, :cond_a

    .line 5870
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update(): match@SMART_SORT_LIST:uri=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), userWhere=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), initialValues=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 5871
    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->updateSmartSortInfo(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 5873
    :cond_a
    const/16 v4, 0x138a

    move/from16 v0, v27

    if-ne v0, v4, :cond_b

    .line 5874
    sget-object v4, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update(): match@SMART_SORT_ID:uri=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), userWhere=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), initialValues=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    .line 5875
    invoke-direct/range {v4 .. v9}, Lcom/android/providers/media/MediaProvider;->updateSmartSortInfo(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    .line 5880
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/media/MediaProvider;->getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v28

    .line 5881
    if-nez v28, :cond_c

    .line 5882
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown URI: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5885
    :cond_c
    move-object/from16 v0, v28

    iget v4, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v28

    iput v4, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 5887
    invoke-virtual/range {v28 .. v28}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 5889
    const/4 v5, 0x0

    .line 5890
    if-eqz p2, :cond_37

    .line 5891
    const-string v5, "genre"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5892
    const-string v6, "genre"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move-object/from16 v25, v5

    .line 5895
    :goto_3
    sget-object v29, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    monitor-enter v29

    .line 5896
    :try_start_0
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/providers/media/MediaProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;)V

    .line 5901
    const/16 v5, 0x2be

    move/from16 v0, v27

    if-eq v0, v5, :cond_d

    const/16 v5, 0x2bf

    move/from16 v0, v27

    if-ne v0, v5, :cond_14

    :cond_d
    if-eqz p2, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_14

    .line 5903
    const/4 v12, 0x0

    .line 5904
    const-string v5, "_data"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 5905
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    invoke-virtual {v5, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5907
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5908
    if-eqz v13, :cond_13

    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 5909
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v28

    iput v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 5910
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->PATH_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 5913
    if-eqz v7, :cond_36

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 5914
    const/4 v5, 0x1

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    move-object v6, v5

    .line 5917
    :goto_4
    if-eqz v7, :cond_e

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5919
    :cond_e
    if-eqz v6, :cond_14

    .line 5920
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5922
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v28

    iput v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 5923
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 5925
    if-lez v5, :cond_f

    .line 5927
    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v13, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v8

    .line 5929
    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v28

    iput v6, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 5930
    const-string v6, "UPDATE files SET _data=?1||SUBSTR(_data, ?2) WHERE _data LIKE ?3 AND lower(substr(_data,1,?4))=lower(?5);"

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5938
    :cond_f
    if-lez v5, :cond_10

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v6

    if-nez v6, :cond_10

    .line 5939
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 5941
    :cond_10
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 5943
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4, v13}, Lcom/android/providers/media/MediaProvider;->processNewNoMediaPath(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 5945
    :cond_11
    monitor-exit v29

    move v4, v5

    goto/16 :goto_0

    .line 5917
    :catchall_0
    move-exception v4

    if-eqz v7, :cond_12

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_12
    throw v4

    .line 6242
    :catchall_1
    move-exception v4

    monitor-exit v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 5947
    :cond_13
    if-eqz v13, :cond_14

    :try_start_3
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "/.nomedia"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 5948
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4, v13}, Lcom/android/providers/media/MediaProvider;->processNewNoMediaPath(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 5952
    :cond_14
    sparse-switch v27, :sswitch_data_0

    .line 6237
    :cond_15
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v28

    iput v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 6238
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    move/from16 v6, v26

    .line 6242
    :goto_5
    monitor-exit v29
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6245
    const-string v7, "notifyChange"

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 6246
    const-string v8, "disable"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    move v4, v5

    .line 6247
    goto/16 :goto_0

    .line 5956
    :sswitch_0
    :try_start_4
    new-instance v30, Landroid/content/ContentValues;

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 5957
    const-string v5, "album_artist"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 5958
    const-string v5, "compilation"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 5959
    const-string v5, "compilation"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5963
    const-string v5, "artist"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5964
    const-string v5, "artist"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5965
    if-eqz v11, :cond_16

    .line 5967
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Ljava/util/HashMap;

    move-object/from16 v16, v0

    .line 5968
    monitor-enter v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5969
    :try_start_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 5970
    if-nez v5, :cond_20

    .line 5971
    const-string v8, "artists"

    const-string v9, "artist_key"

    const-string v10, "artist"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, v28

    move-object v7, v4

    move-object v12, v11

    move-object/from16 v17, p1

    invoke-direct/range {v5 .. v17}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v5

    .line 5977
    :goto_6
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 5978
    :try_start_6
    const-string v7, "artist_id"

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5982
    :cond_16
    const-string v5, "album"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5983
    const-string v5, "album"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5984
    if-eqz v12, :cond_18

    .line 5985
    const-string v5, "_data"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 5986
    const/16 v21, 0x0

    .line 5987
    if-eqz v18, :cond_21

    .line 5988
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->hashCode()I

    move-result v21

    .line 6028
    :cond_17
    :goto_7
    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v18

    .line 6030
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    .line 6031
    monitor-enter v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 6032
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 6033
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 6034
    if-nez v5, :cond_26

    .line 6035
    const-string v15, "albums"

    const-string v16, "album_key"

    const-string v17, "album"

    move-object/from16 v12, p0

    move-object/from16 v13, v28

    move-object v14, v4

    move-object/from16 v22, v11

    move-object/from16 v24, p1

    invoke-direct/range {v12 .. v24}, Lcom/android/providers/media/MediaProvider;->getKeyIdForName(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/net/Uri;)J

    move-result-wide v5

    .line 6041
    :goto_8
    monitor-exit v23
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 6042
    :try_start_8
    const-string v7, "album_id"

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6046
    :cond_18
    const-string v5, "title_key"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 6048
    const-string v5, "title"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6049
    if-eqz v5, :cond_19

    .line 6050
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6055
    const-string v6, "title_key"

    invoke-static {v5}, Lcom/android/providers/media/SecDatabaseUtils;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6060
    const-string v6, "title"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 6061
    const-string v6, "title"

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6065
    :cond_19
    const-string v5, "_data"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 6066
    const-string v5, "_data"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6067
    if-eqz v5, :cond_1a

    .line 6076
    const-string v6, "bucket_id"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 6077
    const-string v6, "bucket_display_name"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 6078
    move-object/from16 v0, v30

    invoke-static {v5, v0}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 6084
    :cond_1a
    const-string v5, "composer"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 6085
    const-string v5, "composer"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6086
    const-string v6, "composer"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 6087
    if-eqz v5, :cond_27

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_27

    .line 6089
    :goto_9
    const-string v6, "composer"

    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6093
    :cond_1b
    const-string v5, "year"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 6094
    const-string v5, "year"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6095
    const/4 v5, 0x0

    .line 6096
    if-eqz v6, :cond_35

    .line 6097
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v6, v5

    .line 6098
    :goto_a
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 6100
    if-eqz v5, :cond_1c

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x4

    if-le v7, v8, :cond_1c

    .line 6101
    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 6103
    :cond_1c
    if-eqz v5, :cond_1d

    .line 6104
    const-string v7, "year_name"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x76c

    if-lt v8, v9, :cond_28

    if-eqz v6, :cond_28

    if-eqz v5, :cond_28

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_28

    :goto_b
    move-object/from16 v0, v30

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6110
    :cond_1d
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->updateSoundField(Landroid/content/ContentValues;)V

    .line 6112
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->updateRecordFile(Landroid/content/ContentValues;)V

    .line 6116
    sget-boolean v5, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v5, :cond_1e

    .line 6117
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/providers/media/MediaProvider;->convertOrgin2PinyinForSort(Landroid/content/ContentValues;)V

    .line 6123
    :cond_1e
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v28

    iput v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 6124
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, p4

    invoke-virtual {v4, v5, v0, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 6126
    if-eqz v25, :cond_1f

    .line 6127
    const/4 v5, 0x1

    if-ne v6, v5, :cond_29

    const/16 v5, 0x65

    move/from16 v0, v27

    if-ne v0, v5, :cond_29

    .line 6128
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x3

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 6129
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v7, v8, v1}, Lcom/android/providers/media/MediaProvider;->updateGenre(JLjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_1f
    :goto_c
    move v5, v6

    move/from16 v6, v26

    .line 6137
    goto/16 :goto_5

    .line 5975
    :cond_20
    :try_start_9
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_6

    .line 5977
    :catchall_2
    move-exception v4

    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v4

    .line 5989
    :cond_21
    if-eqz v19, :cond_22

    const-string v5, "1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    .line 5992
    :cond_22
    if-nez v20, :cond_23

    .line 5993
    const/16 v5, 0x64

    move/from16 v0, v27

    if-ne v0, v5, :cond_24

    .line 5994
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    const-string v6, "Possible multi row album name update without path could give wrong album key"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6016
    :cond_23
    :goto_d
    if-eqz v20, :cond_17

    .line 6023
    const/4 v5, 0x0

    const/16 v6, 0x2f

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v21

    goto/16 :goto_7

    .line 5998
    :cond_24
    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_data"

    aput-object v6, v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/providers/media/MediaProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v5

    .line 6001
    if-eqz v5, :cond_23

    .line 6003
    :try_start_b
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 6004
    const/4 v7, 0x1

    if-ne v6, v7, :cond_25

    .line 6005
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6006
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result-object v20

    .line 6011
    :goto_e
    :try_start_c
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_d

    .line 6008
    :cond_25
    :try_start_d
    sget-object v7, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " rows for "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_e

    .line 6011
    :catchall_3
    move-exception v4

    :try_start_e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 6039
    :cond_26
    :try_start_f
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto/16 :goto_8

    .line 6041
    :catchall_4
    move-exception v4

    monitor-exit v23
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw v4

    .line 6087
    :cond_27
    const-string v5, "<unknown>"

    goto/16 :goto_9

    .line 6104
    :cond_28
    const-string v5, "<unknown>"

    goto/16 :goto_b

    .line 6132
    :cond_29
    sget-object v5, Lcom/android/providers/media/MediaProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ignoring genre in update: count = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " match = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 6144
    :sswitch_1
    sget-object v5, Lcom/android/providers/media/Columns;->IGNORE_NOTIFY:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_34

    .line 6145
    const/4 v13, 0x0

    .line 6147
    :goto_f
    new-instance v5, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 6161
    const-string v6, "bucket_id"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 6162
    const-string v6, "bucket_display_name"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 6164
    const-string v6, "_data"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6165
    if-eqz v6, :cond_2a

    .line 6166
    invoke-static {v6, v5}, Lcom/android/providers/media/MediaProvider;->computeBucketValues(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 6168
    :cond_2a
    invoke-static {v5}, Lcom/android/providers/media/MediaProvider;->computeTakenTime(Landroid/content/ContentValues;)V

    .line 6172
    sget-boolean v6, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v6, :cond_2c

    .line 6173
    const/16 v6, 0xc8

    move/from16 v0, v27

    if-eq v0, v6, :cond_2b

    const/16 v6, 0xc9

    move/from16 v0, v27

    if-ne v0, v6, :cond_2c

    .line 6174
    :cond_2b
    const-string v6, "_display_name"

    const-string v7, "title_pinyin"

    invoke-static {v5, v6, v7}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6179
    :cond_2c
    move-object/from16 v0, v28

    iget v6, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v28

    iput v6, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumUpdates:I

    .line 6180
    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v4, v6, v5, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 6185
    if-lez v12, :cond_2f

    const-string v6, "_data"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2f

    .line 6186
    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v28

    iput v5, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mNumQueries:I

    .line 6187
    sget-object v5, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v6, Lcom/android/providers/media/MediaProvider;->READY_FLAG_PROJECTION:[Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, p4

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result-object v11

    .line 6190
    if-eqz v11, :cond_2f

    .line 6192
    :cond_2d
    :goto_10
    :try_start_11
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 6193
    const/4 v5, 0x2

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 6194
    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2d

    .line 6195
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0xa

    const-wide/16 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    invoke-direct/range {v5 .. v10}, Lcom/android/providers/media/MediaProvider;->requestMediaThumbnail(Ljava/lang/String;Landroid/net/Uri;IJ)Lcom/android/providers/media/MediaThumbRequest;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_10

    .line 6200
    :catchall_5
    move-exception v4

    :try_start_12
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v4

    :cond_2e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2f
    move v5, v12

    move v6, v13

    .line 6205
    goto/16 :goto_5

    .line 6209
    :sswitch_2
    new-instance v5, Landroid/content/ContentValues;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 6210
    sget-boolean v6, Lcom/android/providers/media/MediaProvider;->FLAG_SUPPORT_PINYIN:Z

    if-eqz v6, :cond_30

    .line 6211
    const-string v6, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6212
    const-string v6, "name"

    const-string v7, "name_pinyin"

    invoke-static {v5, v6, v7}, Lcom/android/providers/media/MediaProvider;->subConvertOrgin2PinyinForSort(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6214
    :cond_30
    sget-object v6, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v6, v6, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v7, Lcom/android/providers/media/MediaProvider;->sGetTableAndWhereParam:Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;

    iget-object v7, v7, Lcom/android/providers/media/MediaProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v4, v6, v5, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    move/from16 v6, v26

    .line 6217
    goto/16 :goto_5

    .line 6222
    :sswitch_3
    const-string v5, "move"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6223
    if-eqz v5, :cond_15

    .line 6224
    const-string v5, "play_order"

    .line 6225
    if-eqz p2, :cond_31

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 6226
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 6227
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    .line 6228
    const/4 v5, 0x3

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 6229
    const/4 v5, 0x5

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v5, p0

    move-object/from16 v6, v28

    move-object v7, v4

    .line 6230
    invoke-direct/range {v5 .. v11}, Lcom/android/providers/media/MediaProvider;->movePlaylistEntry(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;JII)I

    move-result v4

    monitor-exit v29

    goto/16 :goto_0

    .line 6232
    :cond_31
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Need to specify "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " when using \'move\' parameter"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 6254
    :cond_32
    if-lez v5, :cond_33

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-nez v4, :cond_33

    if-eqz v6, :cond_33

    .line 6256
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_33
    move v4, v5

    .line 6258
    goto/16 :goto_0

    :cond_34
    move/from16 v13, v26

    goto/16 :goto_f

    :cond_35
    move v6, v5

    goto/16 :goto_a

    :cond_36
    move-object v6, v12

    goto/16 :goto_4

    :cond_37
    move-object/from16 v25, v5

    goto/16 :goto_3

    .line 5952
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x6e -> :sswitch_2
        0x71 -> :sswitch_3
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_1
    .end sparse-switch
.end method
