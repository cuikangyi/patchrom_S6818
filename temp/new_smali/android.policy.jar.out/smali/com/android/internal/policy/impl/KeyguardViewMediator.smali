.class public Lcom/android/internal/policy/impl/KeyguardViewMediator;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardViewCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardViewMediator$5;
    }
.end annotation


# static fields
.field protected static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final DBG_WAKE:Z = false

.field private static final DEBUG:Z = false

.field private static final DELAYED_KEYGUARD_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

.field private static final ENABLE_INSECURE_STATUS_BAR_EXPAND:Z = true

.field private static final HIDE:I = 0x3

.field private static final KEYGUARD_DISPLAY_TIMEOUT_DELAY_DEFAULT:I = 0x7530

.field private static final KEYGUARD_DONE:I = 0x9

.field private static final KEYGUARD_DONE_AUTHENTICATING:I = 0xb

.field private static final KEYGUARD_DONE_DRAWING:I = 0xa

.field private static final KEYGUARD_DONE_DRAWING_TIMEOUT_MS:I = 0x7d0

.field private static final KEYGUARD_LOCK_AFTER_DELAY_DEFAULT:I = 0x1388

.field private static final KEYGUARD_TIMEOUT:I = 0xd

.field private static final NOTIFY_SCREEN_OFF:I = 0x6

.field private static final NOTIFY_SCREEN_ON:I = 0x7

.field private static final RESET:I = 0x4

.field private static final SET_HIDDEN:I = 0xc

.field private static final SHOW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "KeyguardViewMediator"

.field private static final TIMEOUT:I = 0x1

.field private static final VERIFY_UNLOCK:I = 0x5

.field private static final WAKE_WHEN_READY:I = 0x8


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field private mContext:Landroid/content/Context;

.field private mDelayedShowingSequence:I

.field private mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

.field private mExternallyEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private mHidden:Z

.field mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

.field private mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

.field private mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockSoundId:I

.field private mLockSoundStreamId:I

.field private final mLockSoundVolume:F

.field private mLockSounds:Landroid/media/SoundPool;

.field private mMasterStreamType:I

.field private mNeedToReshowWhenReenabled:Z

.field private mPM:Landroid/os/PowerManager;

.field private mPhoneState:Ljava/lang/String;

.field mRealPowerManager:Landroid/os/LocalPowerManager;

.field private mScreenOn:Z

.field private mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mShowLockIcon:Z

.field private mShowing:Z

.field private mShowingLockIcon:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSuppressNextLockSound:Z

.field private mSystemReady:Z

.field private mUnlockSoundId:I

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserPresentIntent:Landroid/content/Intent;

.field private mWaitingUntilKeyguardVisible:Z

