.class Landroid/server/BluetoothAdapterProperties;
.super Ljava/lang/Object;
.source "BluetoothAdapterProperties.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterProperties"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPropertiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/server/BluetoothService;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 1
    .parameter "context"
    .parameter "service"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    iput-object p1, p0, Landroid/server/BluetoothAdapterProperties;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/server/BluetoothAdapterProperties;->mService:Landroid/server/BluetoothService;

    return-void
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getAllProperties()V
    .locals 13

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Landroid/server/BluetoothAdapterProperties;->mContext:Landroid/content/Context;

    const-string v10, "android.permission.BLUETOOTH"

    const-string v11, "Need BLUETOOTH permission"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    iget-object v9, p0, Landroid/server/BluetoothAdapterProperties;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getAdapterPropertiesNative()[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    move-object v0, v9

    check-cast v0, [Ljava/lang/String;

    move-object v7, v0

    .local v7, properties:[Ljava/lang/String;
    if-nez v7, :cond_1

    const-string v9, "BluetoothAdapterProperties"

    const-string v10, "*Error*: GetAdapterProperties returned NULL"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_1
    array-length v9, v7

    if-ge v2, v9, :cond_7

    aget-object v5, v7, v2

    .local v5, name:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, newValue:Ljava/lang/String;
    if-nez v5, :cond_2

    const-string v9, "BluetoothAdapterProperties"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error:Adapter Property at index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const-string v9, "Devices"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "UUIDs"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .local v8, str:Ljava/lang/StringBuilder;
    add-int/lit8 v2, v2, 0x1

    aget-object v9, v7, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, len:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    if-ge v3, v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    aget-object v9, v7, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    if-lez v4, :cond_5

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v3           #j:I
    .end local v4           #len:I
    .end local v8           #str:Ljava/lang/StringBuilder;
    :cond_5
    :goto_4
    iget-object v9, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v9, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v2           #i:I
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #newValue:Ljava/lang/String;
    .end local v7           #properties:[Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .restart local v2       #i:I
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #newValue:Ljava/lang/String;
    .restart local v7       #properties:[Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    :try_start_2
    aget-object v6, v7, v2

    goto :goto_4

    .end local v5           #name:Ljava/lang/String;
    .end local v6           #newValue:Ljava/lang/String;
    :cond_7
    iget-object v9, p0, Landroid/server/BluetoothAdapterProperties;->mService:Landroid/server/BluetoothService;

    invoke-virtual {v9}, Landroid/server/BluetoothService;->getAdapterPathNative()Ljava/lang/String;

    move-result-object v1

    .local v1, adapterPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v9, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    const-string v10, "ObjectPath"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/dev_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method getObjectPath()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v1, "ObjectPath"

    invoke-virtual {p0, v1}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, property:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, "BluetoothAdapterProperties"

    const-string v2, "*Error*: getProperty returned NULL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/server/BluetoothAdapterProperties;->getAllProperties()V

    const-string v1, "ObjectPath"

    invoke-virtual {p0, v1}, Landroid/server/BluetoothAdapterProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAdapterProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "property = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/server/BluetoothAdapterProperties;->getAllProperties()V

    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/server/BluetoothAdapterProperties;->mPropertiesMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
