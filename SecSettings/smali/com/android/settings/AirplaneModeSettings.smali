.class public Lcom/android/settings/AirplaneModeSettings;
.super Landroid/app/Fragment;
.source "AirplaneModeSettings.java"


# instance fields
.field private airplaneModeDesc:Landroid/widget/TextView;

.field private airplaneModeInfo:Landroid/widget/TextView;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 46
    new-instance v0, Lcom/android/settings/AirplaneModeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeSettings$1;-><init>(Lcom/android/settings/AirplaneModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->mHandler:Landroid/os/Handler;

    .line 57
    new-instance v0, Lcom/android/settings/AirplaneModeSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirplaneModeSettings$2;-><init>(Lcom/android/settings/AirplaneModeSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirplaneModeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeSettings;->onAirplaneModeChanged()V

    return-void
.end method

.method private isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 111
    const-string v5, "AirplaneModeSettings"

    const-string v6, "onAirplaneModeChanged()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v5, p0, Lcom/android/settings/AirplaneModeSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 114
    .local v2, serviceState:Landroid/telephony/ServiceState;
    const/4 v0, 0x0

    .line 115
    .local v0, airplaneModeEnabled:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/AirplaneModeSettings;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 117
    invoke-direct {p0, v0}, Lcom/android/settings/AirplaneModeSettings;->updateAirplaneModeInfo(Z)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    move v0, v3

    .line 120
    :goto_1
    const-string v5, "AirplaneModeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAirplaneModeChanged - serviceState.getState() return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v5, "AirplaneModeSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onAirplaneModeChanged - airplaneModeEnabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v1, v3

    .line 123
    .local v1, expectAirplaneModeOn:Z
    :goto_2
    if-ne v0, v1, :cond_0

    .line 124
    invoke-direct {p0, v0}, Lcom/android/settings/AirplaneModeSettings;->updateAirplaneModeInfo(Z)V

    goto :goto_0

    .end local v1           #expectAirplaneModeOn:Z
    :cond_2
    move v0, v4

    .line 119
    goto :goto_1

    :cond_3
    move v1, v4

    .line 122
    goto :goto_2
.end method

.method private updateAirplaneModeInfo(Z)V
    .locals 5
    .parameter "airplaneModeEnabled"

    .prologue
    .line 134
    const-string v2, "AirplaneModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAirplaneModeInfo() - airplaneModeEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-eqz p1, :cond_0

    .line 139
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090f4a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, info:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 145
    .local v1, textColor:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSettings;->airplaneModeInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v2, p0, Lcom/android/settings/AirplaneModeSettings;->airplaneModeInfo:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 147
    return-void

    .line 142
    .end local v0           #info:Ljava/lang/String;
    .end local v1           #textColor:I
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090f4b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    .restart local v0       #info:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .restart local v1       #textColor:I
    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 71
    const v1, 0x7f04000c

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 72
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b0029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/AirplaneModeSettings;->airplaneModeInfo:Landroid/widget/TextView;

    .line 74
    const v1, 0x7f0b0028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/AirplaneModeSettings;->airplaneModeDesc:Landroid/widget/TextView;

    .line 75
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSettings;->airplaneModeDesc:Landroid/widget/TextView;

    const v2, 0x7f090f48

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 79
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AirplaneModeSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/AirplaneModeSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 80
    iget-object v1, p0, Lcom/android/settings/AirplaneModeSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 82
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 101
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 102
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AirplaneModeSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 89
    iget-object v0, p0, Lcom/android/settings/AirplaneModeSettings;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 90
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/AirplaneModeSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    :cond_0
    return-void
.end method
