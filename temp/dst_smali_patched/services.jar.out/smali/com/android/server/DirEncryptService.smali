.class Lcom/android/server/DirEncryptService;
.super Landroid/os/storage/IDirEncryptService$Stub;
.source "DirEncryptService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;,
        Lcom/android/server/DirEncryptService$MountCallBackBinderListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field private static final ENCRYPT_TAG:Ljava/lang/String; = "DirEncryptConnector"

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_LOGD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOCAL_LOGE:Z = false

.field private static final REQUESTER_DM:Ljava/lang/String; = "dm"

.field private static final REQUESTER_USER:Ljava/lang/String; = "user"

.field private static final REQUESTER_USER_ENC_SETTING_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final SDCARD_ENC_STATUS_ACTIVITY:Ljava/lang/String; = "android.app.action.SDCARD_ENCRYPTION_STATUS"

.field private static final TAG:Ljava/lang/String; = "DirEncryptService"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDep:Lcom/android/server/DirEncryptPrefs;

.field private mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHelper:Lcom/android/server/DirEncryptServiceHelper;

.field private mMountListener:Lcom/android/server/DirEncryptService$MountCallBackBinderListener;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReady:Z

.field private mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGE:Z

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGD:Z

    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/storage/IDirEncryptService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mMountListener:Lcom/android/server/DirEncryptService$MountCallBackBinderListener;

    new-instance v0, Lcom/android/server/DirEncryptService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptService$2;-><init>(Lcom/android/server/DirEncryptService;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "ctor DirEncryptService....."

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/DirEncryptServiceHelper;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptServiceHelper;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGD:Z

    return v0
.end method

.method private authByUid(I)Z
    .locals 2
    .parameter "uid"

    .prologue
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .local v0, myUID:I
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findRequester(I)Ljava/lang/String;
    .locals 5
    .parameter "uidApp"

    .prologue
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .local v1, myUID:I
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .local v0, callingPackageName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name uidApp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name myUID  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    const-string v3, "REQUESTER_APP..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    move-object v3, v0

    :goto_0
    return-object v3

    :cond_1
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "REQUESTER_UNKNOWN..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    const-string v3, ""

    goto :goto_0

    :cond_2
    if-eq v1, p1, :cond_3

    const-string v3, "REQUESTER_APP..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    move-object v3, v0

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .local v2, pid:I
    invoke-direct {p0, v2}, Lcom/android/server/DirEncryptService;->getCallingProcessPkg(I)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling pid package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    if-nez v0, :cond_4

    const-string v3, "Calling package name is null..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    const-string v3, ""

    goto :goto_0

    :cond_4
    const-string v3, "com.android.settings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "REQUESTER_USER..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    const-string v3, "user"

    goto :goto_0

    :cond_5
    const-string v3, "REQUESTER_DM..."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    const-string v3, "dm"

    goto :goto_0
.end method

.method private getCallingProcessPkg(I)Ljava/lang/String;
    .locals 6
    .parameter "pid"

    .prologue
    const/4 v4, 0x0

    .local v4, result:Ljava/lang/String;
    const-string v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .local v0, am:Lcom/android/server/am/ActivityManagerService;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v2, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_0

    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3           #list:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_1
    return-object v4
.end method

.method public static logD(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    sget-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    sget-boolean v0, Lcom/android/server/DirEncryptService;->LOCAL_LOGE:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public encryptStorage(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "path"
    .parameter "password"

    .prologue
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encryptStorage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    sget-boolean v6, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v6, :cond_0

    const/16 v2, 0xc8

    :goto_0
    return v2

    :cond_0
    if-nez p2, :cond_1

    const-string v6, "missing password..."

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    const/16 v2, 0xcb

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, requester:I
    invoke-direct {p0, v1}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Invalid requester"

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    const/16 v2, 0xcc

    goto :goto_0

    :cond_2
    const/16 v2, 0xc9

    .local v2, result:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .local v4, token:J
    new-instance v0, Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/dirEncryption/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    .local v0, dew:Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v3

    .local v3, state:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x0

    const-string v6, "SD card mounted, need unmount..."

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    const/16 v2, 0xb

    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :cond_3
    const-string v6, "checking"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "SD card ready, need encrypt cycle..."

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    iget-object v6, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    const/16 v2, 0xb

    goto :goto_1

    :cond_4
    const-string v6, "SD card not mounted, so not applying policies this time"

    invoke-static {v6}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    const/16 v2, 0xca

    goto :goto_1
.end method

.method public getAdditionalSpaceRequired()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getAdditionalSpaceRequired()I

    move-result v0

    return v0
.end method

.method public getCurrentStatus()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getLastError()I

    move-result v0

    return v0
.end method

.method public getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    sget-boolean v4, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v4, :cond_0

    move-object v1, v0

    .end local v0           #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .local v1, result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :goto_0
    return-object v1

    .end local v1           #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v0       #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "EncPrefs found"

    invoke-static {v4}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v1, v0

    .end local v0           #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v1       #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    goto :goto_0

    .end local v1           #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v0       #result:Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_1
    const-string v4, "EncPrefs not found"

    invoke-static {v4}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .locals 4

    .prologue
    sget-boolean v3, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .local v0, result:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, token:J
    const-string v3, "isStorageCardEncryptionPoliciesApplied....."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v3}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 1

    .prologue
    const-string v0, " onDaemonConnected ::"

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    const-string v0, "onEvent"

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    new-instance v1, Lcom/android/server/DirEncryptService$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/DirEncryptService$1;-><init>(Lcom/android/server/DirEncryptService;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    return-void
.end method

.method public setPassword(Ljava/lang/String;)I
    .locals 5
    .parameter "password"

    .prologue
    sget-boolean v3, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v3, :cond_0

    const/16 v3, 0xc8

    :goto_0
    return v3

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, requester:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, token:J
    const-string v3, "setPassword....."

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v3, 0xb

    goto :goto_0

    :cond_1
    const-string v3, "setPassword error: invalid uid"

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setStorageCardEncryptionPolicy(III)I
    .locals 17
    .parameter "encType"
    .parameter "fullEnc"
    .parameter "excludeMediaFiles"

    .prologue
    const/16 v13, 0xc8

    .local v13, result:I
    sget-boolean v3, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v3, :cond_1

    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Encrypting storage card failed."

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v14, v13

    .end local v13           #result:I
    .local v14, result:I
    :goto_1
    return v14

    .end local v14           #result:I
    .restart local v13       #result:I
    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Decrypting storage card failed."

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStorageCardEncryption: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    const/4 v3, 0x2

    move/from16 v0, p1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    move/from16 v0, p1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Decrypting storage card failed."

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move v14, v13

    .end local v13           #result:I
    .restart local v14       #result:I
    goto :goto_1

    .end local v14           #result:I
    .restart local v13       #result:I
    :cond_2
    const/4 v3, 0x4

    move/from16 v0, p2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    move/from16 v0, p2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Encrypt storage card failed."

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v14, v13

    .end local v13           #result:I
    .restart local v14       #result:I
    goto/16 :goto_1

    .end local v14           #result:I
    .restart local v13       #result:I
    :cond_3
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Decrypting storage card failed."

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v3, 0x4

    move/from16 v0, p2

    if-ne v0, v3, :cond_5

    const/4 v3, 0x2

    move/from16 v0, p1

    if-eq v0, v3, :cond_5

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Decrypting storage card failed."

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move v14, v13

    .end local v13           #result:I
    .restart local v14       #result:I
    goto/16 :goto_1

    .end local v14           #result:I
    .restart local v13       #result:I
    :cond_5
    const/4 v3, 0x6

    move/from16 v0, p3

    if-eq v0, v3, :cond_7

    const/4 v3, 0x7

    move/from16 v0, p3

    if-eq v0, v3, :cond_7

    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Encrypting storage card failed."

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v14, v13

    .end local v13           #result:I
    .restart local v14       #result:I
    goto/16 :goto_1

    .end local v14           #result:I
    .restart local v13       #result:I
    :cond_6
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Decrypting storage card failed."

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/DirEncryptService;->findRequester(I)Ljava/lang/String;

    move-result-object v12

    .local v12, requester:Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .local v15, token:J
    new-instance v10, Landroid/dirEncryption/SDCardEncryptionPolicies;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v10, v0, v1, v2}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .local v10, newPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v3}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v11

    .local v11, oldPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    .local v9, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x2

    iput v3, v10, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v3, 0x4

    iput v3, v10, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    :cond_8
    invoke-virtual {v11, v10}, Landroid/dirEncryption/SDCardEncryptionPolicies;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Called by: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/DirEncryptService;->logD(Ljava/lang/String;)V

    const-string v3, "user"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v3, v10}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v13, 0x8

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    :cond_9
    :goto_4
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_f

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Encrypting storage card succeeded."

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_5
    move v14, v13

    .end local v13           #result:I
    .restart local v14       #result:I
    goto/16 :goto_1

    .end local v14           #result:I
    .restart local v13       #result:I
    :cond_a
    const/16 v13, 0x9

    goto :goto_4

    :cond_b
    :try_start_1
    iget v3, v10, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v3, v10}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v13, 0x8

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    goto :goto_4

    .end local v9           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v10           #newPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .end local v11           #oldPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .end local v12           #requester:Ljava/lang/String;
    .end local v15           #token:J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .restart local v9       #dpm:Landroid/app/admin/DevicePolicyManager;
    .restart local v10       #newPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v11       #oldPolicies:Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v12       #requester:Ljava/lang/String;
    .restart local v15       #token:J
    :cond_c
    const/16 v13, 0x9

    goto :goto_4

    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v3, v10}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->checkPoliciesApplied()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-nez v3, :cond_e

    const/16 v13, 0x8

    goto :goto_4

    :cond_e
    const/16 v13, 0xa

    goto :goto_4

    :cond_f
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Decrypting storage card succeeded."

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method public systemReady()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const-string v0, "DirEncryptService"

    const-string v1, "Calling systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/DirEncryptService;->DIR_ENCRYPTION:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v6, Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/dirEncryption/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    .local v6, dew:Landroid/dirEncryption/DirEncryptionWrapper;
    new-instance v0, Lcom/android/server/DirEncryptService$MountCallBackBinderListener;

    invoke-direct {v0, p0, v4}, Lcom/android/server/DirEncryptService$MountCallBackBinderListener;-><init>(Lcom/android/server/DirEncryptService;Lcom/android/server/DirEncryptService$1;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mMountListener:Lcom/android/server/DirEncryptService$MountCallBackBinderListener;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mMountListener:Lcom/android/server/DirEncryptService$MountCallBackBinderListener;

    invoke-virtual {v6, v0}, Landroid/dirEncryption/DirEncryptionWrapper;->registerMountCallBackListener(Landroid/os/storage/IMountCallBackListener;)Z

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mDep:Lcom/android/server/DirEncryptPrefs;

    :try_start_0
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string v2, "dir_enc_report"

    const/16 v3, 0x1f4

    const-string v4, "DirEncryptConnector"

    const/16 v5, 0xa0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    new-instance v8, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "DirEncryptConnector"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .local v8, thread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DirEncryptService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;-><init>(Lcom/android/server/DirEncryptService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8           #thread:Ljava/lang/Thread;
    :goto_1
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->registerStorageEventListener()Z

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, ex:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeDaemonConnector exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/DirEncryptService;->logE(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    goto :goto_1
.end method

.method public unmountSDCardByAdmin()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCardByAdmin()V

    return-void
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    return-void
.end method
