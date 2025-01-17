.class public abstract Lcom/samsung/bluetoothle/BluetoothLEClientProfile;
.super Ljava/lang/Object;
.source "BluetoothLEClientProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final GATT_STATE_CONNECTED:I = 0x2

.field public static final GATT_STATE_CONNECTING:I = 0x1

.field public static final GATT_STATE_DISCONNECTED:I = 0x0

.field public static final GATT_STATE_DISCONNECTING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothLEClientProfile"

.field private static mRequiredServicesDiscoveryInitiated:Z

.field private static mState:I


# instance fields
.field private mCallback:Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;

.field private mContext:Landroid/content/Context;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

.field private final mHandler:Landroid/os/Handler;

.field private mRequiredServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/bluetoothle/BluetoothLEClientService;",
            ">;"
        }
    .end annotation
.end field

.field private mServices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/bluetoothle/BluetoothLEClientService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$1;

    invoke-direct {v0, p0}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$1;-><init>(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)V

    iput-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mHandler:Landroid/os/Handler;

    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "BluetoothLEClientProfile"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;

    invoke-direct {v0, p0}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;-><init>(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)V

    iput-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mCallback:Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;

    invoke-static {}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->getProxy()Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    sput v2, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    sput-boolean v2, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServicesDiscoveryInitiated:Z

    return-void
.end method

.method private LogD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mCallback:Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    sget v0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    sput p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/bluetoothle/BluetoothLEClientProfile;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mServices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    sput-boolean p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServicesDiscoveryInitiated:Z

    return p0
.end method

.method private isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    if-nez p1, :cond_0

    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "device is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public connectLEDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const-string v3, "BluetoothLEClientProfile"

    const-string v4, "connectLEDevice"

    invoke-direct {p0, v3, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget v3, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    if-eqz v3, :cond_2

    const-string v2, "BluetoothLEClientProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profile connection status :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;

    sput v2, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    const-string v3, "BluetoothLEClientProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LE device connection state :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isLEDeviceConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isLEDeviceConnected()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "BluetoothLEClientProfile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LE device connection state :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isLEDeviceConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, message:Landroid/os/Message;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v0, v2

    goto :goto_0

    .end local v1           #message:Landroid/os/Message;
    :cond_3
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    invoke-virtual {v2, p1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .local v0, connectCallSuccess:Z
    const-string v2, "BluetoothLEClientProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectCallSuccess::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #message:Landroid/os/Message;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public disconnectLEDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .parameter "device"

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    const-string v2, "BluetoothLEClientProfile"

    const-string v3, "disconnectLEDevice"

    invoke-direct {p0, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    sget v2, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const-string v2, "BluetoothLEClientProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "profile connection status :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sput v5, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    const-string v2, "BluetoothLEClientProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LE device connection state :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isLEDeviceConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isLEDeviceConnected()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "BluetoothLEClientProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LE device connection state :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isLEDeviceConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, message:Landroid/os/Message;
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x1

    goto :goto_0

    .end local v1           #message:Landroid/os/Message;
    :cond_2
    iget-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    invoke-virtual {v2, p1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .local v0, disconnectCallSuccess:Z
    const-string v2, "BluetoothLEClientProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnectCallSuccess::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public discoverCharacteristics(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    const-string v1, "BluetoothLEClientProfile"

    const-string v2, "discoverCharacteristics"

    invoke-direct {p0, v1, v2}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-virtual {v1, p1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->discoverCharacteristics(Landroid/bluetooth/BluetoothDevice;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServicesDiscoveryInitiated:Z

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "finish"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    iput-object v2, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mCallback:Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;

    return-void
.end method

.method public getConnectedLEDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    sget v0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getGattProxy()Lcom/samsung/bluetoothle/BluetoothLEGattProxy;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    return-object v0
.end method

.method public getLEProfileState()I
    .locals 3

    .prologue
    const-string v0, "BluetoothLEClientProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLEProfileState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    return v0
.end method

.method public getRssiValue(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "getRssiValue"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    invoke-virtual {v0, p1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->getRssiValue(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method public onDiscoverCharacteristics(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "onDiscoverCharacteristics"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onGetRssiValue(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 2
    .parameter "device"
    .parameter "rssival"

    .prologue
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "onGetRssiValue"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLEDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "onLEDeviceConnected"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLEDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "onLEDeviceDisconnected"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLELinkLoss(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "onLELinkLoss"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerLEProfile(Ljava/util/ArrayList;)V
    .locals 2
    .parameter "services"

    .prologue
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "registerLEProfile"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mServices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mCallback:Lcom/samsung/bluetoothle/BluetoothLEClientProfile$BluetoothLEClientCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->registerLEProfile(Lcom/samsung/bluetoothle/IBluetoothLEClientCallBack;)V

    goto :goto_0
.end method

.method public setRemoteDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .parameter "device"

    .prologue
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "setRemoteDevice"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    invoke-virtual {v0, p1}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->setRemoteDeviceAddress(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0
.end method

.method public unregisterLEProfile()V
    .locals 2

    .prologue
    const-string v0, "BluetoothLEClientProfile"

    const-string v1, "unregisterLEProfile"

    invoke-direct {p0, v0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget v0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->disconnectLEDevice(Landroid/bluetooth/BluetoothDevice;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mGattProxy:Lcom/samsung/bluetoothle/BluetoothLEGattProxy;

    invoke-virtual {v0}, Lcom/samsung/bluetoothle/BluetoothLEGattProxy;->unregisterLEProfile()V

    return-void
.end method

.method updateRefreshState(Ljava/lang/String;)Z
    .locals 4
    .parameter "servicePath"

    .prologue
    const/4 v2, 0x0

    sget-boolean v1, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServicesDiscoveryInitiated:Z

    if-eqz v1, :cond_1

    const-string v1, "BluetoothLEClientProfile"

    const-string v3, "updateRefreshState"

    invoke-direct {p0, v1, v3}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, i:I
    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServices:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/bluetoothle/BluetoothLEClientService;

    invoke-virtual {v1}, Lcom/samsung/bluetoothle/BluetoothLEClientService;->getServicePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->onDiscoverCharacteristics(Landroid/bluetooth/BluetoothDevice;)V

    sput-boolean v2, Lcom/samsung/bluetoothle/BluetoothLEClientProfile;->mRequiredServicesDiscoveryInitiated:Z

    :cond_0
    const/4 v1, 0x1

    .end local v0           #i:I
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method
