.class Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;
.super Landroid/bluetooth/IBluetoothLEGattCallback$Stub;
.source "BluetoothLEGattProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bluetoothle/BluetoothLEGattProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;


# direct methods
.method constructor <init>(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothLEGattCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDiscoverCharResult(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "servicePath"
    .parameter "charPaths"

    .prologue
    const/4 v4, 0x0

    const-string v5, "/service"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, devicePath:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #calls: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$300(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$200(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mLEClientServiceCBTracker:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$400(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;

    .local v1, callBack:Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;
    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    :try_start_0
    invoke-interface {v1, v0, p2}, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;->onDiscoverCharacteristics(Ljava/lang/String;[Ljava/lang/String;)V

    .end local v1           #callBack:Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;
    :cond_0
    :goto_0
    return-void

    .restart local v1       #callBack:Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;
    :cond_1
    invoke-interface {v1, v0}, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;->onDiscoverCharacteristicsFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    const-string v4, "BluetoothLEGattProxy.LE"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v4, "BluetoothLEGattProxy.LE"

    const-string v5, "Failed to call onRefresh."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onGattCharPropertyChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "charPath"
    .parameter "prName"
    .parameter "status"

    .prologue
    const/4 v9, 0x0

    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    const-string v6, "IBluetoothLEGattCallback"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onGattCharPropertyChanged charPath"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$000(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "/characteristic"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, servicePath:Ljava/lang/String;
    const-string v5, "/service"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, devicePath:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #calls: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$300(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$200(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mLEClientServiceCBTracker:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$400(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;

    .local v1, callBack:Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;
    if-eqz v1, :cond_0

    :try_start_0
    const-string v5, "Value"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1, p1, p3}, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;->onWriteCharValue(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1           #callBack:Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;
    :cond_0
    :goto_0
    return-void

    .restart local v1       #callBack:Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;
    :cond_1
    const-string v5, "ClientConfiguration"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, p1, p3}, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;->onWriteClientConfigDesc(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    const-string v5, "BluetoothLEGattProxy.LE"

    const-string v6, "Failed to call onWrite CallBack."

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onGattConnect(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    const-string v2, "IBluetoothLEGattCallback"

    const-string v3, "onConnectGatt"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$000(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mLEClientProfileCB:Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$100(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$200(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$200(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mLEClientProfileCB:Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$100(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;->onConnected(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "Call to onConnected of LEClientProfile failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onGattDisconnect(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    const-string v2, "IBluetoothLEGattCallback"

    const-string v3, "onGattDisconnect"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$000(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mLEClientProfileCB:Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$100(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$200(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mLEClientProfileCB:Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$100(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;->onDisconnected(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "Call onDisconnected failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onGattLinkLoss(Ljava/lang/String;)V
    .locals 4
    .parameter "address"

    .prologue
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    const-string v2, "BluetoothLEGattProxy.LE"

    const-string v3, "onGattLinkLoss"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$000(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mLEClientProfileCB:Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$100(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$200(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mLEClientProfileCB:Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$100(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;->onLinkLoss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "Call onGattLinkLoss failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onGattReadCharValue(Ljava/lang/String;)V
    .locals 3
    .parameter "charPath"

    .prologue
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    const-string v1, "IBluetoothLEGattCallback"

    const-string v2, "onGattReadCharValue"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$000(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetRssiValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "rssival"
    .parameter "address"

    .prologue
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    const-string v2, "IBluetoothLEGattCallback"

    const-string v3, "onGetRssiValue"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$000(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mLEClientProfileCB:Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$100(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$200(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mLEClientProfileCB:Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;
    invoke-static {v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$100(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;->onGetRssiValue(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothLEGattProxy.LE"

    const-string v2, "Call onGattLinkLoss failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onWatcherValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "charPath"
    .parameter "value"

    .prologue
    const/4 v8, 0x0

    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    const-string v6, "IBluetoothLEGattCallback"

    const-string v7, "onWatcherValueChanged"

    #calls: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->LogD(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$000(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "/characteristic"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, servicePath:Ljava/lang/String;
    const-string v5, "/service"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, devicePath:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #calls: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->getAddressFromObjectPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$300(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mRemoteDeviceAddress:Ljava/lang/String;
    invoke-static {v5}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$200(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/bluetoothle/BluetoothLEGattProxy$1;->this$0:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    #getter for: Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->mLEClientServiceCBTracker:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->access$400(Lcom/samsung/bluetoothle/BluetoothLEGattProxy;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;

    .local v1, callBack:Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;->onWatcherValueChanged(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #callBack:Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;
    :cond_0
    :goto_0
    return-void

    .restart local v1       #callBack:Lcom/samsung/bluetoothle/IBluetoothLEClientCharUpdationCallBack;
    :catch_0
    move-exception v3

    .local v3, e:Landroid/os/RemoteException;
    const-string v5, "BluetoothLEGattProxy.LE"

    const-string v6, ""

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v5, "BluetoothLEGattProxy.LE"

    const-string v6, "Failed to call onWatcherValueChanged."

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
