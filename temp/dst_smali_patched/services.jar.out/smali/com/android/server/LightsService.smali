.class public Lcom/android/server/LightsService;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LightsService$SvcLEDReceiver;,
        Lcom/android/server/LightsService$WakeLockAquireTask;,
        Lcom/android/server/LightsService$ForcedSvcLEDOnTask;,
        Lcom/android/server/LightsService$Light;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_SVC_LED:Ljava/lang/String; = "com.android.server.LightsService.action.UPDATE_SVC_LED"

.field static final BRIGHTNESS_MODE_SENSOR:I = 0x1

.field static final BRIGHTNESS_MODE_USER:I = 0x0

.field private static final DEBUG:Z = false

.field static final LIGHT_FLASH_HARDWARE:I = 0x2

.field static final LIGHT_FLASH_NONE:I = 0x0

.field static final LIGHT_FLASH_TIMED:I = 0x1

.field static final LIGHT_ID_ATTENTION:I = 0x5

.field static final LIGHT_ID_BACKLIGHT:I = 0x0

.field static final LIGHT_ID_BATTERY:I = 0x3

.field static final LIGHT_ID_BLUETOOTH:I = 0x6

.field static final LIGHT_ID_BUTTONS:I = 0x2

.field static final LIGHT_ID_COUNT:I = 0x8

.field static final LIGHT_ID_KEYBOARD:I = 0x1

.field static final LIGHT_ID_NOTIFICATIONS:I = 0x4

.field static final LIGHT_ID_WIFI:I = 0x7

.field static final LIGHT_SEC_FLASH:I = 0xa

.field static final LIGHT_SEC_FLASH_CHARGING:I = 0xa

.field static final LIGHT_SEC_FLASH_CHARGING_ERROR:I = 0xb

.field static final LIGHT_SEC_FLASH_FULLY_CHARGED:I = 0xe

.field static final LIGHT_SEC_FLASH_LOW_BATTERY:I = 0xd

.field static final LIGHT_SEC_FLASH_MISSED_NOTIFICATION:I = 0xc

.field private static final SVCLED_ATTENTION_MASK:I = 0x0

.field private static final SVCLED_BATTERY_MASK:I = 0x39

.field private static final SVCLED_CHARGING:I = 0x8

.field private static final SVCLED_CHARGING_ERROR:I = 0x1

.field private static final SVCLED_FULLY_CHARGED:I = 0x20

.field private static final SVCLED_LOW_BATTERY:I = 0x10

.field private static final SVCLED_MISSED_NOTIFICATION:I = 0x2

.field private static final SVCLED_MODE_CHARGING:I = 0x3

.field private static final SVCLED_MODE_CHARGING_ERROR:I = 0x0

.field private static final SVCLED_MODE_COUNT:I = 0x6

.field private static final SVCLED_MODE_FULLY_CHARGED:I = 0x5

.field private static final SVCLED_MODE_LOW_BATTERY:I = 0x4

.field private static final SVCLED_MODE_MISSED_NOTIFICATION:I = 0x1

.field private static final SVCLED_MODE_OTHERS:I = 0x2

.field private static final SVCLED_NOTIFICATIONS_MASK:I = 0x6

.field private static final SVCLED_OFF:I = 0x0

.field private static final SVCLED_OTHERS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LightsService"

.field private static mPrevSvcLedState:I

.field private static mSvcLedColor:I

.field private static mSvcLedMode:I

.field private static mSvcLedOffMS:I

.field private static mSvcLedOnMS:I

.field private static mSvcLedState:I

.field private static final model:Ljava/lang/String;


# instance fields
.field private isHappyNight:Z

.field private isLightSensorEnabled:Z

.field private mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private final mForcedSvcLEDOnTask:Lcom/android/server/LightsService$ForcedSvcLEDOnTask;

.field private mH:Landroid/os/Handler;

.field private mInitCompleteForSvcLED:Z

.field private mLedBrightnessModeIsChanged:Z

.field private mLedLowPower:I

.field private mLedLowPowerPath:Ljava/lang/String;