.field private mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakelockSequence:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/os/LocalPowerManager;)V
    .locals 11
    .parameter "context"
    .parameter "callback"
    .parameter "powerManager"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$1;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$2;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$3;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator$4;-><init>(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mRealPowerManager:Landroid/os/LocalPowerManager;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "show keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "keyguardWakeAndHandOff"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .local v7, filter:Landroid/content/IntentFilter;
    const-string v0, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mCallback:Lcom/android/internal/policy/impl/PhoneWindowManager;

    new-instance v0, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/MiuiKeyguardUpdateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mInfoCallback:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    new-instance v0, Lmiui/security/MiuiLockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v0, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardViewProperties;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiLockPatternKeyguardViewProperties;-><init>(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    new-instance v0, Lcom/android/internal/policy/impl/MiuiKeyguardViewManager;

    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/MiuiKeyguardViewManager;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewProperties;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    const/high16 v1, 0x2800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .local v6, cr:Landroid/content/ContentResolver;
    const-string v0, "show_status_bar_lock"

    const/4 v1, 0x0

    invoke-static {v6, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowLockIcon:Z

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const-string v0, "lock_sound"

    invoke-static {v6, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, soundPath:Ljava/lang/String;
    if-eqz v9, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, v9, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundId:I

    :cond_0
    if-eqz v9, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundId:I

    if-nez v0, :cond_1

    :cond_1
    const-string v0, "unlock_sound"

    invoke-static {v6, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-virtual {v0, v9, v1}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUnlockSoundId:I

    :cond_2
    if-eqz v9, :cond_3

    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUnlockSoundId:I

    if-nez v0, :cond_3

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .local v8, lockSoundDefaultAttenuation:I
    const-wide/high16 v0, 0x4024

    div-int/lit8 v2, v8, 0x14

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundVolume:F

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .local v10, userFilter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    .end local v8           #lockSoundDefaultAttenuation:I
    .end local v9           #soundPath:Ljava/lang/String;
    .end local v10           #userFilter:Landroid/content/IntentFilter;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleTimeout(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleShow()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleHide()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleReset()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleVerifyUnlock()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOff()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/KeyguardViewMediator;Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleWakeWhenReady(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDone(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleKeyguardDoneDrawing()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleSetHidden(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onUserSwitched(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/KeyguardViewMediator;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->onUserRemoved(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/KeyguardViewMediator;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/KeyguardViewMediator;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/KeyguardViewMediator;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/KeyguardViewMediator;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/KeyguardViewMediator;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    return v0
.end method

.method private adjustStatusBarLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-nez v2, :cond_1

    const-string v2, "KeyguardViewMediator"

    const-string v3, "Could not get status bar manager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->postAdjustStatusBarLocked()V

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowLockIcon:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const v3, 0x10404f6

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, contentDescription:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v3, "secure"

    const v4, 0x108054b

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    .end local v0           #contentDescription:Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    .local v1, flags:I
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v2, :cond_3

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-nez v2, :cond_5

    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x8

    or-int/2addr v1, v2

    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .end local v1           #flags:I
    :cond_4
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v3, "secure"

    invoke-virtual {v2, v3}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowingLockIcon:Z

    goto :goto_1

    .restart local v1       #flags:I
    :cond_5
    const/high16 v2, 0x1

    or-int/2addr v1, v2

    goto :goto_2
.end method

.method private adjustUserActivityLocked()V
    .locals 2

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .local v0, enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mRealPowerManager:Landroid/os/LocalPowerManager;

    invoke-interface {v1, v0}, Landroid/os/LocalPowerManager;->enableUserActivity(Z)V

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    :cond_1
    return-void

    .end local v0           #enabled:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doKeyguardLocked()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardViewManager;->isShowing()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "keyguard.no_require_sim"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_6

    move v2, v4

    .local v2, requireSim:Z
    :goto_1
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    .local v1, provisioned:Z
    iget-object v6, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    .local v3, state:Lcom/android/internal/telephony/IccCard$State;
    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard$State;->isPinLocked()Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v6, :cond_2

    sget-object v6, Lcom/android/internal/telephony/IccCard$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v6, :cond_7

    :cond_2
    if-eqz v2, :cond_7

    :cond_3
    move v0, v4

    .local v0, lockedOrMissing:Z
    :goto_2
    if-nez v0, :cond_4

    if-eqz v1, :cond_0

    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v0, :cond_0

    :cond_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showLocked()V

    goto :goto_0

    .end local v0           #lockedOrMissing:Z
    .end local v1           #provisioned:Z
    .end local v2           #requireSim:Z
    .end local v3           #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_6
    move v2, v5

    goto :goto_1

    .restart local v1       #provisioned:Z
    .restart local v2       #requireSim:Z
    .restart local v3       #state:Lcom/android/internal/telephony/IccCard$State;
    :cond_7
    move v0, v5

    goto :goto_2
.end method

.method private handleHide()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "attempt to hide the keyguard while waking, ignored"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->playSounds(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->hide()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->updateActivityLockScreenState()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustUserActivityLocked()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleKeyguardDone(Z)V
    .locals 4
    .parameter "wakeup"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->handleHide()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUserPresentIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private handleKeyguardDoneDrawing()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOff()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->onScreenTurnedOff()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNotifyScreenOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    .locals 1
    .parameter "showListener"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleReset()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->reset()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleSetHidden(Z)V
    .locals 1
    .parameter "isHidden"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->updateActivityLockScreenState()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustUserActivityLocked()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleShow()V
    .locals 2
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSystemReady:Z

    if-nez v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->playSounds(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->updateActivityLockScreenState()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustUserActivityLocked()V

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->adjustStatusBarLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "lock"

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private handleTimeout(I)V
    .locals 1
    .parameter "seq"

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleVerifyUnlock()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->verifyUnlock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->updateActivityLockScreenState()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleWakeWhenReady(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->wakeWhenReadyTq(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KeyguardViewMediator"

    const-string v1, "mKeyguardViewManager.wakeWhenReadyTq did not poke wake lock, so poke it ourselves"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "KeyguardViewMediator"

    const-string v1, "mWakeLock not held in mKeyguardViewManager.wakeWhenReadyTq"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hideLocked()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private isWakeKeyWhenKeyguardShowing(IZ)Z
    .locals 0
    .parameter "keyCode"
    .parameter "isDocked"

    .prologue
    sparse-switch p1, :sswitch_data_0

    const/4 p2, 0x1

    .end local p2
    :goto_0
    :sswitch_0
    return p2

    .restart local p2
    :sswitch_1
    const/4 p2, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method private notifyScreenOffLocked()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private notifyScreenOnLocked(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    .locals 3
    .parameter "showListener"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onUserRemoved(I)V
    .locals 1
    .parameter "userId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeUser(I)V

    return-void
.end method

.method private onUserSwitched(I)V
    .locals 1
    .parameter "userId"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setCurrentUser(I)V

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected playSounds(Z)V
    .locals 8
    .parameter "locked"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    if-eqz v0, :cond_1

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .local v7, cr:Landroid/content/ContentResolver;
    const-string v0, "lockscreen_sounds_enabled"

    invoke-static {v7, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    if-eqz p1, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundId:I

    .local v1, whichSound:I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundStreamId:I

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->stop(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mMasterStreamType:I

    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mMasterStreamType:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSounds:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundVolume:F

    iget v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundVolume:F

    const/high16 v6, 0x3f80

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockSoundStreamId:I

    goto :goto_0

    .end local v1           #whichSound:I
    :cond_3
    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUnlockSoundId:I

    goto :goto_1
.end method

.method private resetStateLocked()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private showLocked()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowKeyguardWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private updateActivityLockScreenState()V
    .locals 2

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->setLockScreenShown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private verifyUnlockLocked()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private wakeWhenReadyLocked(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeAndHandOff:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method callNotifyScreenOffLocked()V
    .locals 0
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->notifyScreenOffLocked()V

    return-void
.end method

.method public doKeyguardTimeout()V
    .locals 3

    .prologue
    const/16 v2, 0xd

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getStatusBarManager()Landroid/app/StatusBarManager;
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method public isInputRestricted()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewProperties;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyguardDone(Z)V
    .locals 1
    .parameter "authenticated"

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->keyguardDone(ZZ)V

    return-void
.end method

.method public keyguardDone(ZZ)V
    .locals 5
    .parameter "authenticated"
    .parameter "wakeup"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    const v3, 0x11170

    const/4 v4, 0x2

    :try_start_0
    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    if-eqz p2, :cond_2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->clearFailedAttempts()V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-interface {v1, p1}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keyguardDoneDrawing()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onScreenTurnedOff(I)V
    .locals 21
    .parameter "why"

    .prologue
    monitor-enter p0

    const/16 v18, 0x0

    :try_start_0
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks()Z

    move-result v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v18

    if-nez v18, :cond_2

    :cond_0
    const/4 v10, 0x1

    .local v10, lockImmediately:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideLocked()V

    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .end local v10           #lockImmediately:Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .restart local v10       #lockImmediately:Z
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->notifyScreenOffLocked()V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_1

    .end local v10           #lockImmediately:Z
    :catchall_0
    move-exception v18

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .restart local v10       #lockImmediately:Z
    :cond_4
    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    if-nez v10, :cond_8

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .local v4, cr:Landroid/content/ContentResolver;
    const-string v18, "screen_off_timeout"

    const/16 v19, 0x7530

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v5, v0

    .local v5, displayTimeout:J
    const-string v18, "lock_screen_lock_after_timeout"

    const/16 v19, 0x1388

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v8, v0

    .local v8, lockAfterTimeout:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v11

    .local v11, policyTimeout:J
    const-wide/16 v18, 0x0

    cmp-long v18, v11, v18

    if-lez v18, :cond_6

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    sub-long v18, v11, v5

    move-wide/from16 v0, v18

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .local v14, timeout:J
    :goto_2
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-gtz v18, :cond_7

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    goto/16 :goto_1

    .end local v14           #timeout:J
    :cond_6
    move-wide v14, v8

    .restart local v14       #timeout:J
    goto :goto_2

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    add-long v16, v18, v14

    .local v16, when:J
    new-instance v7, Landroid/content/Intent;

    const-string v18, "com.android.internal.policy.impl.PhoneWindowManager.DELAYED_KEYGUARD"

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, intent:Landroid/content/Intent;
    const-string v18, "seq"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/high16 v20, 0x1000

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .local v13, sender:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3, v13}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v5           #displayTimeout:J
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #lockAfterTimeout:J
    .end local v11           #policyTimeout:J
    .end local v13           #sender:Landroid/app/PendingIntent;
    .end local v14           #timeout:J
    .end local v16           #when:J
    :cond_8
    const/16 v18, 0x4

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    .locals 1
    .parameter "showListener"

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mScreenOn:Z

    iget v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mDelayedShowingSequence:I

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->notifyScreenOnLocked(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 2
    .parameter "simState"

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewMediator$5;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    :cond_0
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :pswitch_1
    monitor-enter p0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    :goto_2
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_2
    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :pswitch_2
    monitor-enter p0

    :try_start_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    :goto_3
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :cond_3
    :try_start_5
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :pswitch_3
    monitor-enter p0

    :try_start_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSystemReady()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSystemReady:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->doKeyguardLocked()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onWakeKeyWhenKeyguardShowingTq(IZ)Z
    .locals 1
    .parameter "keyCode"
    .parameter "isDocked"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->isWakeKeyWhenKeyguardShowing(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->wakeWhenReadyLocked(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWakeMotionWhenKeyguardShowingTq()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->wakeWhenReadyLocked(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->pokeWakelock(I)V

    return-void
.end method

.method public pokeWakelock(I)V
    .locals 5
    .parameter "holdMs"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit p0

    return-void

    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method postAdjustStatusBarLocked()V
    .locals 0
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    return-void
.end method

.method public setHidden(Z)V
    .locals 5
    .parameter "isHidden"

    .prologue
    const/16 v4, 0xc

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public setKeyguardEnabled(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    if-nez p1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mShowing:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->hideLocked()V

    :cond_1
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    if-eqz p1, :cond_1

    :try_start_1
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mNeedToReshowWhenReenabled:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->resetStateLocked()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showLocked()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_2
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mWaitingUntilKeyguardVisible:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method suppressNextLockSound()V
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mSuppressNextLockSound:Z

    return-void
.end method

.method public verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 2
    .parameter "callback"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExternallyEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "KeyguardViewMediator"

    const-string v1, "verifyUnlock called when not externally disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;->onKeyguardExitResult(Z)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mExitSecureCallback:Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->verifyUnlockLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method callShowLocked()V
    .locals 0
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewMediator;->showLocked()V

    return-void
.end method
