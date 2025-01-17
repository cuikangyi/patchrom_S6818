.class final Lcom/android/settings/bluetooth/BluetoothDeviceFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothDeviceFilter$1;,
        Lcom/android/settings/bluetooth/BluetoothDeviceFilter$AudioAVFilter;,
        Lcom/android/settings/bluetooth/BluetoothDeviceFilter$AudioAGFilter;,
        Lcom/android/settings/bluetooth/BluetoothDeviceFilter$NapFilter;,
        Lcom/android/settings/bluetooth/BluetoothDeviceFilter$PanuFilter;,
        Lcom/android/settings/bluetooth/BluetoothDeviceFilter$TransferFilter;,
        Lcom/android/settings/bluetooth/BluetoothDeviceFilter$AudioFilter;,
        Lcom/android/settings/bluetooth/BluetoothDeviceFilter$ClassUuidFilter;,
        Lcom/android/settings/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;,
        Lcom/android/settings/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;,
        Lcom/android/settings/bluetooth/BluetoothDeviceFilter$AllFilter;,
        Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;
    }
.end annotation


# static fields
.field static final ALL_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

.field static final BONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

.field private static final FILTERS:[Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

.field static final UNBONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$AllFilter;

    invoke-direct {v0, v3}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 43
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$BondedDeviceFilter;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->BONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 46
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;

    invoke-direct {v0, v3}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$UnbondedDeviceFilter;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$1;)V

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->UNBONDED_DEVICE_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 49
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$AudioFilter;

    invoke-direct {v2, v3}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$AudioFilter;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$TransferFilter;

    invoke-direct {v2, v3}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$TransferFilter;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$PanuFilter;

    invoke-direct {v2, v3}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$PanuFilter;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$NapFilter;

    invoke-direct {v2, v3}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$NapFilter;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$AudioAGFilter;

    invoke-direct {v2, v3}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$AudioAGFilter;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$AudioAVFilter;

    invoke-direct {v2, v3}, Lcom/android/settings/bluetooth/BluetoothDeviceFilter$AudioAVFilter;-><init>(Lcom/android/settings/bluetooth/BluetoothDeviceFilter$1;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method static getFilter(I)Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;
    .locals 3
    .parameter "filterType"

    .prologue
    .line 72
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 73
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->FILTERS:[Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    aget-object v0, v0, p0

    .line 76
    :goto_0
    return-object v0

    .line 75
    :cond_0
    const-string v0, "BluetoothDeviceFilter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filter type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for device picker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/settings/bluetooth/BluetoothDeviceFilter$Filter;

    goto :goto_0
.end method