.field private final mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private final mLights:[Lcom/android/server/LightsService$Light;

.field private mNativePointer:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSvcLEDHandler:Landroid/os/Handler;

.field private mSvcLEDThread:Landroid/os/HandlerThread;

.field private mUpdateSvcLEDDelay:I

.field private mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

.field private mUseLEDAutoBrightnessEnabled:Z

.field private mUsePatternLED:Z

.field private mUseSoftwareAutoBrightness:Z

.field private mWakeLockAquireTask:Lcom/android/server/LightsService$WakeLockAquireTask;

.field private wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    sput v0, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    sput v0, Lcom/android/server/LightsService;->mSvcLedColor:I

    sput v0, Lcom/android/server/LightsService;->mSvcLedMode:I

    sput v0, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sput v0, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    const-string v0, "ro.product.model"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/LightsService;->model:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/android/server/LightsService$ForcedSvcLEDOnTask;

    invoke-direct {v2, p0, v5}, Lcom/android/server/LightsService$ForcedSvcLEDOnTask;-><init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mForcedSvcLEDOnTask:Lcom/android/server/LightsService$ForcedSvcLEDOnTask;

    iput-boolean v4, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z

    iput-boolean v4, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightnessEnabled:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/LightsService;->mUsePatternLED:Z

    iput-boolean v4, p0, Lcom/android/server/LightsService;->isHappyNight:Z

    const v2, 0x927c0

    iput v2, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDDelay:I

    new-instance v2, Lcom/android/server/LightsService$WakeLockAquireTask;

    invoke-direct {v2, p0, v5}, Lcom/android/server/LightsService$WakeLockAquireTask;-><init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mWakeLockAquireTask:Lcom/android/server/LightsService$WakeLockAquireTask;

    new-array v2, v6, [Lcom/android/server/LightsService$Light;

    iput-object v2, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    new-instance v2, Lcom/android/server/LightsService$1;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$1;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    new-instance v2, Lcom/android/server/LightsService$3;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$3;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    iput-boolean v4, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    new-instance v2, Lcom/android/server/LightsService$4;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$4;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    const-string v2, "/sys/class/sec/led/led_lowpower"

    iput-object v2, p0, Lcom/android/server/LightsService;->mLedLowPowerPath:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    iput-boolean v4, p0, Lcom/android/server/LightsService;->mLedBrightnessModeIsChanged:Z

    invoke-static {}, Lcom/android/server/LightsService;->init_native()I

    move-result v2

    iput v2, p0, Lcom/android/server/LightsService;->mNativePointer:I

    iput-object p1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    const-string v2, "hardware"

    iget-object v3, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v2, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    new-instance v3, Lcom/android/server/LightsService$Light;

    invoke-direct {v3, p0, v1, v5}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;ILcom/android/server/LightsService$1;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z

    new-instance v2, Lcom/android/server/LightsService$2;

    const-string v3, "mSvcLEDThread"

    invoke-direct {v2, p0, v3}, Lcom/android/server/LightsService$2;-><init>(Lcom/android/server/LightsService;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    iget-object v3, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    monitor-enter v3

    :goto_1
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/LightsService$SvcLEDReceiver;

    invoke-direct {v3, p0, v5}, Lcom/android/server/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .end local v0           #filter:Landroid/content/IntentFilter;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/LightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mLedBrightnessModeIsChanged:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/LightsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    return v0
.end method

.method static synthetic access$1300(IIIIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    invoke-static/range {p0 .. p6}, Lcom/android/server/LightsService;->setLight_native(IIIIIII)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/LightsService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/LightsService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/LightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUseSoftwareAutoBrightness:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/LightsService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mUseSoftwareAutoBrightness:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/server/LightsService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightnessEnabled:Z

    return p1
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/LightsService;->model:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LightsService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUsePatternLED:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/LightsService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mUsePatternLED:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/server/LightsService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LightsService;->setSvcLEDBrightnessLocked(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/LightsService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/LightsService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/LightsService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDDelay:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/LightsService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/LightsService;->wl:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$WakeLockAquireTask;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/LightsService;->mWakeLockAquireTask:Lcom/android/server/LightsService$WakeLockAquireTask;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/LightsService;IIIIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/server/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LightsService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$ForcedSvcLEDOnTask;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/LightsService;->mForcedSvcLEDOnTask:Lcom/android/server/LightsService$ForcedSvcLEDOnTask;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/LightsService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/LightsService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/LightsService;->clearSvcLedStateLocked(I)V

    return-void
.end method

.method private clearSvcLedStateLocked(I)V
    .locals 7
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method private enableSvcLEDLightSensorLocked(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightnessEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    goto :goto_0
.end method

.method private fileWriteInt(Ljava/lang/String;I)V
    .locals 7
    .parameter "filePath"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .local v2, out:Ljava/io/FileOutputStream;
    const-string v4, "LightsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/LightsService;->mLedLowPowerPath:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightnessEnabled:Z

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static native finalize_native(I)V
.end method

.method private static native init_native()I
.end method

.method private static native setLight_native(IIIIIII)V
.end method

.method private setSvcLEDBrightnessLocked(I)V
    .locals 13
    .parameter "sensorValue"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v9, 0x0

    .local v9, ledLowPower:I
    const/16 v0, 0x14

    if-ge p1, v0, :cond_0

    const/4 v9, 0x1

    :cond_0
    iput-boolean v5, p0, Lcom/android/server/LightsService;->mLedBrightnessModeIsChanged:Z

    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightnessEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    if-eq v9, v0, :cond_1

    iput v9, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    iget-object v0, p0, Lcom/android/server/LightsService;->mLedLowPowerPath:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/LightsService;->fileWriteInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LightsService;->mLedBrightnessModeIsChanged:Z

    :cond_1
    const/4 v12, 0x0

    .local v12, priority:I
    const/4 v11, 0x1

    .local v11, operator:I
    const/4 v10, -0x1

    .local v10, mode:I
    const/4 v12, 0x0

    :goto_0
    const/4 v0, 0x6

    if-ge v12, v0, :cond_2

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    shr-int/2addr v0, v12

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :cond_2
    packed-switch v12, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    const/4 v1, 0x5

    aget-object v3, v0, v1

    sget v4, Lcom/android/server/LightsService;->mSvcLedColor:I

    sget v6, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sget v7, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    move v8, v5

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/LightsService$Light;->access$2800(Lcom/android/server/LightsService$Light;IIIII)V

    :goto_1
    return-void

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, v2

    sget v1, Lcom/android/server/LightsService;->mSvcLedColor:I

    const/16 v2, 0xb

    sget v3, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$2800(Lcom/android/server/LightsService$Light;IIIII)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, v3

    sget v1, Lcom/android/server/LightsService;->mSvcLedColor:I

    const/16 v2, 0xc

    sget v3, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$2800(Lcom/android/server/LightsService$Light;IIIII)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, v3

    sget v1, Lcom/android/server/LightsService;->mSvcLedColor:I

    sget v2, Lcom/android/server/LightsService;->mSvcLedMode:I

    sget v3, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$2800(Lcom/android/server/LightsService$Light;IIIII)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, v2

    sget v1, Lcom/android/server/LightsService;->mSvcLedColor:I

    const/16 v2, 0xa

    sget v3, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$2800(Lcom/android/server/LightsService$Light;IIIII)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, v2

    sget v1, Lcom/android/server/LightsService;->mSvcLedColor:I

    const/16 v2, 0xd

    sget v3, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$2800(Lcom/android/server/LightsService$Light;IIIII)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, v2

    sget v1, Lcom/android/server/LightsService;->mSvcLedColor:I

    const/16 v2, 0xe

    sget v3, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    #calls: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$2800(Lcom/android/server/LightsService$Light;IIIII)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setSvcLedStateLocked(IIIIIZ)V
    .locals 3
    .parameter "id"
    .parameter "color"
    .parameter "mode"
    .parameter "onMS"
    .parameter "offMS"
    .parameter "set"

    .prologue
    const-string v1, "LightsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] setSvcLedStateLocked:: id = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", color = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    const-string v0, "Off"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", set = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p6, :cond_1

    const-string v0, "On"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    sput v0, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    if-eqz p6, :cond_6

    const/16 v0, 0xa

    if-ne p3, v0, :cond_2

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x3a

    or-int/lit8 v0, v0, 0x8

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    :goto_2
    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/LightsService;->mWakeLockAquireTask:Lcom/android/server/LightsService$WakeLockAquireTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "Off"

    goto :goto_1

    :cond_2
    const/16 v0, 0xe

    if-ne p3, v0, :cond_3

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x3a

    or-int/lit8 v0, v0, 0x20

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_2

    :cond_3
    const/16 v0, 0xd

    if-ne p3, v0, :cond_4

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x3a

    or-int/lit8 v0, v0, 0x10

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_2

    :cond_4
    const/16 v0, 0xb

    if-ne p3, v0, :cond_5

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x3a

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_2

    :cond_5
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] setSvcLedStateLocked::Not Support mode in LIGHT_ID_BATTERY. mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x3a

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_2

    :cond_7
    const/4 v0, 0x4

    if-ne p1, v0, :cond_a

    if-eqz p6, :cond_9

    const/16 v0, 0xc

    if-ne p3, v0, :cond_8

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_2

    :cond_8
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    sput p2, Lcom/android/server/LightsService;->mSvcLedColor:I

    sput p3, Lcom/android/server/LightsService;->mSvcLedMode:I

    sput p4, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sput p5, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    goto :goto_2

    :cond_9
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x7

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_2

    :cond_a
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] setSvcLedStateLocked::Not Support. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    invoke-static {v0}, Lcom/android/server/LightsService;->finalize_native(I)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getLight(I)Lcom/android/server/LightsService$Light;
    .locals 1
    .parameter "id"

    .prologue
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, p1

    return-object v0
.end method

.method systemReady()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v2, "LightsService"

    const-string v3, "[SvcLED] systemReady"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v1, updateSvcLEDIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-static {v2, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    new-instance v2, Landroid/hardware/SystemSensorManager;

    iget-object v3, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v2, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightnessEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    :cond_0
    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "LightsService"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LightsService;->wl:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method setLight(ILcom/android/server/LightsService$Light;)V
    .locals 1
    .parameter "id"
    .parameter "light"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aput-object p2, v0, p1

    return-void
.end method
