.class public Lcom/android/server/enterprise/firewall/FirewallPolicy;
.super Landroid/app/enterprise/IFirewallPolicy$Stub;
.source "FirewallPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;,
        Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;
    }
.end annotation


# static fields
.field private static final ALLOW_TYPE:Ljava/lang/String; = "allow"

.field private static final DENY_TYPE:Ljava/lang/String; = "deny"

.field private static final HTTP_PROXY_TYPE:Ljava/lang/String; = "proxy"

.field private static final INTERFACE_TYPES:[Ljava/lang/String; = null

.field private static final IPTABLES:Ljava/lang/String; = "/system/bin/iptables"

.field private static final LOCATION:I = 0x4

.field private static final MARKET_ALL_NETWORKS:I = 0x0

.field private static final MARKET_IPTABLES_CHAIN:Ljava/lang/String; = "samsung_market_policy"

.field private static final MARKET_PACKAGE_NAMES:[Ljava/lang/String; = null

.field private static final MARKET_WIFI_ONLY:I = 0x1

.field public static final REDIRECT_EXCEPTION_CHAIN:Ljava/lang/String; = "samsung_exceptions"

.field private static final REDIRECT_EXCEPTION_TYPE:Ljava/lang/String; = "redirect_exception"

.field private static final REROUTE_TYPE:Ljava/lang/String; = "reroute"

.field private static final TAG:Ljava/lang/String; = "FirewallPolicy"

.field public static final iptablesChains:[Ljava/lang/String;

.field private static isIptChainsCreated:Z


# instance fields
.field private final BOOT_COMPLETED:Ljava/lang/String;

.field private isMarketChainCreated:Z

.field private mAllowQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

.field private mConnectionReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mDenyQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIsOnline:Z

.field private mIsUrlBlacklistUpdated:Z

.field private mIsUrlFilterReportUpdated:Z

.field private mIsUrlFilterStateUpdated:Z

.field private mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

.field private mRerouteQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUrlBlacklistAllAdmin:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUrlFilterReportState:Z

.field private mUrlFilterStateCache:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    sput-boolean v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    .line 92
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "samsung_reroute"

    aput-object v1, v0, v3

    const-string v1, "samsung_allow"

    aput-object v1, v0, v4

    const-string v1, "samsung_deny"

    aput-object v1, v0, v5

    const-string v1, "samsung_proxy"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "samsung_log"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    .line 100
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.vending"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    .line 121
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "wifi"

    aput-object v1, v0, v3

    const-string v1, "data"

    aput-object v1, v0, v4

    const-string v1, "*"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->INTERFACE_TYPES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 128
    invoke-direct {p0}, Landroid/app/enterprise/IFirewallPolicy$Stub;-><init>()V

    .line 80
    iput-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 82
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->BOOT_COMPLETED:Ljava/lang/String;

    .line 84
    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    .line 101
    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isMarketChainCreated:Z

    .line 108
    iput-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUrlBlacklistAllAdmin:Ljava/util/List;

    .line 109
    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsUrlBlacklistUpdated:Z

    .line 110
    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUrlFilterStateCache:Z

    .line 111
    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsUrlFilterStateUpdated:Z

    .line 112
    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUrlFilterReportState:Z

    .line 113
    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsUrlFilterReportUpdated:Z

    .line 129
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    .line 131
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    .line 132
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    invoke-virtual {v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;->start()V

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    .line 138
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$1;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 163
    .local v0, bootFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallPolicy$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy$2;-><init>(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 187
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUrlBlacklistAllAdmin:Ljava/util/List;

    .line 192
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-direct {v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/firewall/FirewallPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/firewall/FirewallPolicy;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/firewall/FirewallPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->handleConnectivityAction()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/Process;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkIptablesCommandResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/firewall/FirewallPolicy;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addPendingCommand(Ljava/lang/String;I)V

    return-void
.end method

.method private addPendingCommand(Ljava/lang/String;I)V
    .locals 2
    .parameter "command"
    .parameter "type"

    .prologue
    .line 1266
    packed-switch p2, :pswitch_data_0

    .line 1288
    :goto_0
    return-void

    .line 1269
    :pswitch_0
    const-string v0, "FirewallPolicy"

    const-string v1, "allow command enqueued"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    monitor-enter v1

    .line 1271
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1272
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1275
    :pswitch_1
    const-string v0, "FirewallPolicy"

    const-string v1, "deny command enqueued"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    monitor-enter v1

    .line 1277
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1278
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 1281
    :pswitch_2
    const-string v0, "FirewallPolicy"

    const-string v1, "reroute command enqueued"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    monitor-enter v1

    .line 1283
    :try_start_2
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1284
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 1266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private addRulesToDb(Ljava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z
    .locals 7
    .parameter
    .parameter "uid"
    .parameter "type"
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .local p5, duplicates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 1342
    const/4 v0, 0x0

    .line 1343
    .local v0, cv:Landroid/content/ContentValues;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1344
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    const/4 v1, -0x1

    .line 1345
    .local v1, index:I
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1346
    add-int/lit8 v1, v1, 0x1

    .line 1347
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1348
    .local v3, rule:Ljava/lang/String;
    invoke-direct {p0, v3, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkDuplicateRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1349
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1352
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #cv:Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1353
    .restart local v0       #cv:Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    const-string v4, "rules"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    if-eqz p4, :cond_2

    .line 1356
    const-string v4, "enabled"

    const-string v6, "true"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    :goto_1
    const-string v4, "type"

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    const-string v4, "timestamp"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1362
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "FirewallTable"

    invoke-virtual {v4, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 1366
    .end local v3           #rule:Ljava/lang/String;
    :goto_2
    return v4

    .line 1358
    .restart local v3       #rule:Ljava/lang/String;
    :cond_2
    const-string v4, "enabled"

    const-string v6, "false"

    invoke-virtual {v0, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1366
    .end local v3           #rule:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    goto :goto_2
.end method

.method private applyBasicRules(ILjava/util/List;II)Z
    .locals 18
    .parameter "uid"
    .parameter
    .parameter "type"
    .parameter "jumpAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 646
    .local p2, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v5, jsonRulesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 650
    .local v9, duplicateIndexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 651
    .local v17, rule:Ljava/lang/String;
    const-string v4, ";"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 652
    .local v16, parameters:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v4, v0

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    move-object/from16 v0, v16

    array-length v4, v0

    const/4 v6, 0x3

    if-eq v4, v6, :cond_0

    move-object/from16 v0, v16

    array-length v4, v0

    const/4 v6, 0x4

    if-eq v4, v6, :cond_0

    .line 654
    const/4 v4, 0x0

    .line 733
    .end local v16           #parameters:[Ljava/lang/String;
    .end local v17           #rule:Ljava/lang/String;
    :goto_1
    return v4

    .line 656
    .restart local v16       #parameters:[Ljava/lang/String;
    .restart local v17       #rule:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    aget-object v4, v16, v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 657
    .local v12, args:[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v10, argNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v11, argValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "host"

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    const-string v4, "port"

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    const-string v4, "portLocation"

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    const/4 v4, 0x0

    aget-object v4, v12, v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    const/4 v4, 0x1

    aget-object v4, v12, v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    const/4 v4, 0x1

    aget-object v4, v16, v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    move-object/from16 v0, v16

    array-length v4, v0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 666
    const-string v4, "type"

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    const-string v4, "default"

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v15

    .line 684
    .local v15, jsonRule:Lorg/json/JSONObject;
    :goto_2
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 669
    .end local v15           #jsonRule:Lorg/json/JSONObject;
    :cond_1
    move-object/from16 v0, v16

    array-length v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    .line 670
    const-string v4, "networkInterface"

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    const-string v4, "type"

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    const/4 v4, 0x2

    aget-object v4, v16, v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    const-string v4, "app"

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 674
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v15

    .restart local v15       #jsonRule:Lorg/json/JSONObject;
    goto :goto_2

    .line 676
    .end local v15           #jsonRule:Lorg/json/JSONObject;
    :cond_2
    const-string v4, "packageName"

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    const-string v4, "networkInterface"

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    const-string v4, "type"

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    const/4 v4, 0x2

    aget-object v4, v16, v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    const/4 v4, 0x3

    aget-object v4, v16, v4

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    const-string v4, "app"

    invoke-interface {v11, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v15

    .restart local v15       #jsonRule:Lorg/json/JSONObject;
    goto :goto_2

    .line 686
    .end local v10           #argNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #argValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v12           #args:[Ljava/lang/String;
    .end local v15           #jsonRule:Lorg/json/JSONObject;
    .end local v16           #parameters:[Ljava/lang/String;
    .end local v17           #rule:Ljava/lang/String;
    :cond_3
    const-string v7, ""

    .line 688
    .local v7, jumpActionStr:Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, p4

    if-ne v0, v4, :cond_4

    .line 689
    const-string v7, "allow"

    .line 697
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules()I

    move-result v13

    .line 699
    .local v13, enabledUid:I
    move/from16 v0, p1

    if-ne v13, v0, :cond_6

    .line 700
    const/4 v8, 0x1

    .line 705
    .local v8, enabled:Z
    :goto_4
    const/4 v4, 0x1

    move/from16 v0, p3

    if-ne v0, v4, :cond_8

    move-object/from16 v4, p0

    move/from16 v6, p1

    .line 708
    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(Ljava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 709
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V

    .line 710
    if-eqz v8, :cond_7

    .line 712
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRulesToIptables(Ljava/util/List;II)Z

    move-result v4

    goto/16 :goto_1

    .line 690
    .end local v8           #enabled:Z
    .end local v13           #enabledUid:I
    :cond_4
    const/4 v4, 0x2

    move/from16 v0, p4

    if-ne v0, v4, :cond_5

    .line 691
    const-string v7, "deny"

    goto :goto_3

    .line 694
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 702
    .restart local v13       #enabledUid:I
    :cond_6
    const/4 v8, 0x0

    .restart local v8       #enabled:Z
    goto :goto_4

    .line 716
    :cond_7
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 720
    :cond_8
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_a

    .line 722
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v5, v1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(Ljava/util/ArrayList;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 723
    if-eqz v8, :cond_9

    .line 725
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRulesToIptables(Ljava/util/List;II)Z

    move-result v4

    goto/16 :goto_1

    .line 729
    :cond_9
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 733
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method private applyBasicRulesToIptables(Ljava/util/List;II)Z
    .locals 26
    .parameter
    .parameter "type"
    .parameter "jumpAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 886
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "FirewallPolicy"

    const-string v5, "applyBasicRulesToIptables..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    const/4 v13, -0x1

    .line 889
    .local v13, appUid:I
    const-string v11, ""

    .line 890
    .local v11, networkInterface:Ljava/lang/String;
    const-string v23, ""

    .line 891
    .local v23, packageName:Ljava/lang/String;
    const-string v7, ""

    .line 892
    .local v7, hostname:Ljava/lang/String;
    const-string v8, ""

    .line 893
    .local v8, port:Ljava/lang/String;
    const-string v10, ""

    .line 895
    .local v10, portLocation:Ljava/lang/String;
    const/4 v4, 0x1

    move/from16 v0, p2

    if-eq v0, v4, :cond_0

    const/4 v4, 0x2

    move/from16 v0, p2

    if-eq v0, v4, :cond_0

    .line 896
    const/4 v4, 0x0

    .line 999
    :goto_0
    return v4

    .line 900
    :cond_0
    sget-boolean v4, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v4, :cond_1

    .line 901
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains()V

    .line 904
    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .local v17, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 906
    .local v21, ipCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 907
    .local v18, hostCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 909
    .local v22, isHost:Z
    const/4 v4, 0x1

    move/from16 v0, p3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x2

    move/from16 v0, p3

    if-eq v0, v4, :cond_2

    .line 910
    const/4 v4, 0x0

    goto :goto_0

    .line 914
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_3
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 916
    .local v25, rule:Ljava/lang/String;
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 920
    const-string v4, ";"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 921
    .local v24, parameters:[Ljava/lang/String;
    move-object/from16 v0, v24

    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    move-object/from16 v0, v24

    array-length v4, v0

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    move-object/from16 v0, v24

    array-length v4, v0

    const/4 v5, 0x4

    if-eq v4, v5, :cond_4

    .line 922
    const/4 v4, 0x0

    goto :goto_0

    .line 925
    :cond_4
    const/4 v4, 0x0

    aget-object v4, v24, v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 926
    .local v15, args:[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v7, v15, v4

    .line 927
    const/4 v4, 0x1

    aget-object v8, v15, v4

    .line 928
    const/4 v4, 0x1

    aget-object v10, v24, v4

    .line 929
    const/4 v4, 0x0

    aget-object v4, v15, v4

    const-string v5, "(.*[a-zA-Z]+.*)"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 930
    const/16 v22, 0x1

    .line 935
    :goto_2
    move-object/from16 v0, v24

    array-length v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    .line 936
    const/4 v4, 0x2

    aget-object v4, v24, v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 937
    const/4 v4, 0x2

    aget-object v11, v24, v4

    .line 959
    :cond_5
    :goto_3
    const-string v4, "*"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 960
    const-string v7, ""

    .line 962
    :cond_6
    const-string v4, "*"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 963
    const-string v8, ""

    .line 966
    :cond_7
    const-string v4, "-"

    const-string v5, ":"

    invoke-virtual {v8, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 968
    const-string v4, "*"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 969
    const-string v10, "both"

    .line 971
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUid(Ljava/lang/String;)I

    move-result v13

    .line 973
    new-instance v14, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v14}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 974
    .local v14, ruleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    move/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 975
    new-instance v3, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v4, "filter"

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getChain(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "both"

    const-string v9, ""

    move/from16 v12, p2

    invoke-direct/range {v3 .. v14}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 977
    .local v3, firewallRule:Lcom/android/server/enterprise/firewall/FirewallRule;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v4, v3}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v17

    .line 980
    if-eqz v22, :cond_e

    .line 981
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 982
    .local v16, command:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 932
    .end local v3           #firewallRule:Lcom/android/server/enterprise/firewall/FirewallRule;
    .end local v14           #ruleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .end local v16           #command:Ljava/lang/String;
    .end local v20           #i$:Ljava/util/Iterator;
    :cond_9
    const/16 v22, 0x0

    goto/16 :goto_2

    .line 939
    :cond_a
    move-object/from16 v0, v24

    array-length v4, v0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_c

    .line 941
    const/4 v4, 0x2

    aget-object v4, v24, v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 942
    const/4 v4, 0x2

    aget-object v23, v24, v4

    .line 944
    :cond_b
    const/4 v4, 0x3

    aget-object v4, v24, v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 945
    const/4 v4, 0x3

    aget-object v11, v24, v4

    goto/16 :goto_3

    .line 948
    :cond_c
    const-string v4, "*"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "*"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_5

    .line 949
    const/4 v4, 0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_d

    .line 950
    const-string v4, "/system/bin/iptables -P INPUT DROP"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    const-string v4, "/system/bin/iptables -P OUTPUT DROP"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 952
    :cond_d
    const/4 v4, 0x2

    move/from16 v0, p2

    if-ne v0, v4, :cond_3

    .line 953
    const-string v4, "/system/bin/iptables -P INPUT ACCEPT"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 954
    const-string v4, "/system/bin/iptables -P OUTPUT ACCEPT"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 985
    .restart local v3       #firewallRule:Lcom/android/server/enterprise/firewall/FirewallRule;
    .restart local v14       #ruleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    :cond_e
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 986
    .restart local v16       #command:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 991
    .end local v3           #firewallRule:Lcom/android/server/enterprise/firewall/FirewallRule;
    .end local v14           #ruleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .end local v15           #args:[Ljava/lang/String;
    .end local v16           #command:Ljava/lang/String;
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v24           #parameters:[Ljava/lang/String;
    .end local v25           #rule:Ljava/lang/String;
    :cond_f
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_10

    .line 992
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(Ljava/util/List;)Ljava/util/List;

    .line 994
    :cond_10
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_11

    .line 996
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p3

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(Ljava/util/List;ZI)Ljava/util/List;

    .line 999
    :cond_11
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private applyMarketIptablesRules(Ljava/lang/String;)V
    .locals 13
    .parameter "packageName"

    .prologue
    .line 2206
    new-instance v11, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v11}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 2207
    .local v11, ruleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v1, 0x6

    invoke-virtual {v11, v1}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 2208
    new-instance v0, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v1, "filter"

    const-string v2, "samsung_market_policy"

    const-string v3, "out"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, "data"

    const/4 v9, 0x1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUid(Ljava/lang/String;)I

    move-result v10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 2211
    .local v0, marketRule:Lcom/android/server/enterprise/firewall/FirewallRule;
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v12

    .line 2212
    .local v12, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v12}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(Ljava/util/List;)Ljava/util/List;

    .line 2213
    return-void
.end method

.method private applyNetworkForMarket()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2184
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createChainForMarket()V

    .line 2185
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkForMarket(Z)I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 2186
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->MARKET_PACKAGE_NAMES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 2187
    .local v3, marketPackage:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyMarketIptablesRules(Ljava/lang/String;)V

    .line 2186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2190
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #marketPackage:Ljava/lang/String;
    :cond_0
    const-string v4, "samsung_market_policy-output"

    const-string v5, "filter"

    invoke-direct {p0, v4, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    :cond_1
    return-void
.end method

.method private applyProxyRules(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 11
    .parameter "hostname"
    .parameter "port"
    .parameter "action"
    .parameter "type"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 825
    const-string v0, "FirewallPolicy"

    const-string v3, "applyProxyRules..."

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v2

    .line 827
    .local v2, uid:I
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy()I

    move-result v7

    .line 828
    .local v7, enabledUid:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 829
    .local v1, jsonRulesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 832
    .local v5, duplicateIndexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-ne v7, v2, :cond_1

    .line 833
    const/4 v4, 0x1

    .line 837
    .local v4, enabled:Z
    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v10

    .line 877
    :goto_1
    return v0

    .line 835
    .end local v4           #enabled:Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4       #enabled:Z
    goto :goto_0

    .line 841
    :cond_2
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 842
    .local v8, jsonRule:Lorg/json/JSONObject;
    const-string v0, "host"

    invoke-virtual {v8, v0, p1}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 843
    const-string v0, "port"

    invoke-virtual {v8, v0, p2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 844
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    .end local v8           #jsonRule:Lorg/json/JSONObject;
    :goto_2
    if-ne p3, v9, :cond_5

    move-object v0, p0

    move-object v3, p4

    .line 850
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(Ljava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 852
    if-eqz v4, :cond_3

    .line 854
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_1

    .line 845
    :catch_0
    move-exception v6

    .line 846
    .local v6, e:Lorg/json/JSONException;
    const-string v0, "FirewallPolicy"

    const-string v3, "JSONException"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .end local v6           #e:Lorg/json/JSONException;
    :cond_3
    move v0, v9

    .line 857
    goto :goto_1

    :cond_4
    move v0, v10

    .line 860
    goto :goto_1

    .line 863
    :cond_5
    const/4 v0, 0x2

    if-ne p3, v0, :cond_8

    .line 864
    invoke-direct {p0, v1, v2, p4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(Ljava/util/ArrayList;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 866
    if-eqz v4, :cond_6

    .line 868
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_1

    :cond_6
    move v0, v9

    .line 871
    goto :goto_1

    :cond_7
    move v0, v10

    .line 874
    goto :goto_1

    :cond_8
    move v0, v10

    .line 877
    goto :goto_1
.end method

.method private applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 14
    .parameter "host"
    .parameter "port"
    .parameter "type"
    .parameter "proxyType"

    .prologue
    .line 1093
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1095
    .local v13, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-boolean v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v2, :cond_0

    .line 1096
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains()V

    .line 1099
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 1101
    :cond_1
    const/4 v2, 0x0

    .line 1121
    :goto_0
    return v2

    .line 1104
    :cond_2
    const-string v6, ""

    .line 1105
    .local v6, protocolPort:Ljava/lang/String;
    const-string v2, "proxy"

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1106
    const-string v6, "80"

    .line 1109
    :cond_3
    new-instance v12, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v12}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 1110
    .local v12, ruleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v2, 0x3

    invoke-virtual {v12, v2}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 1111
    invoke-virtual {v12, p1}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setIpAddress(Ljava/lang/String;)Z

    .line 1112
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setPort(Ljava/lang/String;)Z

    .line 1113
    new-instance v1, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v2, "nat"

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getChain(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "out"

    const-string v5, ""

    const-string v7, "tcp"

    const-string v8, "remote"

    const-string v9, ""

    const/4 v11, -0x1

    move/from16 v10, p3

    invoke-direct/range {v1 .. v12}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 1115
    .local v1, proxyRule:Lcom/android/server/enterprise/firewall/FirewallRule;
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v13

    .line 1117
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 1118
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1121
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private applyRedirectExceptionRules(ILjava/util/List;I)Z
    .locals 12
    .parameter "uid"
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 2226
    .local p2, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "FirewallPolicy"

    const-string v2, "applyRedirectExceptionRules..."

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2228
    .local v1, jsonRulesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2230
    .local v5, duplicateIndexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 2231
    .local v11, rule:Ljava/lang/String;
    const-string v0, ":"

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 2232
    .local v10, parameters:[Ljava/lang/String;
    array-length v0, v10

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 2233
    const/4 v0, 0x0

    .line 2270
    .end local v10           #parameters:[Ljava/lang/String;
    .end local v11           #rule:Ljava/lang/String;
    :goto_1
    return v0

    .line 2235
    .restart local v10       #parameters:[Ljava/lang/String;
    .restart local v11       #rule:Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2236
    .local v6, argNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2237
    .local v7, argValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "host"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2238
    const-string v0, "port"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2239
    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2240
    const/4 v0, 0x1

    aget-object v0, v10, v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2241
    invoke-direct {p0, v6, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2244
    .end local v6           #argNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #argValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #parameters:[Ljava/lang/String;
    .end local v11           #rule:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules()I

    move-result v8

    .line 2246
    .local v8, enabledUid:I
    if-ne v8, p1, :cond_2

    .line 2247
    const/4 v4, 0x1

    .line 2252
    .local v4, enabled:Z
    :goto_2
    const/4 v0, 0x1

    if-ne p3, v0, :cond_4

    .line 2253
    const-string v3, "redirect_exception"

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(Ljava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2254
    invoke-direct {p0, p2, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V

    .line 2255
    if-eqz v4, :cond_3

    .line 2256
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRulesToIptables(Ljava/util/List;I)Z

    move-result v0

    goto :goto_1

    .line 2249
    .end local v4           #enabled:Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4       #enabled:Z
    goto :goto_2

    .line 2258
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 2261
    :cond_4
    const/4 v0, 0x2

    if-ne p3, v0, :cond_6

    .line 2262
    const-string v0, "redirect_exception"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(Ljava/util/ArrayList;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2263
    if-eqz v4, :cond_5

    .line 2264
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRulesToIptables(Ljava/util/List;I)Z

    move-result v0

    goto :goto_1

    .line 2266
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 2270
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private applyRedirectExceptionRulesToIptables(Ljava/util/List;I)Z
    .locals 20
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 2274
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "FirewallPolicy"

    const-string v3, "applyRedirectExceptionRulesToIptables..."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2275
    sget-boolean v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v2, :cond_0

    .line 2276
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains()V

    .line 2278
    :cond_0
    const-string v7, "both"

    .line 2279
    .local v7, protocol:Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2280
    .local v14, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 2281
    .local v18, rule:Ljava/lang/String;
    const-string v2, ":"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 2282
    .local v17, parameters:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v17, v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2283
    const/4 v2, 0x0

    const-string v3, ""

    aput-object v3, v17, v2

    .line 2285
    :cond_2
    const/4 v2, 0x1

    aget-object v2, v17, v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2286
    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v17, v2

    .line 2287
    const-string v7, ""

    .line 2289
    :cond_3
    new-instance v12, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v12}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 2290
    .local v12, ruleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 2291
    new-instance v1, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v2, "nat"

    const-string v3, "samsung_exceptions"

    const-string v4, "out"

    const/4 v5, 0x0

    aget-object v5, v17, v5

    const/4 v6, 0x1

    aget-object v6, v17, v6

    const-string v8, "remote"

    const-string v9, ""

    const/4 v11, -0x1

    move/from16 v10, p2

    invoke-direct/range {v1 .. v12}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 2293
    .local v1, firewallRule:Lcom/android/server/enterprise/firewall/FirewallRule;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v2, v1}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v19

    .line 2294
    .local v19, tempCommands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2296
    .local v13, command:Ljava/lang/String;
    const-string v2, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2300
    .end local v1           #firewallRule:Lcom/android/server/enterprise/firewall/FirewallRule;
    .end local v12           #ruleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .end local v13           #command:Ljava/lang/String;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v17           #parameters:[Ljava/lang/String;
    .end local v18           #rule:Ljava/lang/String;
    .end local v19           #tempCommands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 2301
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(Ljava/util/List;)Ljava/util/List;

    .line 2303
    :cond_5
    const/4 v2, 0x1

    return v2
.end method

.method private applyRerouteRules(ILjava/util/List;I)Z
    .locals 18
    .parameter "uid"
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 738
    .local p2, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 739
    .local v4, jsonRulesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v8, duplicateIndexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 742
    .local v17, rule:Ljava/lang/String;
    const-string v3, ";"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 744
    .local v11, args:[Ljava/lang/String;
    array-length v3, v11

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    array-length v3, v11

    const/4 v5, 0x4

    if-eq v3, v5, :cond_0

    .line 745
    const/4 v3, 0x0

    .line 819
    .end local v11           #args:[Ljava/lang/String;
    .end local v17           #rule:Ljava/lang/String;
    :goto_1
    return v3

    .line 748
    .restart local v11       #args:[Ljava/lang/String;
    .restart local v17       #rule:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    aget-object v3, v11, v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 749
    .local v16, originArgs:[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v11, v3

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 751
    .local v12, destArgs:[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v9, argNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 753
    .local v10, argValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "originHost"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    const-string v3, "originPort"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    const-string v3, "destHost"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    const-string v3, "destPort"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    const/4 v3, 0x0

    aget-object v3, v16, v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 758
    const/4 v3, 0x1

    aget-object v3, v16, v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 759
    const/4 v3, 0x0

    aget-object v3, v12, v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    const/4 v3, 0x1

    aget-object v3, v12, v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 762
    array-length v3, v11

    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 763
    const-string v3, "type"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    const-string v3, "default"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v15

    .line 775
    .local v15, jsonRule:Lorg/json/JSONObject;
    :goto_2
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 767
    .end local v15           #jsonRule:Lorg/json/JSONObject;
    :cond_1
    const-string v3, "packageName"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    const-string v3, "networkInterface"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    const-string v3, "type"

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    const/4 v3, 0x2

    aget-object v3, v11, v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    const/4 v3, 0x3

    aget-object v3, v11, v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    const-string v3, "app"

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v15

    .restart local v15       #jsonRule:Lorg/json/JSONObject;
    goto :goto_2

    .line 779
    .end local v9           #argNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #argValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v11           #args:[Ljava/lang/String;
    .end local v12           #destArgs:[Ljava/lang/String;
    .end local v15           #jsonRule:Lorg/json/JSONObject;
    .end local v16           #originArgs:[Ljava/lang/String;
    .end local v17           #rule:Ljava/lang/String;
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules()I

    move-result v13

    .line 781
    .local v13, enabledUid:I
    move/from16 v0, p1

    if-ne v13, v0, :cond_4

    .line 782
    const/4 v7, 0x1

    .line 787
    .local v7, enabled:Z
    :goto_3
    const/4 v3, 0x1

    move/from16 v0, p3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    move/from16 v0, p3

    if-ne v0, v3, :cond_7

    .line 788
    :cond_3
    const-string v6, "reroute"

    move-object/from16 v3, p0

    move/from16 v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRulesToDb(Ljava/util/ArrayList;ILjava/lang/String;ZLjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 790
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V

    .line 791
    if-eqz v7, :cond_5

    .line 793
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRulesToIptables(Ljava/util/List;I)Z

    move-result v3

    goto/16 :goto_1

    .line 784
    .end local v7           #enabled:Z
    :cond_4
    const/4 v7, 0x0

    .restart local v7       #enabled:Z
    goto :goto_3

    .line 796
    :cond_5
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 799
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 802
    :cond_7
    const/4 v3, 0x2

    move/from16 v0, p3

    if-ne v0, v3, :cond_a

    .line 803
    const-string v3, "reroute"

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeRulesFromDb(Ljava/util/ArrayList;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 805
    if-eqz v7, :cond_8

    .line 807
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRulesToIptables(Ljava/util/List;I)Z

    move-result v3

    goto/16 :goto_1

    .line 811
    :cond_8
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 815
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 819
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private applyRerouteRulesToIptables(Ljava/util/List;I)Z
    .locals 26
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1007
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 1009
    .local v22, isHost:Z
    const-string v24, ""

    .line 1010
    .local v24, packageName:Ljava/lang/String;
    const-string v10, ""

    .line 1011
    .local v10, networkInterface:Ljava/lang/String;
    const/4 v12, -0x1

    .line 1013
    .local v12, appUid:I
    sget-boolean v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    if-nez v3, :cond_0

    .line 1014
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createIptablesChains()V

    .line 1017
    :cond_0
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1018
    .local v16, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    .local v21, ipCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    .local v18, hostCommands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 1022
    .local v25, rule:Ljava/lang/String;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->clear()V

    .line 1023
    const-string v3, ";"

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 1024
    .local v14, args:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v14, v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1025
    .local v23, originArgs:[Ljava/lang/String;
    const/4 v3, 0x1

    aget-object v3, v14, v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 1027
    .local v17, destArgs:[Ljava/lang/String;
    array-length v3, v14

    const/4 v4, 0x4

    if-ne v3, v4, :cond_4

    .line 1029
    const/4 v3, 0x2

    aget-object v3, v14, v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1030
    const/4 v3, 0x2

    aget-object v24, v14, v3

    .line 1032
    :cond_2
    const/4 v3, 0x3

    aget-object v3, v14, v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1033
    const/4 v3, 0x3

    aget-object v10, v14, v3

    .line 1035
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAppUid(Ljava/lang/String;)I

    move-result v12

    .line 1038
    :cond_4
    const/4 v3, 0x0

    aget-object v3, v23, v3

    const-string v4, "(.*[a-zA-Z]+.*)"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1039
    const/16 v22, 0x1

    .line 1043
    :goto_0
    const/4 v3, 0x0

    aget-object v3, v23, v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1044
    const/16 v22, 0x0

    .line 1045
    const/4 v3, 0x0

    const-string v4, ""

    aput-object v4, v23, v3

    .line 1047
    :cond_5
    const/4 v3, 0x1

    aget-object v3, v23, v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1048
    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v23, v3

    .line 1052
    :goto_1
    const/4 v3, 0x1

    aget-object v3, v17, v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1053
    const/4 v3, 0x1

    const-string v4, ""

    aput-object v4, v17, v3

    .line 1056
    :cond_6
    new-instance v13, Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    invoke-direct {v13}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;-><init>()V

    .line 1057
    .local v13, ruleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setAction(I)Z

    .line 1058
    const/4 v3, 0x0

    aget-object v3, v17, v3

    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setIpAddress(Ljava/lang/String;)Z

    .line 1059
    const/4 v3, 0x1

    aget-object v3, v17, v3

    invoke-virtual {v13, v3}, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->setPort(Ljava/lang/String;)Z

    .line 1060
    new-instance v2, Lcom/android/server/enterprise/firewall/FirewallRule;

    const-string v3, "nat"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getChain(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "out"

    const/4 v6, 0x0

    aget-object v6, v23, v6

    const/4 v7, 0x1

    aget-object v7, v23, v7

    const-string v8, "both"

    const-string v9, "remote"

    move/from16 v11, p2

    invoke-direct/range {v2 .. v13}, Lcom/android/server/enterprise/firewall/FirewallRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V

    .line 1063
    .local v2, firewallRule:Lcom/android/server/enterprise/firewall/FirewallRule;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mCommandBuilder:Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/firewall/FirewallIptCommandBuilder;->createIptCommands(Lcom/android/server/enterprise/firewall/FirewallRule;)Ljava/util/List;

    move-result-object v16

    .line 1066
    if-eqz v22, :cond_9

    .line 1067
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1068
    .local v15, command:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1041
    .end local v2           #firewallRule:Lcom/android/server/enterprise/firewall/FirewallRule;
    .end local v13           #ruleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .end local v15           #command:Ljava/lang/String;
    .end local v20           #i$:Ljava/util/Iterator;
    :cond_7
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1050
    :cond_8
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-object v4, v23, v4

    const-string v5, "-"

    const-string v6, ":"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v23, v3

    goto :goto_1

    .line 1072
    .restart local v2       #firewallRule:Lcom/android/server/enterprise/firewall/FirewallRule;
    .restart local v13       #ruleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    :cond_9
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .restart local v20       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 1073
    .restart local v15       #command:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1078
    .end local v2           #firewallRule:Lcom/android/server/enterprise/firewall/FirewallRule;
    .end local v13           #ruleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .end local v14           #args:[Ljava/lang/String;
    .end local v15           #command:Ljava/lang/String;
    .end local v17           #destArgs:[Ljava/lang/String;
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v23           #originArgs:[Ljava/lang/String;
    .end local v25           #rule:Ljava/lang/String;
    :cond_a
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_b

    .line 1079
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(Ljava/util/List;)Ljava/util/List;

    .line 1081
    :cond_b
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 1083
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(Ljava/util/List;ZI)Ljava/util/List;

    .line 1087
    :cond_c
    const/4 v3, 0x1

    return v3
.end method

.method private checkDuplicateRule(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "rule"
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1649
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1650
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-array v2, v3, [Ljava/lang/String;

    const-string v5, "rules"

    aput-object v5, v2, v4

    .line 1653
    .local v2, returnColumns:[Ljava/lang/String;
    const-string v5, "rules =? "

    invoke-virtual {v1, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1654
    const-string v5, "type =? "

    invoke-virtual {v1, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1655
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "FirewallTable"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1657
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 1658
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1662
    :goto_0
    return v3

    .line 1661
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v3, v4

    .line 1662
    goto :goto_0
.end method

.method private checkIptablesCommandResult(Ljava/lang/String;)Z
    .locals 2
    .parameter "result"

    .prologue
    const/4 v0, 0x1

    .line 1256
    if-nez p1, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return v0

    .line 1259
    :cond_1
    const-string v1, "host/network"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "not found"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1260
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkOnline()V
    .locals 4

    .prologue
    .line 1667
    const-string v2, "FirewallPolicy"

    const-string v3, "checkOnline()..."

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1670
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1671
    .local v1, netInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1672
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    .line 1673
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->executePendingCommands()V

    .line 1677
    :goto_0
    return-void

    .line 1675
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    goto :goto_0
.end method

.method private cleanChain(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "chain"
    .parameter "table"

    .prologue
    .line 1166
    if-nez p1, :cond_0

    .line 1174
    :goto_0
    return-void

    .line 1169
    :cond_0
    if-nez p2, :cond_1

    .line 1170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1172
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private cleanInDb(ILjava/lang/String;)Z
    .locals 3
    .parameter "uid"
    .parameter "type"

    .prologue
    .line 1462
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1463
    .local v0, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "adminUid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1465
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "FirewallTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    .line 1467
    const/4 v1, 0x1

    return v1
.end method

.method private clearPendingCommands()V
    .locals 2

    .prologue
    .line 1328
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    monitor-enter v1

    .line 1329
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1330
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1331
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    monitor-enter v1

    .line 1332
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1333
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1334
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    monitor-enter v1

    .line 1335
    :try_start_2
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1336
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1337
    return-void

    .line 1330
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1333
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1336
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method private createChainForMarket()V
    .locals 3

    .prologue
    .line 2195
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isMarketChainCreated:Z

    if-nez v1, :cond_0

    .line 2196
    const-string v1, "samsung_market_policy-output"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2198
    .local v0, commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "/system/bin/iptables -I OUTPUT 1 -j samsung_market_policy-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2199
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(Ljava/util/List;)Ljava/util/List;

    .line 2200
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isMarketChainCreated:Z

    .line 2202
    .end local v0           #commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method private createIptablesChains()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1182
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v1, v1, v6

    const-string v2, "nat"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1183
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v1, v1, v7

    const-string v2, "nat"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1184
    const-string v1, "samsung_exceptions-output"

    const-string v2, "nat"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1186
    .local v0, commands:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A INPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A INPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    const-string v1, "/system/bin/iptables -t nat -A OUTPUT -j samsung_exceptions-output"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -t nat -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/bin/iptables -t nat -A OUTPUT -j "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(Ljava/util/List;)Ljava/util/List;

    .line 1199
    sput-boolean v3, Lcom/android/server/enterprise/firewall/FirewallPolicy;->isIptChainsCreated:Z

    .line 1200
    return-void
.end method

.method private createJSON(Ljava/util/List;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .local p1, argNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, argValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 1802
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_1

    move-object v2, v5

    .line 1823
    :cond_0
    :goto_0
    return-object v2

    .line 1806
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1809
    .local v2, jsonRule:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 1810
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1811
    .local v3, name:Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1812
    .local v4, value:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 1813
    const-string v6, ""

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1809
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1815
    :cond_2
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1818
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #value:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1819
    .local v0, e:Lorg/json/JSONException;
    const-string v6, "FirewallPolicy"

    const-string v7, "JSONException..."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    .line 1820
    goto :goto_0
.end method

.method private createSingleIptablesChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "chain"
    .parameter "table"

    .prologue
    .line 1203
    if-nez p2, :cond_0

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1208
    :goto_0
    return-object v0

    .line 1207
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -F "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/system/bin/iptables -t "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -N "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private disableProxyOnIptables(I)Z
    .locals 9
    .parameter "enabledUid"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 1143
    const-string v4, "FirewallPolicy"

    const-string v5, "disableProxyOnIptables"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v3

    .line 1145
    .local v3, uid:I
    if-ne p1, v3, :cond_0

    .line 1147
    const-string v4, "proxy"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1149
    .local v2, proxyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1150
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1151
    .local v0, arg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1152
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 1153
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1155
    .local v1, args:[Ljava/lang/String;
    aget-object v4, v1, v6

    aget-object v5, v1, v8

    const/4 v6, 0x2

    const-string v7, "proxy"

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    .line 1162
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #args:[Ljava/lang/String;
    .end local v2           #proxyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return v8
.end method

.method private disableRulesOnIptables(I)Z
    .locals 6
    .parameter "enabledUid"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1125
    const-string v1, "FirewallPolicy"

    const-string v2, "disableRulesOnIptables"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    .line 1127
    .local v0, uid:I
    if-ne p1, v0, :cond_0

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-input"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, "nat"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    const-string v1, "samsung_exceptions-output"

    const-string v2, "nat"

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    const-string v1, "/system/bin/iptables -P INPUT ACCEPT"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1137
    const-string v1, "/system/bin/iptables -P OUTPUT ACCEPT"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 1139
    :cond_0
    return v4
.end method

.method private enforceFirewallPermission()I
    .locals 2

    .prologue
    .line 1723
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_FIREWALL"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 1724
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private declared-synchronized executePendingCommands()V
    .locals 7

    .prologue
    .line 1291
    monitor-enter p0

    :try_start_0
    const-string v4, "FirewallPolicy"

    const-string v5, "execute pending commands"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1295
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1296
    .local v2, tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1297
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1298
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1300
    .local v0, command:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1291
    .end local v0           #command:Ljava/lang/String;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 1297
    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v4

    .line 1304
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1305
    :try_start_5
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1306
    .end local v2           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v3, tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_6
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1307
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1309
    :try_start_7
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1311
    .restart local v0       #command:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 1307
    .end local v0           #command:Ljava/lang/String;
    .end local v3           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_2
    move-exception v4

    :goto_2
    :try_start_8
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v4

    .line 1315
    .end local v2           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    monitor-enter v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1316
    :try_start_a
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1317
    .end local v3           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_b
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1318
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1319
    :try_start_c
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1321
    .restart local v0       #command:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_3

    .line 1318
    .end local v0           #command:Ljava/lang/String;
    .end local v2           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_3
    move-exception v4

    move-object v2, v3

    .end local v3           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_4
    :try_start_d
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1324
    :cond_2
    monitor-exit p0

    return-void

    .line 1318
    :catchall_4
    move-exception v4

    goto :goto_4

    .line 1307
    .end local v2           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_5
    move-exception v4

    move-object v2, v3

    .end local v3           #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #tempList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method private getAllRules(I)Ljava/util/List;
    .locals 6
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1592
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1593
    .local v3, rules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1595
    .local v1, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "allow"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1596
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1597
    .local v2, rule:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";allow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1599
    .end local v2           #rule:Ljava/lang/String;
    :cond_0
    const-string v4, "deny"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1600
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1601
    .restart local v2       #rule:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";deny"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1603
    .end local v2           #rule:Ljava/lang/String;
    :cond_1
    const-string v4, "reroute"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1604
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1605
    .restart local v2       #rule:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";reroute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1607
    .end local v2           #rule:Ljava/lang/String;
    :cond_2
    const-string v4, "redirect_exception"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1608
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1609
    .restart local v2       #rule:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";redirect_exceptions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1612
    .end local v2           #rule:Ljava/lang/String;
    :cond_3
    return-object v1
.end method

.method private getAppUid(Ljava/lang/String;)I
    .locals 7
    .parameter "packageName"

    .prologue
    .line 1827
    const/4 v1, -0x1

    .line 1828
    .local v1, appUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1830
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1831
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v1

    .line 1836
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v4

    .line 1832
    :catch_0
    move-exception v2

    .line 1833
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "FirewallPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Package Name not found error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    const/4 v4, -0x1

    goto :goto_0
.end method

.method private getChain(I)Ljava/lang/String;
    .locals 1
    .parameter "action"

    .prologue
    .line 1847
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 1851
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 1853
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    .locals 8
    .parameter "processResult"

    .prologue
    .line 1680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1681
    .local v4, resultBuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1683
    .local v1, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1685
    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, line:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1686
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1688
    .end local v3           #line:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 1689
    .end local v2           #in:Ljava/io/BufferedReader;
    .local v0, e:Ljava/io/IOException;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v5, "FirewallPolicy"

    const-string v6, "getCommandResult : "

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1692
    if-eqz v1, :cond_0

    .line 1693
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1699
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 1692
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 1693
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_3
    move-object v1, v2

    .line 1698
    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_2

    .line 1691
    .end local v3           #line:Ljava/lang/String;
    :catchall_0
    move-exception v5

    .line 1692
    :goto_4
    if-eqz v1, :cond_3

    .line 1693
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1691
    :cond_3
    :goto_5
    throw v5

    .line 1695
    :catch_1
    move-exception v0

    .line 1696
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "FirewallPolicy"

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1695
    :catch_2
    move-exception v0

    .line 1696
    const-string v5, "FirewallPolicy"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1695
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 1696
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "FirewallPolicy"

    const-string v6, ""

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1691
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #line:Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_4

    .line 1688
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getLastUidForProxy()I
    .locals 8

    .prologue
    .line 1569
    const-string v5, "FirewallPolicy"

    const-string v6, "getLastUidForProxy"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1571
    .local v1, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    .line 1572
    .local v3, returnColumns:[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "adminUid"

    aput-object v6, v3, v5

    .line 1574
    const-string v5, "type =? "

    const-string v6, "proxy"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    const-string v5, "enabled =? "

    const-string v6, "true"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1577
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "FirewallTable"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1580
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1581
    const-string v5, "adminUid"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1582
    .local v2, index:I
    new-instance v4, Ljava/lang/Integer;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 1586
    .end local v2           #index:I
    .local v4, uid:Ljava/lang/Integer;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1587
    const-string v5, "FirewallPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getLastUidForProxy() uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5

    .line 1584
    .end local v4           #uid:Ljava/lang/Integer;
    :cond_0
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .restart local v4       #uid:Ljava/lang/Integer;
    goto :goto_0
.end method

.method private getLastUidForRules()I
    .locals 8

    .prologue
    .line 1547
    const-string v5, "FirewallPolicy"

    const-string v6, "getLastUidForRules"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1549
    .local v1, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    .line 1550
    .local v3, returnColumns:[Ljava/lang/String;
    const/4 v5, 0x0

    const-string v6, "adminUid"

    aput-object v6, v3, v5

    .line 1552
    const-string v5, "type !=? "

    const-string v6, "proxy"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1554
    const-string v5, "enabled =? "

    const-string v6, "true"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "FirewallTable"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v3, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1558
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1559
    const-string v5, "adminUid"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1560
    .local v2, index:I
    new-instance v4, Ljava/lang/Integer;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 1564
    .end local v2           #index:I
    .local v4, uid:Ljava/lang/Integer;
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1565
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    return v5

    .line 1562
    .end local v4           #uid:Ljava/lang/Integer;
    :cond_0
    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .restart local v4       #uid:Ljava/lang/Integer;
    goto :goto_0
.end method

.method private getNetworkAppsList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2452
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2454
    .local v4, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2455
    .local v3, pkgManager:Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 2457
    .local v1, appInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 2458
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    const-string v5, "android.permission.INTERNET"

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 2460
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2463
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return-object v4
.end method

.method private getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "uid"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1392
    const-string v9, "FirewallPolicy"

    const-string v10, "getRulesFromDb.."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1394
    .local v2, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x1

    new-array v6, v9, [Ljava/lang/String;

    .line 1395
    .local v6, returnColumns:[Ljava/lang/String;
    const/4 v9, 0x0

    const-string v10, "rules"

    aput-object v10, v6, v9

    .line 1396
    const-string v9, "type =? "

    invoke-virtual {v2, v9, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    const-string v9, "adminUid =? "

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "FirewallTable"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v6, v2, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1400
    .local v0, cursor:Landroid/database/Cursor;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1401
    .local v5, resultset:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_8

    .line 1402
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1403
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v9

    if-nez v9, :cond_7

    .line 1404
    const-string v9, "rules"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1407
    .local v4, jsonString:Ljava/lang/String;
    const-string v7, ""

    .line 1409
    .local v7, ruleStr:Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1410
    .local v3, json:Lorg/json/JSONObject;
    const-string v9, "reroute"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1411
    const-string v9, "type"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1412
    .local v8, ruleType:Ljava/lang/String;
    if-eqz v8, :cond_1

    const-string v9, "default"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1413
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "originHost"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "originPort"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "destHost"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "destPort"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1452
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v8           #ruleType:Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1454
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1417
    .restart local v3       #json:Lorg/json/JSONObject;
    .restart local v8       #ruleType:Ljava/lang/String;
    :cond_1
    if-eqz v8, :cond_0

    :try_start_1
    const-string v9, "app"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1418
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "originHost"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "originPort"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "destHost"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "destPort"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "packageName"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "networkInterface"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1425
    .end local v8           #ruleType:Ljava/lang/String;
    :cond_2
    const-string v9, "allow"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "deny"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1426
    :cond_3
    const-string v9, "type"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1427
    .restart local v8       #ruleType:Ljava/lang/String;
    if-eqz v8, :cond_4

    const-string v9, "default"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1428
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "host"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "port"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "portLocation"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 1431
    :cond_4
    if-eqz v8, :cond_0

    const-string v9, "app"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1432
    const-string v9, "deny"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1433
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "host"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "port"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "portLocation"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "packageName"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "networkInterface"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 1438
    :cond_5
    const-string v9, "allow"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1439
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "host"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "port"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "portLocation"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "networkInterface"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 1446
    .end local v8           #ruleType:Ljava/lang/String;
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "host"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "port"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto/16 :goto_1

    .line 1449
    .end local v3           #json:Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1450
    .local v1, e:Lorg/json/JSONException;
    const-string v9, "FirewallPolicy"

    const-string v10, "JSONException"

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1456
    .end local v1           #e:Lorg/json/JSONException;
    .end local v4           #jsonString:Ljava/lang/String;
    .end local v7           #ruleStr:Ljava/lang/String;
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1458
    :cond_8
    return-object v5
.end method

.method private getUrlBlackList(I)Ljava/util/List;
    .locals 10
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1875
    const/4 v8, 0x1

    new-array v0, v8, [Ljava/lang/String;

    .line 1876
    .local v0, columns:[Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "url"

    aput-object v9, v0, v8

    .line 1877
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1879
    .local v6, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-lez p1, :cond_4

    .line 1880
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "WebFilterTable"

    invoke-virtual {v8, v9, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1884
    .local v1, cursor:Landroid/database/Cursor;
    if-nez v1, :cond_1

    .line 1885
    const-string v8, "FirewallPolicy"

    const-string v9, "getUrlBlackList - Cursor is null"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 1917
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v6           #urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v6

    .line 1889
    .restart local v1       #cursor:Landroid/database/Cursor;
    .restart local v6       #urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1892
    :cond_2
    :try_start_0
    const-string v8, "url"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1893
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-nez v8, :cond_2

    .line 1900
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1895
    :catch_0
    move-exception v4

    .line 1896
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "FirewallPolicy"

    const-string v9, "getUrlBlackList - IllegalArgumentException"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 1897
    goto :goto_0

    .line 1902
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :cond_4
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "WebFilterTable"

    invoke-virtual {v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1904
    .local v3, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v3, :cond_5

    .line 1905
    const-string v8, "FirewallPolicy"

    const-string v9, "getUrlBlackList - cv is null"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 1906
    goto :goto_0

    .line 1909
    :cond_5
    const/4 v2, 0x0

    .line 1910
    .local v2, cv:Landroid/content/ContentValues;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1912
    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1913
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cv:Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 1914
    .restart local v2       #cv:Landroid/content/ContentValues;
    const-string v7, "url"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getUrlFilterState(ILjava/lang/String;)Z
    .locals 11
    .parameter "uid"
    .parameter "column"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1921
    new-array v0, v10, [Ljava/lang/String;

    .line 1922
    .local v0, columns:[Ljava/lang/String;
    aput-object p2, v0, v9

    .line 1923
    const/4 v5, 0x0

    .line 1925
    .local v5, ret:Z
    const-string v6, "FirewallPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUrlFilterState - uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    if-lez p1, :cond_2

    .line 1927
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WebFilterSettingsTable"

    invoke-virtual {v6, v7, p1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1930
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 1931
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ne v6, v10, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1932
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1933
    const/4 v5, 0x1

    .line 1936
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1954
    .end local v1           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    const-string v6, "FirewallPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getUrlFilterState - ret: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    return v5

    .line 1939
    :cond_2
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WebFilterSettingsTable"

    invoke-virtual {v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1941
    .local v3, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_1

    .line 1942
    const/4 v2, 0x0

    .line 1943
    .local v2, cv:Landroid/content/ContentValues;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1945
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1946
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #cv:Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 1947
    .restart local v2       #cv:Landroid/content/ContentValues;
    invoke-virtual {v2, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1948
    const/4 v5, 0x1

    .line 1949
    goto :goto_0
.end method

.method private handleConnectivityAction()V
    .locals 2

    .prologue
    .line 1706
    const-string v0, "FirewallPolicy"

    const-string v1, "Entering handleConnectivityAction..."

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->checkOnline()V

    .line 1708
    return-void
.end method

.method private removeDuplicatesFromList(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1370
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, duplicates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1371
    .local v0, delta:I
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1372
    .local v2, index:I
    sub-int v3, v2, v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1373
    sub-int v3, v2, v0

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1374
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1377
    .end local v2           #index:I
    :cond_1
    return-void
.end method

.method private removeRulesFromDb(Ljava/util/ArrayList;ILjava/lang/String;)Z
    .locals 5
    .parameter
    .parameter "uid"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1380
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1381
    .local v0, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 1382
    .local v2, rule:Lorg/json/JSONObject;
    const-string v3, "adminUid"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    const-string v3, "rules"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    const-string v3, "type"

    invoke-virtual {v0, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "FirewallTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    .line 1386
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 1388
    .end local v2           #rule:Lorg/json/JSONObject;
    :cond_0
    const/4 v3, 0x1

    return v3
.end method

.method private rollbackEnabled()V
    .locals 2

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 631
    .local v0, oldUid:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 632
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(ZI)Z

    .line 634
    :cond_0
    return-void
.end method

.method private rollbackProxyEnabled()V
    .locals 2

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy()I

    move-result v0

    .line 638
    .local v0, oldUid:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 639
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(ZI)Z

    .line 641
    :cond_0
    return-void
.end method

.method private runIptablesCommands(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1213
    .local p1, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runIptablesCommands(Ljava/util/List;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private runIptablesCommands(Ljava/util/List;ZI)Ljava/util/List;
    .locals 4
    .parameter
    .parameter "isHostName"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1217
    .local p1, commands:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1218
    .local v2, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1219
    .local v0, command:Ljava/lang/String;
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1221
    .end local v0           #command:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "command"

    .prologue
    .line 1225
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runSingleIptablesCommand(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 1
    .parameter "command"
    .parameter "isHostName"
    .parameter "type"

    .prologue
    .line 1229
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private runSingleIptablesCommand(Ljava/lang/String;ZIZ)Ljava/lang/String;
    .locals 10
    .parameter "command"
    .parameter "isHostName"
    .parameter "type"
    .parameter "pending"

    .prologue
    .line 1234
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1235
    .local v4, commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1236
    .local v3, commandArray:[Ljava/lang/String;
    const-string v8, ""

    .line 1237
    .local v8, result:Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v0, v5

    .line 1238
    .local v2, commandArg:Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1240
    .end local v2           #commandArg:Ljava/lang/String;
    :cond_0
    if-eqz p2, :cond_1

    iget-boolean v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsOnline:Z

    if-eqz v9, :cond_3

    .line 1241
    :cond_1
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 1242
    .local v7, msg:Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1243
    .local v1, bundle:Landroid/os/Bundle;
    const-string v9, "command"

    invoke-virtual {v1, v9, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const-string v9, "type"

    invoke-virtual {v1, v9, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1245
    invoke-virtual {v7, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1246
    iget-object v9, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mLooperThread:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;

    iget-object v9, v9, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsLooperThread;->mHandler:Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;

    invoke-virtual {v9, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy$CommandsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1252
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v7           #msg:Landroid/os/Message;
    :cond_2
    :goto_1
    return-object v8

    .line 1248
    :cond_3
    if-nez p4, :cond_2

    .line 1249
    invoke-direct {p0, p1, p3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addPendingCommand(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "command"

    .prologue
    const/4 v9, 0x0

    .line 1778
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1779
    .local v3, commandStr:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, " "

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1780
    .local v2, commandArray:[Ljava/lang/String;
    const-string v8, ""

    .line 1782
    .local v8, result:Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v0, v5

    .line 1783
    .local v1, commandArg:Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1782
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1786
    .end local v1           #commandArg:Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v10, Ljava/lang/ProcessBuilder;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/ProcessBuilder;->command(Ljava/util/List;)Ljava/lang/ProcessBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v7

    .line 1788
    .local v7, process:Ljava/lang/Process;
    invoke-virtual {v7}, Ljava/lang/Process;->waitFor()I

    .line 1789
    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getCommandResult(Ljava/lang/Process;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    move-object v9, v8

    .line 1797
    .end local v7           #process:Ljava/lang/Process;
    :goto_1
    return-object v9

    .line 1790
    :catch_0
    move-exception v4

    .line 1791
    .local v4, e:Ljava/io/IOException;
    const-string v10, "FirewallPolicy"

    const-string v11, "Synchronous iptables command failed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1793
    .end local v4           #e:Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 1794
    .local v4, e:Ljava/lang/InterruptedException;
    const-string v10, "FirewallPolicy"

    const-string v11, "Synchronous iptables command failed"

    invoke-static {v10, v11}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private saveUrlBlackList(ILjava/util/List;)Z
    .locals 5
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1857
    .local p2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1858
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1860
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WebFilterTable"

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;I)Z

    .line 1861
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1862
    const-string v2, "adminUid"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1863
    const-string v3, "url"

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    const-string v2, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveUrlBlackList - cv: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "WebFilterTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1867
    const/4 v2, 0x0

    .line 1871
    :goto_1
    return v2

    .line 1869
    :cond_0
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    goto :goto_0

    .line 1871
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private setBasicRules(Ljava/util/List;I)Z
    .locals 5
    .parameter
    .parameter "ruleAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    .line 232
    const-string v3, "FirewallPolicy"

    const-string v4, "setBasicRules..."

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 234
    .local v0, enabledUid:I
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 235
    .local v1, uid:I
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanRules(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->addRules(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    if-ne v0, v1, :cond_0

    .line 238
    invoke-virtual {p0, v2, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(ZI)Z

    .line 243
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setBasicRulesEnableOnDb(ZI)Z
    .locals 4
    .parameter "status"
    .parameter "uid"

    .prologue
    .line 1472
    const-string v1, "FirewallPolicy"

    const-string v2, "setBasicRulesEnableOnDb"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    const/4 v0, 0x0

    .line 1474
    .local v0, ret:Z
    const-string v1, "allow"

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(ZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1475
    const-string v1, "deny"

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(ZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1476
    const-string v1, "reroute"

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(ZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1477
    const-string v1, "redirect_exception"

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(ZLjava/lang/String;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1478
    const-string v1, "FirewallPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBasicRulesEnableOnDb before ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    return v0
.end method

.method private setEnableOnDb(ZLjava/lang/String;I)Z
    .locals 17
    .parameter "status"
    .parameter "type"
    .parameter "uid"

    .prologue
    .line 1490
    const-string v14, "FirewallPolicy"

    const-string v15, "setEnableOnDb..."

    invoke-static {v14, v15}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1492
    .local v3, cv:Landroid/content/ContentValues;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1493
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "adminUid =? "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    const-string v14, "type =? "

    move-object/from16 v0, p2

    invoke-virtual {v7, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    if-eqz p1, :cond_1

    .line 1500
    const-string v14, "enabled"

    const-string v15, "true"

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    invoke-virtual {v14}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    .line 1502
    .local v11, timestamp:J
    const-string v14, "timestamp"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1503
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "FirewallTable"

    invoke-virtual {v14, v15, v3, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v13

    .line 1504
    .local v13, updated:I
    if-lez v13, :cond_0

    .line 1506
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1507
    .local v4, helpCv:Landroid/content/ContentValues;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1508
    .local v5, helpMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "enabled"

    const-string v15, "false"

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    const-string v14, "adminUid !=? "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    const-string v14, "enabled =? "

    const-string v15, "true"

    invoke-virtual {v5, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    const-string v14, "type =? "

    move-object/from16 v0, p2

    invoke-virtual {v5, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "FirewallTable"

    invoke-virtual {v14, v15, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    .line 1543
    .end local v4           #helpCv:Landroid/content/ContentValues;
    .end local v5           #helpMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #timestamp:J
    .end local v13           #updated:I
    :goto_0
    const/4 v14, 0x1

    :goto_1
    return v14

    .line 1517
    .restart local v11       #timestamp:J
    .restart local v13       #updated:I
    :cond_0
    const/4 v14, 0x0

    goto :goto_1

    .line 1521
    .end local v11           #timestamp:J
    .end local v13           #updated:I
    :cond_1
    const-string v14, "enabled"

    const-string v15, "false"

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    const-string v14, "timestamp"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1523
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "FirewallTable"

    invoke-virtual {v14, v15, v3, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/util/HashMap;)I

    move-result v14

    if-lez v14, :cond_3

    .line 1525
    const/4 v14, 0x2

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "adminUid"

    aput-object v15, v10, v14

    const/4 v14, 0x1

    const-string v15, "timestamp"

    aput-object v15, v10, v14

    .line 1528
    .local v10, returnColumns:[Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 1529
    .local v8, myMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v14, "adminUid !=? "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "FirewallTable"

    const-string v16, "timestamp"

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v10, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;[Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1533
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1534
    const-string v14, "adminUid"

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1535
    .local v6, index:I
    new-instance v9, Ljava/lang/Integer;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 1536
    .local v9, myUid:Ljava/lang/Integer;
    const/4 v14, 0x1

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v1, v15}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(ZLjava/lang/String;I)Z

    .line 1538
    .end local v6           #index:I
    .end local v9           #myUid:Ljava/lang/Integer;
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1540
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v8           #myMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10           #returnColumns:[Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    goto :goto_1
.end method

.method private setProxyRulesEnableOnDb(ZI)Z
    .locals 2
    .parameter "status"
    .parameter "uid"

    .prologue
    .line 1483
    const/4 v0, 0x1

    .line 1484
    .local v0, ret:Z
    const-string v1, "proxy"

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setEnableOnDb(ZLjava/lang/String;I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 1485
    return v0
.end method

.method private validateHostAndPort(ILjava/lang/String;)Z
    .locals 20
    .parameter "type"
    .parameter "rule"

    .prologue
    .line 2377
    const-string v13, "([A-Za-z0-9][a-zA-Z0-9\\-\\.\\_\\~\\:\\/\\?\\#\\@\\!\\$\\&\\\'\\(\\)\\*\\+\\,\\;\\=\\[\\]]+)|(^\\*$)"

    .line 2378
    .local v13, regexDomain:Ljava/lang/String;
    const-string v14, "\\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)"

    .line 2379
    .local v14, regexIp:Ljava/lang/String;
    const-string v15, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))|\\*"

    .line 2380
    .local v15, regexPort:Ljava/lang/String;
    const-string v16, "^(remote|local|\\*)$"

    .line 2382
    .local v16, regexPortLocation:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 2394
    :goto_0
    :pswitch_0
    const/4 v10, 0x1

    .line 2397
    .local v10, parcialResult:Z
    const/4 v6, 0x0

    .local v6, hosts:[Ljava/lang/String;
    const/4 v12, 0x0

    .line 2398
    .local v12, ports:[Ljava/lang/String;
    const/16 v17, 0x3a

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 2400
    .local v8, index:I
    if-lez v8, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v8, v0, :cond_1

    .line 2401
    const/16 v17, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2402
    .local v2, allHosts:Ljava/lang/String;
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 2403
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2404
    array-length v0, v6

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 2405
    const/4 v10, 0x0

    .line 2446
    .end local v2           #allHosts:Ljava/lang/String;
    .end local v6           #hosts:[Ljava/lang/String;
    .end local v8           #index:I
    .end local v10           #parcialResult:Z
    .end local v12           #ports:[Ljava/lang/String;
    :goto_1
    return v10

    .line 2384
    :pswitch_1
    move-object v13, v14

    .line 2385
    const-string v15, "\\b(?:(?:6553[0-5]|655[0-2][0-9]|65[0-4][0-9]{2}|6[0-4][0-9]{3}|[1-5]?[0-9]{1,4}))"

    .line 2386
    goto :goto_0

    .line 2388
    :pswitch_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")|\\*"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2389
    goto :goto_0

    .line 2391
    :pswitch_3
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    goto :goto_1

    .line 2408
    .restart local v2       #allHosts:Ljava/lang/String;
    .restart local v6       #hosts:[Ljava/lang/String;
    .restart local v8       #index:I
    .restart local v10       #parcialResult:Z
    .restart local v12       #ports:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v17, v8, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2409
    .local v3, allPorts:Ljava/lang/String;
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 2410
    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 2411
    array-length v0, v12

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 2412
    const/4 v10, 0x0

    goto :goto_1

    .line 2416
    .end local v2           #allHosts:Ljava/lang/String;
    .end local v3           #allPorts:Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 2419
    .restart local v2       #allHosts:Ljava/lang/String;
    .restart local v3       #allPorts:Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_6

    .line 2420
    move-object v4, v6

    .local v4, arr$:[Ljava/lang/String;
    array-length v9, v4

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_2
    if-ge v7, v9, :cond_7

    aget-object v5, v4, v7

    .line 2421
    .local v5, host:Ljava/lang/String;
    const-string v17, " "

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2422
    const/4 v10, 0x0

    .line 2426
    :goto_3
    if-nez v10, :cond_3

    .line 2427
    invoke-virtual {v5, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    .line 2429
    :cond_3
    if-nez v10, :cond_4

    .line 2430
    invoke-virtual {v5, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    .line 2420
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2424
    :cond_5
    invoke-virtual {v5, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    goto :goto_3

    .line 2434
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v5           #host:Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    :cond_6
    const/4 v10, 0x0

    .line 2436
    :cond_7
    if-eqz v12, :cond_9

    .line 2437
    move-object v4, v12

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v9, v4

    .restart local v9       #len$:I
    const/4 v7, 0x0

    .restart local v7       #i$:I
    :goto_4
    if-ge v7, v9, :cond_a

    aget-object v11, v4, v7

    .line 2438
    .local v11, port:Ljava/lang/String;
    if-ltz v8, :cond_8

    if-eqz v10, :cond_8

    .line 2439
    invoke-virtual {v11, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    .line 2437
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2443
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v11           #port:Ljava/lang/String;
    :cond_9
    const/4 v10, 0x0

    .line 2445
    :cond_a
    const-string v17, "TAG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " > "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2382
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private validateNetworkInterface(Ljava/lang/String;)Z
    .locals 5
    .parameter "interfaceType"

    .prologue
    .line 2481
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->INTERFACE_TYPES:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 2482
    .local v2, interType:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2483
    const/4 v4, 0x1

    .line 2486
    .end local v2           #interType:Ljava/lang/String;
    :goto_1
    return v4

    .line 2481
    .restart local v2       #interType:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2486
    .end local v2           #interType:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private validatePackageName(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    .line 2467
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getNetworkAppsList()Ljava/util/List;

    move-result-object v2

    .line 2469
    .local v2, netAppsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "*"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2470
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2471
    .local v1, netApp:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2472
    const/4 v3, 0x1

    .line 2475
    .end local v1           #netApp:Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private validateParameters(ILjava/util/List;)Z
    .locals 12
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 2308
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    move v2, v6

    .line 2373
    :cond_1
    :goto_0
    return v2

    .line 2311
    :cond_2
    const/4 v2, 0x1

    .line 2313
    .local v2, finalResult:Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2314
    .local v5, rule:Ljava/lang/String;
    if-nez v5, :cond_3

    move v2, v6

    .line 2315
    goto :goto_0

    .line 2317
    :cond_3
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v2, v6

    .line 2370
    goto :goto_0

    .line 2319
    :pswitch_1
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2320
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2321
    .local v4, rerouteArgs:[Ljava/lang/String;
    array-length v7, v4

    if-ne v7, v9, :cond_4

    .line 2322
    aget-object v7, v4, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2323
    aget-object v7, v4, v8

    invoke-direct {p0, v11, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto :goto_1

    .line 2324
    :cond_4
    array-length v7, v4

    if-ne v7, v10, :cond_5

    .line 2325
    aget-object v7, v4, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2326
    aget-object v7, v4, v8

    invoke-direct {p0, v11, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2327
    aget-object v7, v4, v9

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validatePackageName(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2328
    aget-object v7, v4, v11

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateNetworkInterface(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto :goto_1

    :cond_5
    move v2, v6

    .line 2330
    goto :goto_0

    .end local v4           #rerouteArgs:[Ljava/lang/String;
    :cond_6
    move v2, v6

    .line 2333
    goto :goto_0

    .line 2337
    :pswitch_2
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2338
    .local v0, allowArgs:[Ljava/lang/String;
    array-length v7, v0

    if-ne v7, v9, :cond_7

    .line 2339
    aget-object v7, v0, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2340
    aget-object v7, v0, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto :goto_1

    .line 2341
    :cond_7
    array-length v7, v0

    if-ne v7, v11, :cond_8

    .line 2342
    aget-object v7, v0, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2343
    aget-object v7, v0, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2344
    aget-object v7, v0, v9

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateNetworkInterface(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_1

    :cond_8
    move v2, v6

    .line 2346
    goto/16 :goto_0

    .line 2352
    .end local v0           #allowArgs:[Ljava/lang/String;
    :pswitch_3
    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2353
    .local v1, denyArgs:[Ljava/lang/String;
    array-length v7, v1

    if-ne v7, v9, :cond_9

    .line 2354
    aget-object v7, v1, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2355
    aget-object v7, v1, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_1

    .line 2356
    :cond_9
    array-length v7, v1

    if-ne v7, v10, :cond_a

    .line 2357
    aget-object v7, v1, v6

    invoke-direct {p0, p1, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2358
    aget-object v7, v1, v8

    invoke-direct {p0, v10, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2359
    aget-object v7, v1, v9

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validatePackageName(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2360
    aget-object v7, v1, v11

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateNetworkInterface(Ljava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    goto/16 :goto_1

    :cond_a
    move v2, v6

    .line 2362
    goto/16 :goto_0

    .line 2367
    .end local v1           #denyArgs:[Ljava/lang/String;
    :pswitch_4
    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateHostAndPort(ILjava/lang/String;)Z

    move-result v7

    and-int/2addr v2, v7

    .line 2368
    goto/16 :goto_1

    .line 2317
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public addRules(Ljava/util/List;I)Z
    .locals 4
    .parameter
    .parameter "ruleAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 199
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    .line 200
    .local v0, uid:I
    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    :goto_0
    return v1

    .line 203
    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 208
    :pswitch_1
    invoke-direct {p0, v0, p1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRules(ILjava/util/List;I)Z

    move-result v1

    goto :goto_0

    .line 206
    :pswitch_2
    invoke-direct {p0, v0, p1, v3, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRules(ILjava/util/List;II)Z

    move-result v1

    goto :goto_0

    .line 210
    :pswitch_3
    invoke-direct {p0, v0, p1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRules(ILjava/util/List;I)Z

    move-result v1

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public cleanAllRules()Z
    .locals 1

    .prologue
    .line 410
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanAllRules(I)Z

    move-result v0

    return v0
.end method

.method public cleanAllRules(I)Z
    .locals 3
    .parameter "uid"

    .prologue
    .line 414
    const-string v1, "FirewallPolicy"

    const-string v2, "cleanAllRules()... "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const/4 v0, 0x1

    .line 417
    .local v0, ret:Z
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(II)Z

    move-result v1

    and-int/2addr v0, v1

    .line 418
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(II)Z

    move-result v1

    and-int/2addr v0, v1

    .line 419
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(II)Z

    move-result v1

    and-int/2addr v0, v1

    .line 420
    const/4 v1, 0x7

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(II)Z

    move-result v1

    and-int/2addr v0, v1

    .line 422
    return v0
.end method

.method public cleanBasicRules(II)Z
    .locals 9
    .parameter "uid"
    .parameter "action"

    .prologue
    .line 295
    const-string v7, "FirewallPolicy"

    const-string v8, "cleanBasicRules..."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    .line 297
    const/4 v7, -0x1

    if-ne p1, v7, :cond_0

    .line 298
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 301
    :cond_0
    const-string v6, ""

    .line 302
    .local v6, type:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v1, chains:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 305
    .local v5, table:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules()I

    move-result v2

    .line 308
    .local v2, enabledUid:I
    packed-switch p2, :pswitch_data_0

    .line 348
    :goto_0
    :pswitch_0
    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanInDb(ILjava/lang/String;)Z

    .line 349
    if-ne v2, p1, :cond_5

    .line 350
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    .local v0, chain:Ljava/lang/String;
    invoke-direct {p0, v0, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 310
    .end local v0           #chain:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :pswitch_1
    if-ne v2, p1, :cond_1

    .line 311
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    monitor-enter v8

    .line 312
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mAllowQueue:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 313
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :cond_1
    const-string v6, "allow"

    .line 316
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v8, v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-input"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v8, v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-output"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 313
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 320
    :pswitch_2
    if-ne v2, p1, :cond_2

    .line 321
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    monitor-enter v8

    .line 322
    :try_start_2
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mDenyQueue:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 323
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 325
    :cond_2
    const-string v6, "deny"

    .line 326
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v8, v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-input"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v8, v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-output"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    const-string v7, "/system/bin/iptables -P INPUT ACCEPT"

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 329
    const-string v7, "/system/bin/iptables -P OUTPUT ACCEPT"

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSingleIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 323
    :catchall_1
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 332
    :pswitch_3
    if-ne v2, p1, :cond_3

    .line 333
    iget-object v8, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    monitor-enter v8

    .line 334
    :try_start_4
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mRerouteQueue:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 335
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 337
    :cond_3
    const-string v6, "reroute"

    .line 338
    sget-object v7, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v7, v7, p2

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    const-string v5, "nat"

    .line 340
    goto/16 :goto_0

    .line 335
    :catchall_2
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v7

    .line 342
    :pswitch_4
    const-string v6, "redirect_exception"

    .line 343
    const-string v7, "samsung_exceptions-output"

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    const-string v5, "nat"

    goto/16 :goto_0

    .line 353
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllRules(I)Ljava/util/List;

    move-result-object v4

    .line 354
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_5

    .line 356
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->rollbackEnabled()V

    .line 359
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/4 v7, 0x1

    return v7

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public cleanProxyRules(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 450
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(II)Z

    move-result v0

    return v0
.end method

.method public cleanProxyRules(II)Z
    .locals 6
    .parameter "uid"
    .parameter "type"

    .prologue
    .line 454
    const-string v4, "FirewallPolicy"

    const-string v5, "cleanProxyRules..."

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    .line 456
    const/4 v4, -0x1

    if-ne p1, v4, :cond_0

    .line 457
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 459
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy()I

    move-result v1

    .line 461
    .local v1, enabledUid:I
    const-string v3, ""

    .line 462
    .local v3, typeStr:Ljava/lang/String;
    const-string v0, ""

    .line 463
    .local v0, chain:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 469
    const/4 v4, 0x0

    .line 482
    :goto_0
    return v4

    .line 465
    :pswitch_0
    sget-object v4, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v0, v4, v5

    .line 466
    const-string v3, "proxy"

    .line 472
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanInDb(ILjava/lang/String;)Z

    .line 473
    if-ne v1, p1, :cond_2

    .line 474
    const-string v4, "nat"

    invoke-direct {p0, v0, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v4, "proxy"

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 476
    .local v2, list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 478
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->rollbackProxyEnabled()V

    .line 482
    .end local v2           #list1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public cleanRules(I)Z
    .locals 1
    .parameter "ruleAction"

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    .line 282
    packed-switch p1, :pswitch_data_0

    .line 291
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 287
    :pswitch_1
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanBasicRules(II)Z

    move-result v0

    goto :goto_0

    .line 289
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(I)Z

    move-result v0

    goto :goto_0

    .line 282
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public enableProxy(Z)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 554
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(ZI)Z

    move-result v0

    return v0
.end method

.method public enableProxy(ZI)Z
    .locals 1
    .parameter "status"
    .parameter "uid"

    .prologue
    .line 562
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(ZIZ)Z

    move-result v0

    return v0
.end method

.method public enableProxy(ZIZ)Z
    .locals 9
    .parameter "status"
    .parameter "uid"
    .parameter "boot"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 566
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v2

    .line 567
    .local v2, callingUid:I
    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    .line 568
    move p2, v2

    .line 570
    :cond_0
    if-eqz p1, :cond_4

    .line 572
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy()I

    move-result v7

    if-ne p2, v7, :cond_1

    if-eqz p3, :cond_2

    .line 574
    :cond_1
    invoke-direct {p0, v5, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setProxyRulesEnableOnDb(ZI)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 575
    const-string v7, "proxy"

    invoke-direct {p0, p2, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 577
    .local v4, proxyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 578
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 579
    .local v0, arg:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 580
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 581
    const-string v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 583
    .local v1, args:[Ljava/lang/String;
    aget-object v6, v1, v6

    aget-object v7, v1, v5

    const-string v8, "proxy"

    invoke-direct {p0, v6, v7, v5, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRulesToIptables(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    .line 610
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #args:[Ljava/lang/String;
    .end local v4           #proxyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return v5

    :cond_3
    move v5, v6

    .line 589
    goto :goto_0

    .line 596
    :cond_4
    const-string v7, "FirewallPolicy"

    const-string v8, "enableProxy disable..."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy()I

    move-result v3

    .line 599
    .local v3, enabledUid:I
    invoke-direct {p0, v6, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setProxyRulesEnableOnDb(ZI)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 601
    if-ne v3, p2, :cond_2

    .line 602
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->disableProxyOnIptables(I)Z

    .line 604
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->rollbackProxyEnabled()V

    goto :goto_0

    :cond_5
    move v5, v6

    .line 607
    goto :goto_0
.end method

.method public enableProxyWithUid(ZI)Z
    .locals 1
    .parameter "status"
    .parameter "uid"

    .prologue
    .line 558
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(ZIZ)Z

    move-result v0

    return v0
.end method

.method public enableRules(Z)Z
    .locals 2
    .parameter "status"

    .prologue
    .line 487
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(ZIZ)Z

    move-result v0

    return v0
.end method

.method public enableRules(ZI)Z
    .locals 1
    .parameter "status"
    .parameter "uid"

    .prologue
    .line 495
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(ZIZ)Z

    move-result v0

    return v0
.end method

.method public enableRules(ZIZ)Z
    .locals 12
    .parameter "status"
    .parameter "uid"
    .parameter "boot"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 499
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 500
    .local v1, callingUid:I
    const/4 v8, -0x1

    if-ne p2, v8, :cond_0

    .line 501
    move p2, v1

    .line 503
    :cond_0
    if-eqz p1, :cond_4

    .line 505
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules()I

    move-result v8

    if-ne p2, v8, :cond_1

    if-eqz p3, :cond_2

    .line 508
    :cond_1
    invoke-direct {p0, v6, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setBasicRulesEnableOnDb(ZI)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 509
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearPendingCommands()V

    .line 510
    const-string v8, "allow"

    invoke-direct {p0, p2, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 511
    .local v0, allowRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-input"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-output"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-direct {p0, v0, v6, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRulesToIptables(Ljava/util/List;II)Z

    .line 514
    const-string v8, "deny"

    invoke-direct {p0, p2, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 515
    .local v2, denyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v9, v9, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-input"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v9, v9, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-output"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v10}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-direct {p0, v2, v6, v11}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRulesToIptables(Ljava/util/List;II)Z

    .line 518
    sget-object v8, Lcom/android/server/enterprise/firewall/FirewallPolicy;->iptablesChains:[Ljava/lang/String;

    aget-object v7, v8, v7

    const-string v8, "nat"

    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v7, "reroute"

    invoke-direct {p0, p2, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 521
    .local v5, rerouteRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRulesToIptables(Ljava/util/List;I)Z

    .line 522
    const-string v7, "samsung_exceptions-output"

    const-string v8, "nat"

    invoke-direct {p0, v7, v8}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanChain(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v7, "redirect_exception"

    invoke-direct {p0, p2, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 525
    .local v4, redirectExceptionRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v4, v6}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRulesToIptables(Ljava/util/List;I)Z

    .line 550
    .end local v0           #allowRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #denyRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #redirectExceptionRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5           #rerouteRules:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    return v6

    :cond_3
    move v6, v7

    .line 528
    goto :goto_0

    .line 534
    :cond_4
    const-string v8, "FirewallPolicy"

    const-string v9, "enableRules disable..."

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules()I

    move-result v3

    .line 538
    .local v3, enabledUid:I
    invoke-direct {p0, v7, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setBasicRulesEnableOnDb(ZI)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 540
    if-ne v3, p2, :cond_2

    .line 541
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->disableRulesOnIptables(I)Z

    .line 542
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->clearPendingCommands()V

    .line 544
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->rollbackEnabled()V

    goto :goto_0

    :cond_5
    move v6, v7

    .line 547
    goto :goto_0
.end method

.method public enableRulesWithUid(ZI)Z
    .locals 1
    .parameter "status"
    .parameter "uid"

    .prologue
    .line 491
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableRules(ZIZ)Z

    move-result v0

    return v0
.end method

.method public getAllRulesForUid()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 389
    .local v1, uid:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getAllRules(I)Ljava/util/List;

    move-result-object v0

    .line 392
    return-object v0
.end method

.method public getNetworkForMarket(Z)I
    .locals 5
    .parameter "allAdmins"

    .prologue
    const/4 v1, 0x1

    .line 2216
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    .line 2217
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "MarketNetworkType"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2219
    .local v0, fromDb:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2222
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRules(I)Ljava/util/List;
    .locals 2
    .parameter "ruleAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    .line 265
    .local v0, uid:I
    packed-switch p1, :pswitch_data_0

    .line 277
    :pswitch_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v1

    .line 267
    :pswitch_1
    const-string v1, "allow"

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 269
    :pswitch_2
    const-string v1, "deny"

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 271
    :pswitch_3
    const-string v1, "reroute"

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 273
    :pswitch_4
    const-string v1, "proxy"

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 275
    :pswitch_5
    const-string v1, "redirect_exception"

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getRulesFromDb(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public getURLFilterEnabled(Z)Z
    .locals 4
    .parameter "allAdmins"

    .prologue
    .line 1980
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    .line 1981
    const-string v1, "FirewallPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getURLFilterEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    const/4 v0, -0x1

    .line 1984
    .local v0, uid:I
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsUrlFilterStateUpdated:Z

    if-nez v1, :cond_0

    .line 1985
    const-string v1, "filtering"

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlFilterState(ILjava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUrlFilterStateCache:Z

    .line 1986
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsUrlFilterStateUpdated:Z

    .line 1988
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUrlFilterStateCache:Z

    return v1
.end method

.method public getURLFilterList(Z)Ljava/util/List;
    .locals 5
    .parameter "allAdmins"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 2008
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    .line 2009
    const/4 v0, -0x1

    .line 2010
    .local v0, uid:I
    const/4 v1, 0x0

    .line 2012
    .local v1, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-ne p1, v2, :cond_2

    .line 2017
    iget-boolean v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsUrlBlacklistUpdated:Z

    if-nez v2, :cond_1

    .line 2018
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlBlackList(I)Ljava/util/List;

    move-result-object v1

    .line 2019
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2020
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v3

    .line 2021
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2022
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsUrlBlacklistUpdated:Z

    .line 2023
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2034
    :cond_0
    :goto_0
    const-string v2, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getURLFilterList - return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    return-object v1

    .line 2023
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2027
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUrlBlacklistAllAdmin:Ljava/util/List;

    goto :goto_0

    .line 2031
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    .line 2032
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlBlackList(I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getURLFilterReport()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2141
    const-string v6, "FirewallPolicy"

    const-string v7, "getURLFilterReport()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    .line 2143
    const/4 v6, 0x2

    new-array v0, v6, [Ljava/lang/String;

    .line 2144
    .local v0, columns:[Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "url"

    aput-object v7, v0, v6

    .line 2145
    const/4 v6, 0x1

    const-string v7, "time"

    aput-object v7, v0, v6

    .line 2146
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2147
    .local v5, reportList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WebFilterLogTable"

    invoke-virtual {v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2149
    .local v2, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v2, :cond_1

    .line 2150
    const-string v6, "FirewallPolicy"

    const-string v7, "getURLFilterReport - cvList is null"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2151
    const/4 v5, 0x0

    .line 2163
    .end local v5           #reportList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-object v5

    .line 2153
    .restart local v5       #reportList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    .line 2154
    .local v1, cv:Landroid/content/ContentValues;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2156
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2157
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cv:Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 2158
    .restart local v1       #cv:Landroid/content/ContentValues;
    const-string v6, "time"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2159
    .local v4, report:Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2160
    const-string v6, "url"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2161
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getURLFilterReportEnabled(Z)Z
    .locals 4
    .parameter "allAdmins"

    .prologue
    .line 2130
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    .line 2131
    const-string v1, "FirewallPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getURLFilterReportEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    const/4 v0, -0x1

    .line 2133
    .local v0, uid:I
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsUrlFilterReportUpdated:Z

    if-nez v1, :cond_0

    .line 2134
    const-string v1, "logging"

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getUrlFilterState(ILjava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUrlFilterReportState:Z

    .line 2135
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsUrlFilterReportUpdated:Z

    .line 2137
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUrlFilterReportState:Z

    return v1
.end method

.method public isEnabledProxy()Z
    .locals 3

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 380
    .local v1, uid:I
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy()I

    move-result v0

    .line 381
    .local v0, enabledUid:I
    if-ne v1, v0, :cond_0

    .line 382
    const/4 v2, 0x1

    .line 384
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEnabledRules()Z
    .locals 3

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 368
    .local v1, uid:I
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForRules()I

    move-result v0

    .line 369
    .local v0, enabledUid:I
    if-ne v1, v0, :cond_0

    .line 370
    const/4 v2, 0x1

    .line 372
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isUrlBlocked(Ljava/lang/String;)Z
    .locals 24
    .parameter "url"

    .prologue
    .line 2039
    const/4 v9, 0x0

    .line 2041
    .local v9, isBlocked:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2042
    .local v17, token:J
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterEnabled(Z)Z

    move-result v7

    .line 2043
    .local v7, filterEnabled:Z
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2044
    if-nez v7, :cond_0

    .line 2045
    const-string v21, "FirewallPolicy"

    const-string v22, "isUrlBlocked - Policy disabled"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    const/16 v21, 0x0

    .line 2101
    :goto_0
    return v21

    .line 2049
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2050
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterList(Z)Ljava/util/List;

    move-result-object v19

    .line 2051
    .local v19, urlBlacklist:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2053
    const-string v21, "FirewallPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "urlBlacklist: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    if-eqz v19, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_4

    .line 2056
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2057
    .local v3, blacklistIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 2058
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2059
    .local v2, adminRule:Ljava/lang/String;
    const-string v21, "*"

    const-string v22, ".*"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 2060
    .local v14, regex:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 2061
    .local v12, newUrl:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 2062
    const-string v21, "http://"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    const-string v21, "http://"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 2063
    const/16 v21, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 2069
    :cond_2
    :goto_1
    :try_start_0
    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 2070
    .local v13, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v13, v12}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 2071
    .local v11, matchUrl:Ljava/util/regex/Matcher;
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    .line 2072
    if-nez v9, :cond_3

    const-string v21, "/"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 2073
    const/16 v21, 0x0

    const/16 v22, 0x2f

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2074
    .local v8, host:Ljava/lang/String;
    invoke-virtual {v13, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 2075
    .local v10, matchHost:Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 2081
    .end local v8           #host:Ljava/lang/String;
    .end local v10           #matchHost:Ljava/util/regex/Matcher;
    .end local v11           #matchUrl:Ljava/util/regex/Matcher;
    .end local v13           #pattern:Ljava/util/regex/Pattern;
    :cond_3
    :goto_2
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v9, v0, :cond_1

    .line 2083
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 2084
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterEnabled(Z)Z

    move-result v20

    .line 2085
    .local v20, urlFilterEnabled:Z
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2086
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 2087
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 2088
    .local v4, calendar:Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v15

    .line 2089
    .local v15, time:J
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2090
    .local v5, cv:Landroid/content/ContentValues;
    const-string v21, "url"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    const-string v21, "time"

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v21, v0

    const-string v22, "WebFilterLogTable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v21

    if-nez v21, :cond_4

    .line 2093
    const-string v21, "FirewallPolicy"

    const-string v22, "isUrlBlocked - Failed on inserting log"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2100
    .end local v2           #adminRule:Ljava/lang/String;
    .end local v3           #blacklistIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4           #calendar:Ljava/util/Calendar;
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v12           #newUrl:Ljava/lang/String;
    .end local v14           #regex:Ljava/lang/String;
    .end local v15           #time:J
    .end local v20           #urlFilterEnabled:Z
    :cond_4
    const-string v21, "FirewallPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "isUrlBlocked: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v21, v9

    .line 2101
    goto/16 :goto_0

    .line 2065
    .restart local v2       #adminRule:Ljava/lang/String;
    .restart local v3       #blacklistIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v12       #newUrl:Ljava/lang/String;
    .restart local v14       #regex:Ljava/lang/String;
    :cond_5
    const-string v21, "https://"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    const-string v21, "https://"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 2066
    const/16 v21, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 2078
    :catch_0
    move-exception v6

    .line 2079
    .local v6, e:Ljava/lang/Exception;
    const-string v21, "FirewallPolicy"

    const-string v22, "isUrlBlocked - Regex is not valid"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public listIptablesRules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "************ FILTER TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    const-string v1, "/system/bin/iptables -t filter -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    const-string v1, "************ NAT TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    const-string v1, "/system/bin/iptables -t nat -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    const-string v1, "************ MANGLE TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    const-string v1, "/system/bin/iptables -t mangle -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    const-string v1, "************ RAW TABLE ************"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    const-string v1, "/system/bin/iptables -t raw -L -n --line-numbers -v"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->runSynchronousIptablesCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    return-object v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1769
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 1773
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket()V

    .line 1774
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 2499
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->removeAdmin(I)Z

    .line 2500
    return-void
.end method

.method public removeAdmin(I)Z
    .locals 4
    .parameter "uid"

    .prologue
    const/4 v3, 0x0

    .line 396
    const-string v1, "FirewallPolicy"

    const-string v2, "removeAdmin..."

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    const/4 v0, 0x1

    .line 398
    .local v0, ret:Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanAllRules(I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 400
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(II)Z

    move-result v1

    and-int/2addr v0, v1

    .line 401
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 402
    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsUrlBlacklistUpdated:Z

    .line 403
    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsUrlFilterStateUpdated:Z

    .line 404
    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsUrlFilterReportUpdated:Z

    .line 406
    return v0
.end method

.method public removeRules(Ljava/util/List;I)Z
    .locals 4
    .parameter
    .parameter "ruleAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 247
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    .line 248
    .local v0, uid:I
    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    :goto_0
    return v1

    .line 251
    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 256
    :pswitch_1
    invoke-direct {p0, v0, p1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRerouteRules(ILjava/util/List;I)Z

    move-result v1

    goto :goto_0

    .line 254
    :pswitch_2
    invoke-direct {p0, v0, p1, v3, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyBasicRules(ILjava/util/List;II)Z

    move-result v1

    goto :goto_0

    .line 258
    :pswitch_3
    invoke-direct {p0, v0, p1, v3}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyRedirectExceptionRules(ILjava/util/List;I)Z

    move-result v1

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setNetworkForMarket(I)Z
    .locals 5
    .parameter "networkType"

    .prologue
    .line 2171
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v0

    .line 2172
    .local v0, admin:I
    const/4 v1, 0x0

    .line 2173
    .local v1, result:Z
    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-nez p1, :cond_1

    .line 2174
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string v4, "MarketNetworkType"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 2177
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyNetworkForMarket()V

    .line 2179
    :cond_1
    int-to-long v2, v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2180
    return v1
.end method

.method public setProxyRules(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "hostname"
    .parameter "port"

    .prologue
    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 426
    const-string v5, "FirewallPolicy"

    const-string v6, "setProxyRules..."

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v2

    .line 428
    .local v2, uid:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-direct {p0, v7, v1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 445
    :cond_0
    :goto_0
    return v3

    .line 433
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getLastUidForProxy()I

    move-result v0

    .line 436
    .local v0, enabledUid:I
    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->cleanProxyRules(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 437
    const-string v5, "proxy"

    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->applyProxyRules(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 439
    if-ne v0, v2, :cond_2

    .line 440
    invoke-virtual {p0, v4, v2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enableProxy(ZI)Z

    :cond_2
    move v3, v4

    .line 442
    goto :goto_0
.end method

.method public setRules(Ljava/util/List;I)Z
    .locals 2
    .parameter
    .parameter "ruleAction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, rulesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 216
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    .line 217
    invoke-direct {p0, p2, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->validateParameters(ILjava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    :goto_0
    return v0

    .line 220
    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 225
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->setBasicRules(Ljava/util/List;I)Z

    move-result v0

    goto :goto_0

    .line 220
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setURLFilterEnabled(Z)Z
    .locals 6
    .parameter "enable"

    .prologue
    .line 1959
    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setURLFilterEnabled("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v2

    .line 1963
    .local v2, uid:I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1964
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "filtering"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "WebFilterSettingsTable"

    invoke-virtual {v3, v2, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    .line 1967
    .local v1, ret:Z
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1969
    const-string v3, "FirewallPolicy"

    const-string v4, "setURLFilterEnabled - clean cache"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v4

    .line 1971
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1972
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1973
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsUrlFilterStateUpdated:Z

    .line 1975
    :cond_0
    const-string v3, "FirewallPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setURLFilterEnabled - return = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    return v1

    .line 1972
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setURLFilterList(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1992
    .local p1, urls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "FirewallPolicy"

    const-string v3, "setURLFilterList"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1993
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v1

    .line 1994
    .local v1, uid:I
    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->saveUrlBlackList(ILjava/util/List;)Z

    move-result v0

    .line 1995
    .local v0, ret:Z
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1997
    const-string v2, "FirewallPolicy"

    const-string v3, "setURLFilterList - clean cache"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1998
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUrlBlacklistAllAdmin:Ljava/util/List;

    monitor-enter v3

    .line 1999
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mUrlBlacklistAllAdmin:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2000
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsUrlBlacklistUpdated:Z

    .line 2001
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2003
    :cond_0
    const-string v2, "FirewallPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setURLFilterList - return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    return v0

    .line 2001
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setURLFilterReportEnabled(Z)Z
    .locals 10
    .parameter "enable"

    .prologue
    const/4 v9, 0x1

    .line 2105
    const-string v6, "FirewallPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setURLFilterReportEnabled("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->enforceFirewallPermission()I

    move-result v4

    .line 2109
    .local v4, uid:I
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2110
    .local v0, cv:Landroid/content/ContentValues;
    const-string v6, "logging"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WebFilterSettingsTable"

    invoke-virtual {v6, v4, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    .line 2113
    .local v1, ret:Z
    if-ne v1, v9, :cond_0

    .line 2114
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mIsUrlFilterReportUpdated:Z

    .line 2118
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2119
    .local v2, token:J
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/firewall/FirewallPolicy;->getURLFilterReportEnabled(Z)Z

    move-result v5

    .line 2120
    .local v5, urlFilterReportEnabled:Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2121
    if-eqz p1, :cond_1

    if-nez v5, :cond_2

    .line 2122
    :cond_1
    const-string v6, "FirewallPolicy"

    const-string v7, "setURLFilterReportEnabled - Clean url report"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2123
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/FirewallPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "WebFilterLogTable"

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->remove(Ljava/lang/String;)Z

    .line 2125
    :cond_2
    const-string v6, "FirewallPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setURLFilterReportEnabled - return = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2126
    return v1
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 2495
    return-void
.end method
