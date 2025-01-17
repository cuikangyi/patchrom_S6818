.class public Lcom/broadcom/bt/service/framework/PowerManagementService;
.super Lcom/broadcom/bt/service/framework/IPowerManager$Stub;
.source "PowerManagementService.java"


# static fields
.field private static final BTOFF_FMOFF:I = 0x0

.field private static final BTOFF_FMON:I = 0x2

.field private static final BTON_FMOFF:I = 0x1

.field private static final BTON_FMON:I = 0x3

.field private static final DBG:Z = true

.field private static final MESSAGE_BT_BOOTUP:I = 0x5

.field public static final SERVICE_NAME:Ljava/lang/String; = "bt_fm_radio"

.field private static final TAG:Ljava/lang/String; = "PowerManagmentService"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/broadcom/bt/service/framework/PowerManagementService;->classInitNative()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/IPowerManager$Stub;-><init>()V

    iput-object p1, p0, Lcom/broadcom/bt/service/framework/PowerManagementService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->initializeNativeDataNative()V

    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native disableBtNative()I
.end method

.method private native disableFmNative()I
.end method

.method private native enableBtNative()I
.end method

.method private native enableFmNative()I
.end method

.method private native getCurrentStateNative()I
.end method

.method private native initializeNativeDataNative()V
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    const-string v0, "PowerManagmentService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public disableBt()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->disableBtNative()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, t:Ljava/lang/Throwable;
    const-string v2, "PowerManagmentService"

    const-string v3, "Unable to disable BT"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public disableFm()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->disableFmNative()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, t:Ljava/lang/Throwable;
    const-string v3, "PowerManagmentService"

    const-string v4, "Unable to disable FM"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.brcm.fm_powermanagement"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v3, "action"

    const-string v4, "disable"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/broadcom/bt/service/framework/PowerManagementService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableBt()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->enableBtNative()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, t:Ljava/lang/Throwable;
    const-string v2, "PowerManagmentService"

    const-string v3, "Unable to enbale BT"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableFm()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.brcm.fm_powermanagement"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v6, "action"

    const-string v7, "enable"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/broadcom/bt/service/framework/PowerManagementService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.BLUETOOTH"

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v2, 0x78

    .local v2, retcount:I
    const-string v0, "0"

    .local v0, hotoffstate:Ljava/lang/String;
    move v3, v2

    .end local v2           #retcount:I
    .local v3, retcount:I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    .end local v3           #retcount:I
    .restart local v2       #retcount:I
    if-lez v3, :cond_0

    const-wide/16 v6, 0xfa

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const-string v6, "bluetooth.hotoff.state"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "PowerManagmentService"

    const-string v7, "Hot Off State Succeeds"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v6, "0"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "PowerManagmentService"

    const-string v7, "enableFM failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return v5

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->enableFmNative()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    const/4 v5, 0x1

    goto :goto_2

    :catch_0
    move-exception v4

    .local v4, t:Ljava/lang/Throwable;
    const-string v6, "PowerManagmentService"

    const-string v7, "Unable to enable FM"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v4           #t:Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    goto :goto_1

    :cond_3
    move v3, v2

    .end local v2           #retcount:I
    .restart local v3       #retcount:I
    goto :goto_0
.end method

.method public isBtEnabled()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->getCurrentStateNative()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, mCurrentState:I
    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .end local v0           #mCurrentState:I
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "PowerManagmentService"

    const-string v3, "Unable to get current BT state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1           #t:Ljava/lang/Throwable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isfmEnabled()Z
    .locals 4

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/PowerManagementService;->getCurrentStateNative()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .local v0, mCurrentState:I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    .end local v0           #mCurrentState:I
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "PowerManagmentService"

    const-string v3, "unable to get current FM state"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1           #t:Ljava/lang/Throwable;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
