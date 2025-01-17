.class Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothEventManager$Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BondStateChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothEventManager;Lcom/android/settings/bluetooth/BluetoothEventManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settings/bluetooth/BluetoothEventManager;)V

    return-void
.end method

.method private showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .parameter "context"
    .parameter "name"
    .parameter "reason"

    .prologue
    .line 405
    packed-switch p3, :pswitch_data_0

    .line 422
    :pswitch_0
    const-string v1, "BluetoothEventManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showUnbondMessage: Not displaying any message for reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_0
    return-void

    .line 407
    :pswitch_1
    const v0, 0x7f0901cf

    .line 425
    .local v0, errorMsg:I
    :goto_1
    invoke-static {p1, p2, v0}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 410
    .end local v0           #errorMsg:I
    :pswitch_2
    const v0, 0x7f0901d1

    .line 411
    .restart local v0       #errorMsg:I
    goto :goto_1

    .line 413
    .end local v0           #errorMsg:I
    :pswitch_3
    const v0, 0x7f0901d0

    .line 414
    .restart local v0       #errorMsg:I
    goto :goto_1

    .line 419
    .end local v0           #errorMsg:I
    :pswitch_4
    const v0, 0x7f0901ce

    .line 420
    .restart local v0       #errorMsg:I
    goto :goto_1

    .line 405
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 10
    .parameter "context"
    .parameter "intent"
    .parameter "device"

    .prologue
    const/high16 v9, -0x8000

    .line 305
    if-nez p3, :cond_1

    .line 306
    const-string v6, "BluetoothEventManager"

    const-string v7, "ACTION_BOND_STATE_CHANGED with no EXTRA_DEVICE"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    const-string v6, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 311
    .local v0, bondState:I
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 312
    .local v1, cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_6

    .line 313
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CachedBluetoothDevice for device "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found, calling readPairedDevices()."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_2
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    move-result v6

    if-nez v6, :cond_3

    .line 316
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got bonding state changed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but we have no record of that device."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 320
    :cond_3
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 321
    if-nez v1, :cond_4

    .line 322
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got bonding state changed for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", but device not added in cache."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 331
    :cond_4
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "BluetoothEventManager"

    const-string v7, "CachedBluetoothDevice was created from paired devices. It will be refreshed."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_5
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 336
    :cond_6
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v7

    monitor-enter v7

    .line 337
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/BluetoothCallback;

    .line 338
    .local v2, callback:Lcom/android/settings/bluetooth/BluetoothCallback;
    invoke-interface {v2, v1, v0}, Lcom/android/settings/bluetooth/BluetoothCallback;->onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V

    goto :goto_1

    .line 340
    .end local v2           #callback:Lcom/android/settings/bluetooth/BluetoothCallback;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_7
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->onBondingStateChanged(I)V

    .line 344
    const/16 v6, 0xc

    if-ne v0, v6, :cond_8

    .line 345
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 346
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 349
    :cond_8
    const/16 v6, 0xa

    if-ne v0, v6, :cond_0

    .line 350
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 352
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/android/settings/bluetooth/LocalBluetoothPreferences;->removeDockAutoConnectSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/settings/bluetooth/BluetoothEventManager;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1600(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 357
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setVisible(Z)V

    .line 360
    :cond_9
    const-string v6, "android.bluetooth.device.extra.REASON"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 363
    .local v4, reason:I
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6, v4}, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->showUnbondMessage(Landroid/content/Context;Ljava/lang/String;I)V

    .line 368
    const/16 v6, 0x9

    if-ne v4, v6, :cond_0

    .line 369
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getDeviceType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 370
    invoke-static {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->onDeviceDisappeared(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 371
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v7

    monitor-enter v7

    .line 372
    :try_start_2
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;
    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1100(Lcom/android/settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/bluetooth/BluetoothCallback;

    .line 373
    .restart local v2       #callback:Lcom/android/settings/bluetooth/BluetoothCallback;
    invoke-interface {v2, v1}, Lcom/android/settings/bluetooth/BluetoothCallback;->onDeviceDeleted(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_2

    .line 375
    .end local v2           #callback:Lcom/android/settings/bluetooth/BluetoothCallback;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    :cond_a
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 376
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;->this$0:Lcom/android/settings/bluetooth/BluetoothEventManager;

    #getter for: Lcom/android/settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;
    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1200(Lcom/android/settings/bluetooth/BluetoothEventManager;)Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    invoke-virtual {v6, p3}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->removeDevice(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_0

    .line 379
    :cond_b
    if-eqz p3, :cond_0

    .line 380
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v5

    .line 381
    .local v5, successful:Z
    if-eqz v5, :cond_c

    .line 383
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 386
    :cond_c
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothEventManager;->access$1500()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "BluetoothEventManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Framework rejected command immediately:REMOVE_BOND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
