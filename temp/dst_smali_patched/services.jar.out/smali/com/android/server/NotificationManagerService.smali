.class public Lcom/android/server/NotificationManagerService;
.super Landroid/app/INotificationManager$Stub;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NotificationManagerService$OverTurnPlayer;,
        Lcom/android/server/NotificationManagerService$PickupPlayer;,
        Lcom/android/server/NotificationManagerService$PickupSettingsObserver;,
        Lcom/android/server/NotificationManagerService$WorkerHandler;,
        Lcom/android/server/NotificationManagerService$SettingsObserver;,
        Lcom/android/server/NotificationManagerService$ToastRecord;,
        Lcom/android/server/NotificationManagerService$NotificationRecord;,
        Lcom/android/server/NotificationManagerService$Injector;
    }
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DBG:Z = false

.field private static final DB_VERSION:I = 0x1

.field private static final DEFAULT_STREAM_TYPE:I = 0x5

.field private static final DEFAULT_VIBRATE_PATTERN:[J = null

.field private static final ENABLE_BLOCKED_NOTIFICATIONS:Z = true

.field private static final ENABLE_BLOCKED_TOASTS:Z = true

.field private static final JUNK_SCORE:I = -0x3e8

.field private static final LONG_DELAY:I = 0xdac

.field private static final MAX_PACKAGE_NOTIFICATIONS:I = 0x32

.field private static final MESSAGE_TIMEOUT:I = 0x2

.field private static final NOTIFICATION_PRIORITY_MULTIPLIER:I = 0xa

.field private static final SCORE_DISPLAY_THRESHOLD:I = -0x14

.field private static final SCORE_ONGOING_HIGHER:Z = false

.field private static final SHORT_DELAY:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "NotificationService"

.field private static final TAG_BLOCKED_PKGS:Ljava/lang/String; = "blocked-packages"

.field private static final TAG_BODY:Ljava/lang/String; = "notification-policy"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-NotificationService"


# instance fields
.field final mAm:Landroid/app/IActivityManager;

.field private mAttentionLight:Lcom/android/server/LightsService$Light;

.field private mAudioService:Landroid/media/IAudioService;

.field private mBlockedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mContext:Landroid/content/Context;

.field private mDefaultNotificationColor:I

.field private mDefaultNotificationLedOff:I

.field private mDefaultNotificationLedOn:I

.field private mDisabledNotifications:I

.field final mForegroundToken:Landroid/os/IBinder;

.field private mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

.field private mInCall:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mLights:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMissedNotificationLightEnabled:Z

.field private mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

.field private mNotificationLight:Lcom/android/server/LightsService$Light;

.field private final mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationPlayerBinder:Landroid/os/IBinder;

.field private mNotificationPulseEnabled:Z

.field private mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

.field private mPM:Landroid/os/PowerManager;

.field mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

.field private mPolicyFile:Lcom/android/internal/os/AtomicFile;

.field private mScreenOn:Z

.field private mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mStatusBar:Lcom/android/server/StatusBarManagerService;

.field private mSystemReady:Z

.field private mToastQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/NotificationManagerService$ToastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mVoiceRecorderNotificationLightEnabled:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/NotificationManagerService;->DEFAULT_VIBRATE_PATTERN:[J

    return-void

    nop

    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    .locals 9
    .parameter "context"
    .parameter "statusBar"
    .parameter "lights"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/app/INotificationManager$Stub;-><init>()V

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    iput-boolean v8, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    iput-boolean v7, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/NotificationManagerService$PickupPlayer;

    invoke-direct {v5, p0, v6}, Lcom/android/server/NotificationManagerService$PickupPlayer;-><init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mPickupPlayer:Lcom/android/server/NotificationManagerService$PickupPlayer;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    new-instance v5, Lcom/android/server/NotificationManagerService$1;

    invoke-direct {v5, p0}, Lcom/android/server/NotificationManagerService$1;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    new-instance v5, Lcom/android/server/NotificationManagerService$2;

    invoke-direct {v5, p0}, Lcom/android/server/NotificationManagerService$2;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v5, "vibrator"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/SystemVibrator;

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-direct {v5, p0, v6}, Lcom/android/server/NotificationManagerService$WorkerHandler;-><init>(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$1;)V

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mPM:Landroid/os/PowerManager;

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mPM:Landroid/os/PowerManager;

    const-string v6, "pickup"

    invoke-virtual {v5, v8, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->loadBlockDb()V

    iput-object p2, p0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-virtual {p2, v5}, Lcom/android/server/StatusBarManagerService;->setNotificationCallbacks(Lcom/android/server/StatusBarManagerService$NotificationCallbacks;)V

    const/4 v5, 0x4

    invoke-virtual {p3, v5}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .local v3, resources:Landroid/content/res/Resources;
    const v5, 0x1060065

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    const v5, 0x10e001b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I

    const v5, 0x10e001c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    const/high16 v5, 0x4

    iput v5, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .local v2, pkgFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "package"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v4, sdFilter:Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/NotificationManagerService$SettingsObserver;

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-direct {v1, p0, v5}, Lcom/android/server/NotificationManagerService$SettingsObserver;-><init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V

    .local v1, observer:Lcom/android/server/NotificationManagerService$SettingsObserver;
    invoke-virtual {v1}, Lcom/android/server/NotificationManagerService$SettingsObserver;->observe()V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/NotificationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateNotificationPulse()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/NotificationManagerService;)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/NotificationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mMissedNotificationLightEnabled:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mMissedNotificationLightEnabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/NotificationManagerService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/NotificationManagerService;->mVoiceRecorderNotificationLightEnabled:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/NotificationManagerService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/NotificationManagerService;->mVoiceRecorderNotificationLightEnabled:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$ToastRecord;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->handleTimeout(Lcom/android/server/NotificationManagerService$ToastRecord;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/NotificationManagerService;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/NotificationManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$WorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/NotificationManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/NotificationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/NotificationManagerService;)Landroid/media/IAudioService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationManagerService$OverTurnPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/NotificationManagerService;)Landroid/os/SystemVibrator;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/NotificationManagerService;Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/server/NotificationManagerService;Lcom/android/server/NotificationManagerService$NotificationRecord;)Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object p1
