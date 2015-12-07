.class public Landroid/net/ethernet/EthernetManager;
.super Ljava/lang/Object;
.source "EthernetManager.java"


# static fields
.field public static final ETH_DEVICE_SCAN_RESULT_READY:I = 0x0

.field public static final ETH_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.ethernet.ETH_STATE_CHANGED"

.field public static final ETH_STATE_DISABLED:I = 0x1

.field public static final ETH_STATE_ENABLED:I = 0x2

.field public static final ETH_STATE_ENABLING:I = 0x3

.field public static final ETH_STATE_UNKNOWN:I = 0x0

.field public static final EXTRA_ETH_STATE:Ljava/lang/String; = "eth_state"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_PREVIOUS_ETH_STATE:Ljava/lang/String; = "previous_eth_state"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.ethernet.STATE_CHANGE"

.field public static final TAG:Ljava/lang/String; = "EthernetManager"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Landroid/net/ethernet/IEthernetManager;


# direct methods
.method public constructor <init>(Landroid/net/ethernet/IEthernetManager;Landroid/os/Handler;)V
    .locals 2
    .parameter "service"
    .parameter "handler"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "EthernetManager"

    const-string v1, "Init Ethernet Manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    iput-object p2, p0, Landroid/net/ethernet/EthernetManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public UpdateEthDevInfo(Landroid/net/ethernet/EthernetDevInfo;)V
    .locals 3
    .parameter "info"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1, p1}, Landroid/net/ethernet/IEthernetManager;->UpdateEthDevInfo(Landroid/net/ethernet/EthernetDevInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not update ethernet device info"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public ethConfigured()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->isEthConfigured()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ethSetDefaultConf()V
    .locals 2

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    const-string v1, "dhcp"

    invoke-interface {v0, v1}, Landroid/net/ethernet/IEthernetManager;->setEthMode(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCheckConnecting()I
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getCheckConnecting()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeviceNameList()[Ljava/lang/String;
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getDeviceNameList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEthState()I
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getEthState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHWConnected()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getHWConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getSavedEthConfig()Landroid/net/ethernet/EthernetDevInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not get eth config"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStackConnected()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getStackConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTotalInterface()I
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->getTotalInterface()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEthConfigured()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->isEthConfigured()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not check eth config state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEthDeviceFound()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1}, Landroid/net/ethernet/IEthernetManager;->isEthDeviceFound()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCheckConnecting(I)V
    .locals 3
    .parameter "value"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1, p1}, Landroid/net/ethernet/IEthernetManager;->setCheckConnecting(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not setCheckConnecting"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEthEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    :try_start_0
    iget-object v2, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-interface {v2, v1}, Landroid/net/ethernet/IEthernetManager;->setEthState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not set new state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setEthernetState(I)V
    .locals 3
    .parameter "state"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1, p1}, Landroid/net/ethernet/IEthernetManager;->setEthState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not set new state"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHWConnected(Z)V
    .locals 3
    .parameter "value"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1, p1}, Landroid/net/ethernet/IEthernetManager;->setHWConnected(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not setHWConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setStackConnected(Z)V
    .locals 3
    .parameter "value"

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/ethernet/EthernetManager;->mService:Landroid/net/ethernet/IEthernetManager;

    invoke-interface {v1, p1}, Landroid/net/ethernet/IEthernetManager;->setStackConnected(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "EthernetManager"

    const-string v2, "Can not setStackConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
