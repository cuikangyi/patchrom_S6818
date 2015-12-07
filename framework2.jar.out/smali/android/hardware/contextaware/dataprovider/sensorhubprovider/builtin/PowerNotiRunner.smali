.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PowerNotiRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "PowerNotiRunner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V
    .locals 1
    .parameter "context"
    .parameter "observable"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V

    .line 42
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 146
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 147
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->disable()V

    .line 148
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 134
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 135
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    .line 136
    return-void
.end method

.method public getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_POWER_NOTI:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Noti"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getDataPacket()[B
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method protected getInstLibType()B
    .locals 1

    .prologue
    .line 63
    const/4 v0, -0x1

    return v0
.end method

.method protected getObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 123
    return-object p0
.end method

.method public updateApPowerStatus(I)V
    .locals 6
    .parameter "status"

    .prologue
    const/4 v5, 0x0

    .line 97
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v1, dispData:Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PowerNotiRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, names:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 101
    .local v0, data:I
    const/16 v3, -0x2f

    if-ne p1, v3, :cond_1

    .line 102
    const/4 v0, 0x1

    .line 109
    :goto_0
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    aget-object v4, v2, v5

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    aget-object v3, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->display(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PowerNotiRunner;->getContextType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v3, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->notifyListener(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 114
    :cond_0
    return-void

    .line 103
    :cond_1
    const/16 v3, -0x2e

    if-ne p1, v3, :cond_0

    .line 104
    const/4 v0, 0x2

    goto :goto_0
.end method