.end method

.method private areNotificationsEnabledForPackageInt(Ljava/lang/String;)Z
    .locals 2
    .parameter "pkg"

    .prologue
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .local v0, enabled:Z
    :goto_0
    return v0

    .end local v0           #enabled:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 9
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"
    .parameter "mustHaveFlags"
    .parameter "mustNotHaveFlags"
    .parameter "sendDelete"

    .prologue
    const/4 v8, 0x1

    const/16 v4, 0xabf

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    const/4 v1, 0x0

    .local v1, notification:Landroid/app/Notification;
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .local v0, index:I
    if-ltz v0, :cond_3

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .local v3, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v1, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/2addr v4, p4

    if-eq v4, p4, :cond_1

    monitor-exit v5

    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_0
    :goto_0
    return-void

    .restart local v3       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_1
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/2addr v4, p5

    if-eqz v4, :cond_2

    monitor-exit v5

    goto :goto_0

    .end local v0           #index:I
    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #index:I
    .restart local v3       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, v3, p6}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v4, :cond_0

    const-string v4, "com.android.phone"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.android.mms"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, notificationRemovedIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.sec.feature.hovering_ui"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v8, :cond_5

    if-eqz v1, :cond_5

    iget v4, v1, Landroid/app/Notification;->missedCount:I

    if-lez v4, :cond_5

    const-string v4, "Notification"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "pkg"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V
    .locals 8
    .parameter "r"
    .parameter "sendDelete"

    .prologue
    const/4 v7, 0x0

    if-eqz p2, :cond_0

    iget-object v4, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    :try_start_0
    iget-object v4, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v4, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->icon:I

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, identity:J
    :try_start_1
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    iget-object v5, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iput-object v7, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    .end local v1           #identity:J
    :cond_1
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v4, p1, :cond_3

    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .restart local v1       #identity:J
    :try_start_2
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v4}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v3

    .local v3, player:Landroid/media/IRingtonePlayer;
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/media/IRingtonePlayer;->stopAsync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    .end local v3           #player:Landroid/media/IRingtonePlayer;
    :goto_1
    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    .end local v1           #identity:J
    :cond_3
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v4, p1, :cond_4

    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .restart local v1       #identity:J
    :try_start_3
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v4}, Landroid/os/SystemVibrator;->cancel()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1           #identity:J
    :cond_4
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-ne v4, p1, :cond_5

    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    :cond_5
    return-void

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v4, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canceled PendingIntent for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #ex:Landroid/app/PendingIntent$CanceledException;
    .restart local v1       #identity:J
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catchall_1
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v5}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v5}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->unregister()V

    :cond_6
    throw v4

    :catchall_2
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :catch_1
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v4}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    goto :goto_1
.end method

.method private cancelToastLocked(I)V
    .locals 5
    .parameter "index"

    .prologue
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$ToastRecord;

    .local v1, record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :try_start_0
    iget-object v2, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v2}, Landroid/app/ITransientNotification;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget v2, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->showNextToastLocked()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Object died trying to hide notification "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static final clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "low"
    .parameter "high"

    .prologue
    if-ge p0, p1, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method private doVibrate(ZZLandroid/app/Notification;)V
    .locals 4
    .parameter "useDefaultVibrate"
    .parameter "useHaptic"
    .parameter "n"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateNotification(I)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    iget v1, p3, Landroid/app/Notification;->haptic:I

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateNotification(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v2, p3, Landroid/app/Notification;->vibrate:[J

    iget v0, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    sget-object v3, Landroid/os/SystemVibrator$MagnitudeType;->NotificationMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v1, v2, v0, v3}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private doesItUseHaptic(I)Z
    .locals 1
    .parameter "haptic"

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private handleTimeout(Lcom/android/server/NotificationManagerService$ToastRecord;)V
    .locals 4
    .parameter "record"

    .prologue
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-direct {p0, v1, v3}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v0

    .local v0, index:I
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/NotificationManagerService;->cancelToastLocked(I)V

    :cond_0
    monitor-exit v2

    return-void

    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static idDebugString(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "baseContext"
    .parameter "packageName"
    .parameter "id"

    .prologue
    const/4 v0, 0x0

    .local v0, c:Landroid/content/Context;
    if-eqz p1, :cond_0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .local v2, r:Landroid/content/res/Resources;
    :try_start_1
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :goto_1
    return-object v3

    .end local v2           #r:Landroid/content/res/Resources;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, p0

    goto :goto_0

    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p0

    goto :goto_0

    .restart local v2       #r:Landroid/content/res/Resources;
    :catch_1
    move-exception v1

    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "<name unknown>"

    goto :goto_1
.end method

.method private indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$NotificationRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .local v3, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    if-nez p2, :cond_1

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->tag:Ljava/lang/String;

    if-eqz v4, :cond_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->tag:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    iget v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->id:I

    if-ne v4, p3, :cond_0

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v0           #i:I
    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_1
    return v0

    .restart local v0       #i:I
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I
    .locals 6
    .parameter "pkg"
    .parameter "callback"

    .prologue
    invoke-interface {p2}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, cbak:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$ToastRecord;

    .local v4, r:Lcom/android/server/NotificationManagerService$ToastRecord;
    iget-object v5, v4, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v5}, Landroid/app/ITransientNotification;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v0, :cond_0

    .end local v1           #i:I
    .end local v4           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :goto_1
    return v1

    .restart local v1       #i:I
    .restart local v4       #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v4           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private keepProcessAliveLocked(I)V
    .locals 8
    .parameter "pid"

    .prologue
    const/4 v4, 0x0

    .local v4, toastCount:I
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/NotificationManagerService$ToastRecord;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$ToastRecord;

    .local v3, r:Lcom/android/server/NotificationManagerService$ToastRecord;
    iget v5, v3, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    if-ne v5, p1, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mAm:Landroid/app/IActivityManager;

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mForegroundToken:Landroid/os/IBinder;

    if-lez v4, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-interface {v6, v7, p1, v5}, Landroid/app/IActivityManager;->setProcessForeground(Landroid/os/IBinder;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method private loadBlockDb()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    iget-object v8, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    if-nez v7, :cond_3

    new-instance v0, Ljava/io/File;

    const-string v7, "/data/system"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, dir:Ljava/io/File;
    new-instance v7, Lcom/android/internal/os/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string v10, "notification_policy.xml"

    invoke-direct {v9, v0, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v7, v9}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .local v2, infile:Ljava/io/FileInputStream;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v7}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v7, 0x0

    invoke-interface {v3, v2, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 v6, 0x1

    .local v6, version:I
    :cond_0
    :goto_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    if-eq v5, v11, :cond_5

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .local v4, tag:Ljava/lang/String;
    const/4 v7, 0x2

    if-ne v5, v7, :cond_0

    const-string v7, "notification-policy"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    const-string v9, "version"

    invoke-interface {v3, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    :cond_1
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_2
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    if-eq v5, v11, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "package"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v3, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #type:I
    .end local v6           #version:I
    :catch_0
    move-exception v7

    :try_start_2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v0           #dir:Ljava/io/File;
    .end local v2           #infile:Ljava/io/FileInputStream;
    :cond_3
    :goto_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #infile:Ljava/io/FileInputStream;
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #tag:Ljava/lang/String;
    .restart local v5       #type:I
    .restart local v6       #version:I
    :cond_4
    :try_start_3
    const-string v7, "blocked-packages"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x3

    if-ne v5, v7, :cond_2

    goto :goto_0

    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v4           #tag:Ljava/lang/String;
    .end local v5           #type:I
    .end local v6           #version:I
    :catch_1
    move-exception v1

    .local v1, e:Ljava/io/IOException;
    :try_start_4
    const-string v7, "NotificationService"

    const-string v9, "Unable to read blocked notifications database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v0           #dir:Ljava/io/File;
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #infile:Ljava/io/FileInputStream;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v7

    .restart local v0       #dir:Ljava/io/File;
    .restart local v2       #infile:Ljava/io/FileInputStream;
    :catch_2
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v7, "NotificationService"

    const-string v9, "Unable to parse blocked notifications database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_8
    const-string v7, "NotificationService"

    const-string v9, "Unable to parse blocked notifications database"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_2

    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_1
    move-exception v7

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v7

    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #type:I
    .restart local v6       #version:I
    :cond_5
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method

.method private scheduleTimeoutLocked(Lcom/android/server/NotificationManagerService$ToastRecord;Z)V
    .locals 5
    .parameter "r"
    .parameter "immediate"

    .prologue
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, m:Landroid/os/Message;
    if-eqz p2, :cond_0

    const-wide/16 v0, 0x0

    .local v0, delay:J
    :goto_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .end local v0           #delay:J
    :cond_0
    iget v3, p1, Lcom/android/server/NotificationManagerService$ToastRecord;->duration:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/16 v3, 0xdac

    :goto_1
    int-to-long v0, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0x7d0

    goto :goto_1
.end method

.method private sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "notification"
    .parameter "packageName"

    .prologue
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .local v1, manager:Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v3, 0x40

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    const-class v3, Landroid/app/Notification;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setParcelableData(Landroid/os/Parcelable;)V

    iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .local v2, tickerText:Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method private showNextToastLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    .local v2, record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :goto_0
    if-eqz v2, :cond_0

    :try_start_0
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-interface {v3}, Landroid/app/ITransientNotification;->show()V

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/NotificationManagerService;->scheduleTimeoutLocked(Lcom/android/server/NotificationManagerService$ToastRecord;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Object died trying to show notification "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->callback:Landroid/app/ITransientNotification;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, index:I
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    iget v3, v2, Lcom/android/server/NotificationManagerService$ToastRecord;->pid:I

    invoke-direct {p0, v3}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    .restart local v2       #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateLightsLocked()V
    .locals 6
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, n:I
    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    iput-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    .end local v3           #n:I
    :cond_0
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mInCall:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mScreenOn:Z

    if-eqz v4, :cond_3

    :cond_1
    const-string v4, "STATUSBAR-NotificationService"

    const-string v5, "updateLightsLocked() : Turn off notification light"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    invoke-virtual {v4}, Lcom/android/server/LightsService$Light;->turnOff()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v0, v4, Landroid/app/Notification;->ledARGB:I

    .local v0, ledARGB:I
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v2, v4, Landroid/app/Notification;->ledOnMS:I

    .local v2, ledOnMS:I
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v1, v4, Landroid/app/Notification;->ledOffMS:I

    .local v1, ledOffMS:I
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_4

    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    iget v2, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOn:I

    iget v1, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationLedOff:I

    invoke-static {p0}, Lcom/android/server/NotificationManagerService$Injector;->updateNotificationLight(Lcom/android/server/NotificationManagerService;)V

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v0, v4, Landroid/app/Notification;->ledARGB:I

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v2, v4, Landroid/app/Notification;->ledOnMS:I

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v1, v4, Landroid/app/Notification;->ledOffMS:I

    :cond_4
    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mMissedNotificationLightEnabled:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mVoiceRecorderNotificationLightEnabled:Z

    if-eqz v4, :cond_2

    :cond_5
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    iget-object v4, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->defaults:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6

    const-string v4, "STATUSBAR-NotificationService"

    const-string v5, "updateLightsLocked() : Set default flashing notification light"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    const/16 v5, 0xc

    invoke-virtual {v4, v0, v5, v2, v1}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0

    :cond_6
    const-string v4, "STATUSBAR-NotificationService"

    const-string v5, "updateLightsLocked() : Set custom flashing notification light"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationLight:Lcom/android/server/LightsService$Light;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5, v2, v1}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    goto :goto_0
.end method

.method private updateNotificationPulse()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private writeBlockDb()V
    .locals 9

    .prologue
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    monitor-enter v6

    const/4 v3, 0x0

    .local v3, outfile:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    new-instance v2, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .local v2, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "utf-8"

    invoke-interface {v2, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v5, 0x0

    const-string v7, "notification-policy"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v7, "version"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v7, "blocked-packages"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, pkg:Ljava/lang/String;
    const/4 v5, 0x0

    const-string v7, "package"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v7, "name"

    invoke-interface {v2, v5, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v7, "package"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v4           #pkg:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    if-eqz v3, :cond_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :goto_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #out:Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    const-string v7, "blocked-packages"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v5, 0x0

    const-string v7, "notification-policy"

    invoke-interface {v2, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mPolicyFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #out:Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method


# virtual methods
.method public areNotificationsEnabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkg"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->areNotificationsEnabledForPackageInt(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkg"

    .prologue
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    invoke-direct {p0, p1}, Lcom/android/server/NotificationManagerService;->areNotificationsEnabledForPackageInt(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method cancelAll()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const-string v4, "STATUSBAR-NotificationService"

    const-string v5, "cancelAll()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_3

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .local v3, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->flags:I

    and-int/lit8 v4, v4, 0x22

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v4, :cond_2

    const-string v4, "com.android.phone"

    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.android.mms"

    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, notificationRemovedIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v6, "com.sec.feature.hovering_ui"

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-ne v4, v7, :cond_1

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    if-eqz v4, :cond_1

    iget-object v4, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->missedCount:I

    if-lez v4, :cond_1

    const-string v4, "Notification"

    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "pkg"

    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v2           #notificationRemovedIntent:Landroid/content/Intent;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    monitor-exit v5

    return-void

    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public cancelAllNotifications(Ljava/lang/String;)V
    .locals 3
    .parameter "pkg"

    .prologue
    const-string v0, "STATUSBAR-NotificationService"

    const-string v1, "cancelAllNotifications()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z

    return-void
.end method

.method cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z
    .locals 9
    .parameter "pkg"
    .parameter "mustHaveFlags"
    .parameter "mustNotHaveFlags"
    .parameter "doit"

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/16 v5, 0xac0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v7, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, canceledSomething:Z
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_3

    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .local v3, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/2addr v6, p2

    if-eq v6, p2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/2addr v6, p3

    if-nez v6, :cond_0

    iget-object v6, v3, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    if-nez p4, :cond_2

    monitor-exit v5

    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_2
    return v4

    .restart local v3       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_2
    iget-object v6, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-direct {p0, v3, v6}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    goto :goto_1

    .end local v0           #N:I
    .end local v1           #canceledSomething:Z
    .end local v2           #i:I
    .end local v3           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #N:I
    .restart local v1       #canceledSomething:Z
    .restart local v2       #i:I
    :cond_3
    if-eqz v1, :cond_4

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v1

    goto :goto_2
.end method

.method public cancelNotification(Ljava/lang/String;I)V
    .locals 1
    .parameter "pkg"
    .parameter "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/NotificationManagerService;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    move v5, v4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NotificationManagerService;->cancelNotification(Ljava/lang/String;Ljava/lang/String;IIIZ)V

    return-void

    :cond_0
    const/16 v5, 0x40

    goto :goto_0
.end method

.method public cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    .locals 7
    .parameter "pkg"
    .parameter "callback"

    .prologue
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancelToast pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "STATUSBAR-NotificationService"

    const-string v4, "cancelToast()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v3, "NotificationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not cancelling notification. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " callback="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .local v0, callingId:J
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v2

    .local v2, index:I
    if-ltz v2, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/NotificationManagerService;->cancelToastLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4

    goto :goto_0

    .end local v0           #callingId:J
    .end local v2           #index:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0       #callingId:J
    .restart local v2       #index:I
    :cond_2
    :try_start_3
    const-string v3, "NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toast already cancelled. pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callback="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .end local v2           #index:I
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method checkCallerIsSystem()V
    .locals 4

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, uid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowed call for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method checkCallerIsSystemOrSameApp(Ljava/lang/String;)V
    .locals 6
    .parameter "pkg"

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, uid:I
    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v2}, Landroid/os/UserId;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gave package"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " which is owned by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump NotificationManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "Current Notification Manager state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    if-lez v0, :cond_2

    const-string v2, "  Toast Queue:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$ToastRecord;

    const-string v4, "    "

    invoke-virtual {v2, p2, v4}, Lcom/android/server/NotificationManagerService$ToastRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v1           #i:I
    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    const-string v2, "  Notification List:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v4, "    "

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2, v4, v5}, Lcom/android/server/NotificationManagerService$NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_3
    :try_start_3
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v1           #i:I
    :cond_4
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    const-string v2, "  Lights List:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v4, "    "

    iget-object v5, p0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2, v4, v5}, Lcom/android/server/NotificationManagerService$NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v1           #i:I
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSoundNotification="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mVibrateNotification="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mDisabledNotifications=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  mSystemReady="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public enqueueNotification(Ljava/lang/String;ILandroid/app/Notification;[I)V
    .locals 6
    .parameter "pkg"
    .parameter "id"
    .parameter "notification"
    .parameter "idOut"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/NotificationManagerService;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V

    return-void
.end method

.method public enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[I)V
    .locals 37
    .parameter "pkg"
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "tag"
    .parameter "id"
    .parameter "notification"
    .parameter "idOut"

    .prologue
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystemOrSameApp(Ljava/lang/String;)V

    const-string v5, "android"

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    .local v27, isSystemNotification:Z
    if-nez v27, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    const/16 v22, 0x0

    .local v22, count:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v19

    .local v19, N:I
    const/16 v23, 0x0

    .local v23, i:I
    :goto_0
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .local v4, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v5, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v22, v22, 0x1

    const/16 v5, 0x32

    move/from16 v0, v22

    if-lt v0, v5, :cond_1

    const-string v5, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package has already posted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " notifications.  Not showing more.  package="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v6

    .end local v4           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v19           #N:I
    .end local v22           #count:I
    .end local v23           #i:I
    :cond_0
    :goto_1
    return-void

    .restart local v4       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    .restart local v19       #N:I
    .restart local v22       #count:I
    .restart local v23       #i:I
    :cond_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    .end local v4           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_2
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v19           #N:I
    .end local v22           #count:I
    .end local v23           #i:I
    :cond_3
    const-string v5, "com.android.providers.downloads"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "DownloadManager"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const/16 v5, 0xabe

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p4, v6, v7

    const/4 v7, 0x3

    invoke-virtual/range {p6 .. p6}, Landroid/app/Notification;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_5
    if-eqz p1, :cond_6

    if-nez p6, :cond_7

    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "null not allowed: pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " notification="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .restart local v22       #count:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .end local v22           #count:I
    :cond_7
    move-object/from16 v0, p6

    iget v5, v0, Landroid/app/Notification;->icon:I

    if-eqz v5, :cond_8

    move-object/from16 v0, p6

    iget-object v5, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v5, :cond_8

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contentView required: pkg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " notification="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    move-object/from16 v0, p6

    iget v5, v0, Landroid/app/Notification;->priority:I

    const/4 v6, -0x2

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Lcom/android/server/NotificationManagerService;->clamp(III)I

    move-result v5

    move-object/from16 v0, p6

    iput v5, v0, Landroid/app/Notification;->priority:I

    move-object/from16 v0, p6

    iget v5, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_9

    move-object/from16 v0, p6

    iget v5, v0, Landroid/app/Notification;->priority:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_9

    const/4 v5, 0x2

    move-object/from16 v0, p6

    iput v5, v0, Landroid/app/Notification;->priority:I

    :cond_9
    move-object/from16 v0, p6

    iget v5, v0, Landroid/app/Notification;->priority:I

    mul-int/lit8 v10, v5, 0xa

    .local v10, score:I
    if-nez v27, :cond_a

    invoke-direct/range {p0 .. p1}, Lcom/android/server/NotificationManagerService;->areNotificationsEnabledForPackageInt(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    const/16 v10, -0x3e8

    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Suppressing notification from package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " by user request."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/16 v5, -0x14

    if-lt v10, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    monitor-enter v36

    :try_start_2
    new-instance v4, Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Lcom/android/server/NotificationManagerService$NotificationRecord;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILandroid/app/Notification;)V

    .restart local v4       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    const/16 v30, 0x0

    .local v30, old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NotificationManagerService;->indexOfNotificationLocked(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v26

    .local v26, index:I
    if-gez v26, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_2
    move-object/from16 v0, p6

    iget v5, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_c

    move-object/from16 v0, p6

    iget v5, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x22

    move-object/from16 v0, p6

    iput v5, v0, Landroid/app/Notification;->flags:I

    :cond_c
    move-object/from16 v0, p6

    iget v5, v0, Landroid/app/Notification;->icon:I

    if-eqz v5, :cond_1a

    new-instance v11, Lcom/android/internal/statusbar/StatusBarNotification;

    iget v15, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->uid:I

    iget v0, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->initialPid:I

    move/from16 v16, v0

    move-object/from16 v12, p1

    move/from16 v13, p5

    move-object/from16 v14, p4

    move/from16 v17, v10

    move-object/from16 v18, p6

    invoke-direct/range {v11 .. v18}, Lcom/android/internal/statusbar/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;)V

    .local v11, n:Lcom/android/internal/statusbar/StatusBarNotification;
    if-eqz v30, :cond_19

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v5, :cond_19

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    iput-object v5, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v24

    .local v24, identity:J
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    iget-object v6, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v5, v6, v11}, Lcom/android/server/StatusBarManagerService;->updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/NotificationManagerService;->sendAccessibilityEvent(Landroid/app/Notification;Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v5, :cond_f

    new-instance v29, Landroid/content/Intent;

    const-string v5, "com.android.server.NotificationManagerService.NotificationArrived"

    move-object/from16 v0, v29

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v29, notificationArrivedIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.sec.feature.hovering_ui"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    const-string v5, "com.android.phone"

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "com.android.mms"

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    if-eqz p6, :cond_e

    const-string v5, "Notification"

    move-object/from16 v0, v29

    move-object/from16 v1, p6

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "pkg"

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v11           #n:Lcom/android/internal/statusbar/StatusBarNotification;
    .end local v24           #identity:J
    .end local v29           #notificationArrivedIntent:Landroid/content/Intent;
    :cond_f
    :goto_4
    const-string v6, "STATUSBAR-NotificationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Noti Alert - mSystemReady:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", AlertEnabled:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    const/high16 v8, 0x4

    and-int/2addr v5, v8

    if-nez v5, :cond_1b

    const/4 v5, 0x1

    :goto_5
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/NotificationManagerService;->mDisabledNotifications:I

    const/high16 v6, 0x4

    and-int/2addr v5, v6

    if-nez v5, :cond_15

    if-eqz v30, :cond_10

    move-object/from16 v0, p6

    iget v5, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_15

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/media/AudioManager;

    .local v20, audioManager:Landroid/media/AudioManager;
    move-object/from16 v0, p6

    iget v5, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1c

    const/16 v33, 0x1

    .local v33, useDefaultSound:Z
    :goto_6
    if-nez v33, :cond_11

    move-object/from16 v0, p6

    iget-object v5, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-eqz v5, :cond_13

    :cond_11
    if-eqz v33, :cond_1d

    sget-object v32, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .local v32, uri:Landroid/net/Uri;
    :goto_7
    move-object/from16 v0, p6

    iget v5, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1e

    const/16 v28, 0x1

    .local v28, looping:Z
    :goto_8
    move-object/from16 v0, p6

    iget v5, v0, Landroid/app/Notification;->audioStreamType:I

    if-ltz v5, :cond_1f

    move-object/from16 v0, p6

    iget v0, v0, Landroid/app/Notification;->audioStreamType:I

    move/from16 v21, v0

    .local v21, audioStreamType:I
    :goto_9
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/NotificationManagerService;->mSoundNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    invoke-virtual/range {v20 .. v21}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v24

    .restart local v24       #identity:J
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    invoke-interface {v5}, Landroid/media/IAudioService;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v31

    .local v31, player:Landroid/media/IRingtonePlayer;
    if-eqz v31, :cond_12

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move/from16 v2, v28

    move/from16 v3, v21

    invoke-interface {v0, v1, v2, v3}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;ZI)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v5}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isEnable()Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v5}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->isRegister()Z

    move-result v5

    if-nez v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-virtual {v5}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;->register()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    if-nez v5, :cond_12

    new-instance v5, Lcom/android/server/NotificationManagerService$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/NotificationManagerService$3;-><init>(Lcom/android/server/NotificationManagerService;)V

    move-object/from16 v0, v31

    invoke-interface {v0, v5}, Landroid/media/IRingtonePlayer;->setOnCompletionListener(Landroid/app/INotificationPlayerOnCompletionListener;)Landroid/os/IBinder;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mNotificationPlayerBinder:Landroid/os/IBinder;

    new-instance v6, Lcom/android/server/NotificationManagerService$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/NotificationManagerService$4;-><init>(Lcom/android/server/NotificationManagerService;)V

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_12
    :try_start_6
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v21           #audioStreamType:I
    .end local v24           #identity:J
    .end local v28           #looping:Z
    .end local v31           #player:Landroid/media/IRingtonePlayer;
    .end local v32           #uri:Landroid/net/Uri;
    :cond_13
    :goto_a
    move-object/from16 v0, p6

    iget v5, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_20

    const/16 v34, 0x1

    .local v34, useDefaultVibrate:Z
    :goto_b
    move-object/from16 v0, p6

    iget v5, v0, Landroid/app/Notification;->haptic:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/NotificationManagerService;->doesItUseHaptic(I)Z

    move-result v35

    .local v35, useHaptic:Z
    if-nez v34, :cond_14

    move-object/from16 v0, p6

    iget-object v5, v0, Landroid/app/Notification;->vibrate:[J

    if-nez v5, :cond_14

    if-eqz v35, :cond_15

    :cond_14
    invoke-virtual/range {v20 .. v20}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/NotificationManagerService;->mVibrateNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    const-string v5, "STATUSBAR-NotificationService"

    const-string v6, "Noti Alert - doVibrate "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v35

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NotificationManagerService;->doVibrate(ZZLandroid/app/Notification;)V

    .end local v20           #audioManager:Landroid/media/AudioManager;
    .end local v33           #useDefaultSound:Z
    .end local v34           #useDefaultVibrate:Z
    .end local v35           #useHaptic:Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    move-object/from16 v0, v30

    if-ne v5, v0, :cond_16

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    :cond_16
    move-object/from16 v0, p6

    iget v5, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    :cond_17
    :goto_c
    monitor-exit v36
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v5, 0x0

    aput p5, p7, v5

    goto/16 :goto_1

    :cond_18
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v30

    .end local v30           #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    check-cast v30, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .restart local v30       #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    move/from16 v0, v26

    invoke-virtual {v5, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz v30, :cond_b

    move-object/from16 v0, p6

    iget v5, v0, Landroid/app/Notification;->flags:I

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v6, v6, Landroid/app/Notification;->flags:I

    and-int/lit8 v6, v6, 0x40

    or-int/2addr v5, v6

    move-object/from16 v0, p6

    iput v5, v0, Landroid/app/Notification;->flags:I

    goto/16 :goto_2

    .end local v4           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    .end local v26           #index:I
    .end local v30           #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_1
    move-exception v5

    monitor-exit v36
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v5

    .restart local v4       #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    .restart local v11       #n:Lcom/android/internal/statusbar/StatusBarNotification;
    .restart local v24       #identity:J
    .restart local v26       #index:I
    .restart local v30       #old:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :catchall_2
    move-exception v5

    :try_start_8
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .end local v24           #identity:J
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-wide v24

    .restart local v24       #identity:J
    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    invoke-virtual {v5, v11}, Lcom/android/server/StatusBarManagerService;->addNotification(Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_3

    :catchall_3
    move-exception v5

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .end local v11           #n:Lcom/android/internal/statusbar/StatusBarNotification;
    .end local v24           #identity:J
    :cond_1a
    const-string v5, "NotificationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring notification with icon==0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v30, :cond_f

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    if-eqz v5, :cond_f

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-wide v24

    .restart local v24       #identity:J
    :try_start_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NotificationManagerService;->mStatusBar:Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v30

    iget-object v6, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->statusBarKey:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Lcom/android/server/StatusBarManagerService;->removeNotification(Landroid/os/IBinder;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_4

    :catchall_4
    move-exception v5

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .end local v24           #identity:J
    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_5

    .restart local v20       #audioManager:Landroid/media/AudioManager;
    :cond_1c
    const/16 v33, 0x0

    goto/16 :goto_6

    .restart local v33       #useDefaultSound:Z
    :cond_1d
    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v32, v0

    .restart local v32       #uri:Landroid/net/Uri;
    goto/16 :goto_7

    :cond_1e
    const/16 v28, 0x0

    goto/16 :goto_8

    .restart local v28       #looping:Z
    :cond_1f
    const/16 v21, 0x5

    .restart local v21       #audioStreamType:I
    goto/16 :goto_9

    .restart local v24       #identity:J
    :catchall_5
    move-exception v5

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .end local v21           #audioStreamType:I
    .end local v24           #identity:J
    .end local v28           #looping:Z
    .end local v32           #uri:Landroid/net/Uri;
    :cond_20
    const/16 v34, 0x0

    goto/16 :goto_b

    .end local v20           #audioManager:Landroid/media/AudioManager;
    .end local v33           #useDefaultSound:Z
    :cond_21
    if-eqz v30, :cond_17

    move-object/from16 v0, v30

    iget-object v5, v0, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->updateLightsLocked()V

    goto/16 :goto_c

    .restart local v20       #audioManager:Landroid/media/AudioManager;
    .restart local v21       #audioStreamType:I
    .restart local v24       #identity:J
    .restart local v28       #looping:Z
    .restart local v32       #uri:Landroid/net/Uri;
    .restart local v33       #useDefaultSound:Z
    :catch_0
    move-exception v5

    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_a
.end method

.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[I)V
    .locals 14
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"
    .parameter "notification"
    .parameter "idOut"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v10

    .local v10, mAppPolicy:Landroid/sec/enterprise/ApplicationPolicy;
    if-eqz v10, :cond_0

    invoke-virtual {v10, p1}, Landroid/sec/enterprise/ApplicationPolicy;->isStatusBarNotificationAllowed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .local v12, token:J
    invoke-virtual {v10}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNotificationMode()I

    move-result v11

    .local v11, notificationMode:I
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v11, :pswitch_data_0

    .end local v10           #mAppPolicy:Landroid/sec/enterprise/ApplicationPolicy;
    .end local v11           #notificationMode:I
    .end local v12           #token:J
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;[I)V

    :cond_1
    return-void

    .restart local v10       #mAppPolicy:Landroid/sec/enterprise/ApplicationPolicy;
    .restart local v11       #notificationMode:I
    .restart local v12       #token:J
    :pswitch_0
    :try_start_1
    const-string v1, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify: Block all - flag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    iget v3, v0, Landroid/app/Notification;->flags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.android.phone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p4

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const-string v1, "NotificationService"

    const-string v2, "notify: Do not block"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v10           #mAppPolicy:Landroid/sec/enterprise/ApplicationPolicy;
    .end local v11           #notificationMode:I
    .end local v12           #token:J
    :catch_0
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    const-string v1, "NotificationManager"

    const-string v2, "Is edm running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v9           #e:Ljava/lang/Exception;
    .restart local v10       #mAppPolicy:Landroid/sec/enterprise/ApplicationPolicy;
    .restart local v11       #notificationMode:I
    .restart local v12       #token:J
    :pswitch_1
    const/4 v1, 0x0

    :try_start_2
    move-object/from16 v0, p4

    iput-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const-string v1, "NotificationService"

    const-string v2, "notify: Block text sound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_2
    const-string v1, ""

    move-object/from16 v0, p4

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020046

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v2, 0x1020016

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v1, "NotificationService"

    const-string v2, "notify: Block text"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public enqueueToast(Ljava/lang/String;Landroid/app/ITransientNotification;I)V
    .locals 17
    .parameter "pkg"
    .parameter "callback"
    .parameter "duration"

    .prologue
    const-string v13, "STATUSBAR-NotificationService"

    const-string v14, "enqueueToast()"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v13, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not doing toast. pkg="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " callback="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v13, "android"

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .local v10, isSystemToast:Z
    if-nez v10, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/NotificationManagerService;->areNotificationsEnabledForPackageInt(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "NotificationService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Suppressing toast from package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " by user request."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v14

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .local v6, callingPid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v4

    .local v4, callingId:J
    :try_start_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/app/ITransientNotification;)I

    move-result v9

    .local v9, index:I
    if-ltz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/NotificationManagerService$ToastRecord;

    .local v12, record:Lcom/android/server/NotificationManagerService$ToastRecord;
    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/server/NotificationManagerService$ToastRecord;->update(I)V

    :goto_1
    if-nez v9, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/NotificationManagerService;->showNextToastLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :try_start_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v14

    goto :goto_0

    .end local v4           #callingId:J
    .end local v6           #callingPid:I
    .end local v9           #index:I
    .end local v12           #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    .restart local v4       #callingId:J
    .restart local v6       #callingPid:I
    .restart local v9       #index:I
    :cond_4
    if-nez v10, :cond_6

    const/4 v7, 0x0

    .local v7, count:I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/NotificationManagerService$ToastRecord;

    .local v11, r:Lcom/android/server/NotificationManagerService$ToastRecord;
    iget-object v13, v11, Lcom/android/server/NotificationManagerService$ToastRecord;->pkg:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    add-int/lit8 v7, v7, 0x1

    const/16 v13, 0x32

    if-lt v7, v13, :cond_5

    const-string v13, "NotificationService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Package has already posted "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " toasts. Not showing more. Package="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v3           #N:I
    .end local v7           #count:I
    .end local v8           #i:I
    .end local v11           #r:Lcom/android/server/NotificationManagerService$ToastRecord;
    :cond_6
    :try_start_5
    new-instance v12, Lcom/android/server/NotificationManagerService$ToastRecord;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v12, v6, v0, v1, v2}, Lcom/android/server/NotificationManagerService$ToastRecord;-><init>(ILjava/lang/String;Landroid/app/ITransientNotification;I)V

    .restart local v12       #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v9, v13, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/NotificationManagerService;->keepProcessAliveLocked(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .end local v9           #index:I
    .end local v12           #record:Lcom/android/server/NotificationManagerService$ToastRecord;
    :catchall_1
    move-exception v13

    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public getNotificationInfo(Ljava/lang/String;I)Landroid/app/NotificationInfo;
    .locals 8
    .parameter "pkg"
    .parameter "req"

    .prologue
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .local v1, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v2, v1, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/android/server/NotificationManagerService$NotificationRecord;->id:I

    if-ne v2, p2, :cond_0

    new-instance v2, Landroid/app/NotificationInfo;

    iget-object v4, v1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->commonValue:I

    iget-object v5, v1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->missedCount:I

    iget-object v6, v1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->contactCharSeq:Ljava/lang/CharSequence;

    iget-object v7, v1, Lcom/android/server/NotificationManagerService$NotificationRecord;->notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/NotificationInfo;-><init>(IILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    monitor-exit v3

    .end local v1           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :goto_0
    return-object v2

    :cond_1
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_0

    .end local v0           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method getDefaultNotificationColor()I
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/server/NotificationManagerService;->mDefaultNotificationColor:I

    return v0
.end method

.method getLedNotification()Lcom/android/server/NotificationManagerService$NotificationRecord;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/NotificationManagerService;->mLedNotification:Lcom/android/server/NotificationManagerService$NotificationRecord;

    return-object v0
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;Z)V
    .locals 5
    .parameter "pkg"
    .parameter "enabled"

    .prologue
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService;->checkCallerIsSystem()V

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lcom/android/server/NotificationManagerService;->writeBlockDb()V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mBlockedPackages:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/android/server/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/NotificationManagerService$NotificationRecord;

    .local v2, r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    iget-object v3, v2, Lcom/android/server/NotificationManagerService$NotificationRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/NotificationManagerService;->cancelNotificationLocked(Lcom/android/server/NotificationManagerService$NotificationRecord;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #r:Lcom/android/server/NotificationManagerService$NotificationRecord;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method systemReady()V
    .locals 3

    .prologue
    const-string v1, "STATUSBAR-NotificationService"

    const-string v2, "systemReady()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NotificationManagerService;->mAudioService:Landroid/media/IAudioService;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/NotificationManagerService;->mSystemReady:Z

    new-instance v0, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;

    iget-object v1, p0, Lcom/android/server/NotificationManagerService;->mHandler:Lcom/android/server/NotificationManagerService$WorkerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;-><init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V

    .local v0, pickupObserver:Lcom/android/server/NotificationManagerService$PickupSettingsObserver;
    invoke-virtual {v0}, Lcom/android/server/NotificationManagerService$PickupSettingsObserver;->observe()V

    const-string v1, "STATUSBAR-NotificationService"

    const-string v2, "pickupObserver.observe()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    invoke-direct {v1, p0}, Lcom/android/server/NotificationManagerService$OverTurnPlayer;-><init>(Lcom/android/server/NotificationManagerService;)V

    iput-object v1, p0, Lcom/android/server/NotificationManagerService;->mOverTurnPlayer:Lcom/android/server/NotificationManagerService$OverTurnPlayer;

    return-void
.end method
