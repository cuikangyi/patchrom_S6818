.class public Landroid/net/wifi/WifiStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;,
        Landroid/net/wifi/WifiStateMachine$TetheredState;,
        Landroid/net/wifi/WifiStateMachine$TetheringState;,
        Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;,
        Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;,
        Landroid/net/wifi/WifiStateMachine$SoftApStartedState;,
        Landroid/net/wifi/WifiStateMachine$SoftApStartingState;,
        Landroid/net/wifi/WifiStateMachine$WpsRunningState;,
        Landroid/net/wifi/WifiStateMachine$DisconnectedState;,
        Landroid/net/wifi/WifiStateMachine$DisconnectingState;,
        Landroid/net/wifi/WifiStateMachine$ConnectedState;,
        Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;,
        Landroid/net/wifi/WifiStateMachine$ObtainingIpState;,
        Landroid/net/wifi/WifiStateMachine$L2ConnectedState;,
        Landroid/net/wifi/WifiStateMachine$ConnectModeState;,
        Landroid/net/wifi/WifiStateMachine$ScanModeState;,
        Landroid/net/wifi/WifiStateMachine$DriverStoppedState;,
        Landroid/net/wifi/WifiStateMachine$DriverStoppingState;,
        Landroid/net/wifi/WifiStateMachine$DriverStartedState;,
        Landroid/net/wifi/WifiStateMachine$DriverStartingState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;,
        Landroid/net/wifi/WifiStateMachine$DriverFailedState;,
        Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;,
        Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;,
        Landroid/net/wifi/WifiStateMachine$DriverLoadedState;,
        Landroid/net/wifi/WifiStateMachine$DriverLoadingState;,
        Landroid/net/wifi/WifiStateMachine$InitialState;,
        Landroid/net/wifi/WifiStateMachine$DefaultState;,
        Landroid/net/wifi/WifiStateMachine$WifiMobility;,
        Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    }
.end annotation


# static fields
.field private static final ACTION_DELAYED_DRIVER_STOP:Ljava/lang/String; = "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

.field private static final ACTION_START_SCAN:Ljava/lang/String; = "com.android.server.WifiManager.action.START_SCAN"

.field static final BASE:I = 0x20000

.field static final CMD_ADD_OR_UPDATE_NETWORK:I = 0x20034

.field static final CMD_BLACKLIST_NETWORK:I = 0x20038

.field static final CMD_BLUETOOTH_ADAPTER_STATE_CHANGE:I = 0x2001f

.field static final CMD_CLEAR_BLACKLIST:I = 0x20039

.field static final CMD_CLEAR_SUSPEND_OPTIMIZATIONS:I = 0x20057

.field static final CMD_DELAYED_STOP_DRIVER:I = 0x20012

.field public static final CMD_DISABLE_P2P:I = 0x20084

.field static final CMD_DISCONNECT:I = 0x2004a

.field static final CMD_DRIVER_START_TIMED_OUT:I = 0x20013

.field static final CMD_ENABLE_ALL_NETWORKS:I = 0x20037

.field static final CMD_ENABLE_BACKGROUND_SCAN:I = 0x2005b

.field static final CMD_ENABLE_NETWORK:I = 0x20036

.field public static final CMD_ENABLE_P2P:I = 0x20083

.field static final CMD_ENABLE_RSSI_POLL:I = 0x20052

.field static final CMD_FORGET_NETWORK:I = 0x25004

.field static final CMD_GET_CONFIGURED_NETWORKS:I = 0x2003b

.field static final CMD_INIT_SCAN_INTERVAL:I = 0x2007d

.field static final CMD_KEYSTORE_REQUIRED_EVENT:I = 0x20118

.field static final CMD_LOAD_DRIVER:I = 0x20001

.field static final CMD_LOAD_DRIVER_FAILURE:I = 0x20004

.field static final CMD_LOAD_DRIVER_SUCCESS:I = 0x20003

.field static final CMD_NO_NETWORKS_PERIODIC_SCAN:I = 0x20058

.field static final CMD_PING_SUPPLICANT:I = 0x20033

.field static final CMD_REASSOCIATE:I = 0x2004c

.field static final CMD_RECONNECT:I = 0x2004b

.field static final CMD_REMOVE_NETWORK:I = 0x20035

.field static final CMD_REQUEST_AP_CONFIG:I = 0x2001b

.field static final CMD_RESET_SUPPLICANT_STATE:I = 0x2006f

.field static final CMD_RESPONSE_AP_CONFIG:I = 0x2001c

.field static final CMD_RSSI_POLL:I = 0x20053

.field static final CMD_SAVE_CONFIG:I = 0x2003a

.field static final CMD_SEC_API:I = 0x2012d

.field static final CMD_SEC_STRING_API:I = 0x2012e

.field public static final CMD_SEND_DHCP_RELEASE:I = 0x200a1

.field static final CMD_SET_AP_CONFIG:I = 0x20019

.field static final CMD_SET_AP_CONFIG_COMPLETED:I = 0x2001a

.field static final CMD_SET_COUNTRY_CODE:I = 0x20050

.field static final CMD_SET_FREQUENCY_BAND:I = 0x2005a

.field static final CMD_SET_HIGH_PERF_MODE:I = 0x2004d

.field static final CMD_SET_SCAN_MODE:I = 0x20048

.field static final CMD_SET_SCAN_SKIP_INTERVAL:I = 0x20191

.field static final CMD_SET_SCAN_TYPE:I = 0x20049

.field static final CMD_SET_SUSPEND_OPTIMIZATIONS:I = 0x20056

.field public static final CMD_SLEEP_AFTER_SEND_DHCP_RELEASE:I = 0x201f6

.field public static final CMD_SLEEP_BEFORE_SEND_DHCP_RELEASE:I = 0x201f5

.field static final CMD_START_AP:I = 0x20015

.field static final CMD_START_AP_FAILURE:I = 0x20017

.field static final CMD_START_AP_SUCCESS:I = 0x20016

.field static final CMD_START_DRIVER:I = 0x2000d

.field static final CMD_START_PACKET_FILTERING:I = 0x20054

.field static final CMD_START_PARTIAL_SCAN:I = 0x20065

.field static final CMD_START_PING:I = 0x200ab

.field static final CMD_START_SCAN:I = 0x20047

.field static final CMD_START_SUPPLICANT:I = 0x2000b

.field static final CMD_STATIC_IP_FAILURE:I = 0x20010

.field static final CMD_STATIC_IP_SUCCESS:I = 0x2000f

.field static final CMD_STOP_AP:I = 0x20018

.field static final CMD_STOP_DRIVER:I = 0x2000e

.field static final CMD_STOP_PACKET_FILTERING:I = 0x20055

.field static final CMD_STOP_SUPPLICANT:I = 0x2000c

.field static final CMD_STOP_SUPPLICANT_FAILED:I = 0x20011

.field static final CMD_TETHER_NOTIFICATION_TIMED_OUT:I = 0x2001e

.field static final CMD_TETHER_STATE_CHANGE:I = 0x2001d

.field static final CMD_UNLOAD_DRIVER:I = 0x20002

.field static final CMD_UNLOAD_DRIVER_FAILURE:I = 0x20006

.field static final CMD_UNLOAD_DRIVER_FOR_CONCURRENT:I = 0x20097

.field static final CMD_UNLOAD_DRIVER_SUCCESS:I = 0x20005

.field private static final CONNECT_MODE:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static DEFAULT_MAX_DHCP_RETRIES:I = 0x0

.field private static final DELAYED_STOP_COUNTER:Ljava/lang/String; = "DelayedStopCounter"

.field private static final DRIVER_START_TIME_OUT_MSECS:I = 0x2710

.field private static final DRIVER_STOP_REQUEST:I = 0x0

.field private static final EVENTLOG_SUPPLICANT_STATE_CHANGED:I = 0xc367

.field private static final EVENTLOG_WIFI_EVENT_HANDLED:I = 0xc366

.field private static final EVENTLOG_WIFI_STATE_CHANGED:I = 0xc365

.field private static final EVENT_IMS_REQUEST_TIMEOUT:I = 0x20

.field static final EVENT_PING_FAIL:I = 0x200ad

.field static final EVENT_PING_SUCCESS:I = 0x200ac

.field private static final FAILURE:I = -0x1

.field private static final IN_ECM_STATE:I = 0x1

.field private static final JB_STYLE:Z = true

.field private static final MAX_RSSI:I = 0x100

.field private static final MIN_INTERVAL_ENABLE_ALL_NETWORKS_MS:I = 0x927c0

.field private static final MIN_RSSI:I = -0xc8

.field static final MULTICAST_V4:I = 0x0

.field static final MULTICAST_V6:I = 0x1

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI"

.field private static final NOT_IN_ECM_STATE:I = 0x0

.field private static final P2P_DISABLE_USER_ACCEPT:I = 0x20007

.field private static final P2P_DISABLE_USER_REJECT:I = 0x20008

.field public static final P2P_ENABLE_PROCEED:I = 0x2008e

.field private static final POLL_RSSI_INTERVAL_MSECS:I = 0xbb8

.field private static final SCAN_ACTIVE:I = 0x1

.field private static final SCAN_ONLY_MODE:I = 0x2

.field private static final SCAN_PASSIVE:I = 0x2

.field private static final SCAN_REQUEST:I = 0x0

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WEP:I = 0x1

.field private static final SHOW_EAP_MESSAGE_EVENT:I = 0x2007c

.field private static final SOFTAP_IFACE:Ljava/lang/String; = "wl0.1"

.field private static final SUCCESS:I = 0x1

.field private static final SUPPLICANT_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final SUPPLICANT_RESTART_TRIES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "WifiStateMachine"

.field private static final TETHER_NOTIFICATION_TIME_OUT_MSECS:I = 0x1388

.field private static final TIME_IN_MS_IMS_REQUEST_TIMEOUT:I = 0xfa0

#the value of this static final field might be set in the static constructor
.field public static final WIFI_CONNECT_THRESHOLD:I = 0x0

.field private static final WIFI_DISCONNECT_RSSI_COUNT:I = 0x5

#the value of this static final field might be set in the static constructor
.field public static final WIFI_DISCONNECT_THRESHOLD:I = 0x0

.field public static final WIFI_ENABLE_PENDING:I = 0x2008d

.field public static final WIFI_HIGHMOBILITY:I

.field private static WIFI_MOBILITY_AP_BLOCK_MAX:I

.field private static WIFI_MOBILITY_AP_TIME:I

.field private static WIFI_MOBILITY_AP_TIMER_INTERVAL:I

.field private static WIFI_MOBILITY_AP_TO_STORE:I

.field public static WispLogoffUrl:Ljava/lang/String;

.field public static bCwAirPlaneMode:Z

.field public static bCwPlaneModeDiff:Z

.field private static isWifiApEnabling:Z

.field private static mAvailableChannelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sDnsPropNames:[Ljava/lang/String;

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final CW_WIFI_AIRPLANE_MODE:I

.field private final CW_WIFI_DEVICE_SHUTDOWN:I

.field private final CW_WIFI_DORMANCY:I

.field private final CW_WIFI_FORGET_AP:I

.field private final CW_WIFI_SWITCH_AP:I

.field private final CW_WIFI_TURNED_OFF:I

.field private final CW_WIFI_TURNED_OFF_WifiEnabler:I

.field private bEnableWifiSettingsDialog:Z

.field private isKTWifiCmStoppingState:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAllowToConnect:Z

.field private mAverageRSSI:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundScanSupported:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothConnectionActive:Z

.field public mCWState:I

.field private mCWToWiFiEventReceiver:Landroid/content/BroadcastReceiver;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectModeState:Lcom/android/internal/util/State;

.field private mConnectedState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mCwHandler:Landroid/os/Handler;

.field private final mDefaultFrameworkScanIntervalMs:I

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDelayedStopCounter:I

.field private mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

.field private mDhcpRenewAfterRoamingMode:I

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDisconnectedState:Lcom/android/internal/util/State;

.field private mDisconnectingState:Lcom/android/internal/util/State;

.field private mDriverFailedState:Lcom/android/internal/util/State;

.field private mDriverLoadedState:Lcom/android/internal/util/State;

.field private mDriverLoadingState:Lcom/android/internal/util/State;

.field private mDriverStartToken:I

.field private mDriverStartedState:Lcom/android/internal/util/State;

.field private mDriverStartingState:Lcom/android/internal/util/State;

.field private final mDriverStopDelayMs:I

.field private mDriverStopIntent:Landroid/app/PendingIntent;

.field private mDriverStoppedState:Lcom/android/internal/util/State;

.field private mDriverStoppingState:Lcom/android/internal/util/State;

.field private mDriverUnloadedState:Lcom/android/internal/util/State;

.field private mDriverUnloadingState:Lcom/android/internal/util/State;

.field private mEapTlsInProgress:Z

.field private mEnableBackgroundScan:Z

.field private mEnableRssiPolling:Z

.field private mEnableShowApEvent:Z

.field private mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mHighPerfMode:Z

.field private mImsRssiPollingEnabled:Z

.field private mInDelayedStop:Z

.field private mInitialState:Lcom/android/internal/util/State;

.field private mInterfaceName:Ljava/lang/String;

.field private mIsRunning:Z

.field private mIsScanMode:Z

.field private mL2ConnectedState:Lcom/android/internal/util/State;

.field private final mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLastBssid:Ljava/lang/String;

.field private mLastEnableAllNetworksTime:J

.field private final mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLastNetworkId:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field private mLastSignalLevel:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mObtainingIpState:Lcom/android/internal/util/State;

.field private final mP2pSupported:Z

.field private mPeriodicScanToken:I

.field private mPowerSaveEnabled:Z

.field private final mPrimaryDeviceType:Ljava/lang/String;

.field private mRVFMode:I

.field private mReconnectCount:I

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mReportedRunning:Z

.field private mRssiPollToken:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mScanIntent:Landroid/app/PendingIntent;

.field private mScanModeState:Lcom/android/internal/util/State;

.field private final mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScanResultIsPending:Z

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenFilter:Landroid/content/IntentFilter;

.field private mScreenOff:Z

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSetScanActive:Z

.field private mSignalLevelBroadcastCount:I

.field private mSkipScanAssoc:Z

.field private mSoftApStartedState:Lcom/android/internal/util/State;

.field private mSoftApStartingState:Lcom/android/internal/util/State;

.field private mSoftApStoppingState:Lcom/android/internal/util/State;

.field private mSupplicantRestartCount:I

.field private mSupplicantScanIntervalMs:J

.field private mSupplicantStartedState:Lcom/android/internal/util/State;

.field private mSupplicantStartingState:Lcom/android/internal/util/State;

.field private mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

.field private mSupplicantStopFailureToken:I

.field private mSupplicantStoppingState:Lcom/android/internal/util/State;

.field private mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTetherInterfaceName:Ljava/lang/String;

.field private mTetherToken:I

.field private mTetheredState:Lcom/android/internal/util/State;

.field private mTetheringState:Lcom/android/internal/util/State;

.field private mVerifyingLinkState:Lcom/android/internal/util/State;

.field private mWaitForP2pDisableState:Lcom/android/internal/util/State;

.field private mWaitForUserActionState:Lcom/android/internal/util/State;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;

.field private mWifiNative:Landroid/net/wifi/WifiNative;

.field private mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiP2pFreq:I

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pState:I

.field private mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWpsInProgress:Z

.field private mWpsRunningState:Lcom/android/internal/util/State;

.field private mdisableOthers:Z

.field private mstoppingnetid:I

.field private mstoppingtype:I

.field t_dialog:Landroid/app/AlertDialog;

.field private tempConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/WifiStateMachine;->WispLogoffUrl:Ljava/lang/String;

    sput-boolean v1, Landroid/net/wifi/WifiStateMachine;->bCwAirPlaneMode:Z

    sput-boolean v1, Landroid/net/wifi/WifiStateMachine;->bCwPlaneModeDiff:Z

    const-string v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiStateMachine;->scanResultPattern:Ljava/util/regex/Pattern;

    sput-boolean v1, Landroid/net/wifi/WifiStateMachine;->isWifiApEnabling:Z

    sput v3, Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TO_STORE:I

    const/16 v0, 0x7530

    sput v0, Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TIME:I

    const/16 v0, 0x32

    sput v0, Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_BLOCK_MAX:I

    const/16 v0, 0x1388

    sput v0, Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TIMER_INTERVAL:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x96c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x971

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x976

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x97b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x980

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x985

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x98a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x98f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x994

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x999

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x99e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9a3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9a8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1432

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x143c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1446

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1450

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x145a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1464

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x146e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1478

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x148c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14a0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14c8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x157c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1590

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15a4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15cc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15e0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x7c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15f4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1608

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x161c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1630

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1644

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1671

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1685

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0x9d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1699

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0xa1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16ad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    const/16 v1, 0xa5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16c1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput v4, Landroid/net/wifi/WifiStateMachine;->DEFAULT_MAX_DHCP_RETRIES:I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableThresholdDuringDisconnection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/net/wifi/WifiStateMachine;->WIFI_DISCONNECT_THRESHOLD:I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableThresholdDuringConnection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/net/wifi/WifiStateMachine;->WIFI_CONNECT_THRESHOLD:I

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableHighMobilityDisabled"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/net/wifi/WifiStateMachine;->WIFI_HIGHMOBILITY:I

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "wlanInterface"

    .prologue
    const-string v7, "WifiStateMachine"

    invoke-direct {p0, v7}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->CW_WIFI_TURNED_OFF:I

    const/4 v7, 0x1

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->CW_WIFI_FORGET_AP:I

    const/4 v7, 0x2

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->CW_WIFI_DORMANCY:I

    const/4 v7, 0x3

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->CW_WIFI_SWITCH_AP:I

    const/4 v7, 0x4

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->CW_WIFI_TURNED_OFF_WifiEnabler:I

    const/4 v7, 0x5

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->CW_WIFI_AIRPLANE_MODE:I

    const/4 v7, 0x6

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->CW_WIFI_DEVICE_SHUTDOWN:I

    const/4 v7, -0x1

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mCWState:I

    const/4 v7, -0x1

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mdisableOthers:Z

    const/4 v7, -0x1

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I

    new-instance v7, Landroid/net/wifi/WifiStateMachine$1;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$1;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mCwHandler:Landroid/os/Handler;

    const/4 v7, -0x1

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mSetScanActive:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mHighPerfMode:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mEnableShowApEvent:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mScreenOff:Z

    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pFreq:I

    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->tempConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mAllowToConnect:Z

    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mRVFMode:I

    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v7, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v7}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v7, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v7}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v7, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v7}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mEapTlsInProgress:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    new-instance v7, Landroid/net/wifi/WifiStateMachine$DefaultState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DefaultState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$InitialState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$InitialState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$DriverFailedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DriverFailedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadingState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$DriverStartingState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DriverStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$DriverStartedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DriverStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$ScanModeState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$ScanModeState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$ConnectModeState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$ConnectedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$ConnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$DisconnectingState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DisconnectingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$DisconnectedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$WpsRunningState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$WpsRunningState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$TetheringState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$TetheringState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$TetheredState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStoppingState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    new-instance v7, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForUserActionState:Lcom/android/internal/util/State;

    new-instance v7, Ljava/util/Vector;

    const/4 v8, 0x5

    invoke-direct {v7, v8}, Ljava/util/Vector;-><init>(I)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mAverageRSSI:Ljava/util/Vector;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v8, 0xb

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7}, Landroid/os/WorkSource;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7}, Landroid/os/WorkSource;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    const/4 v7, 0x1

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pState:I

    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->t_dialog:Landroid/app/AlertDialog;

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->bEnableWifiSettingsDialog:Z

    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mImsRssiPollingEnabled:Z

    new-instance v7, Landroid/net/wifi/WifiStateMachine$10;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$10;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mCWToWiFiEventReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    new-instance v7, Landroid/net/NetworkInfo;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "WIFI"

    const-string v11, ""

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string v7, "batteryinfo"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v7, "network_management"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.wifi.direct"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z

    new-instance v7, Landroid/net/wifi/WifiNative;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    new-instance v7, Landroid/net/wifi/WifiConfigStore;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-direct {v7, p1, v8}, Landroid/net/wifi/WifiConfigStore;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNative;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    new-instance v7, Landroid/net/wifi/WifiMonitor;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-direct {v7, p0, v8}, Landroid/net/wifi/WifiMonitor;-><init>(Lcom/android/internal/util/StateMachine;Landroid/net/wifi/WifiNative;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    new-instance v7, Landroid/net/DhcpInfoInternal;

    invoke-direct {v7}, Landroid/net/DhcpInfoInternal;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    new-instance v7, Landroid/net/wifi/WifiInfo;

    invoke-direct {v7}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    new-instance v7, Landroid/net/wifi/SupplicantStateTracker;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-direct {v7, p1, p0, v8, v9}, Landroid/net/wifi/SupplicantStateTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfigStore;Landroid/os/Handler;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    sget v7, Landroid/net/wifi/WifiStateMachine;->WIFI_CONNECT_THRESHOLD:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    sget-boolean v7, Landroid/net/wifi/WifiMonitor;->WIFI_ERRORCODE:Z

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    sget v7, Landroid/net/wifi/WifiStateMachine;->WIFI_HIGHMOBILITY:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    :cond_0
    new-instance v7, Landroid/net/wifi/WifiStateMachine$WifiMobility;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$WifiMobility;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/net/wifi/WifiApConfigStore;->makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/wifi/WifiApConfigStore;

    move-result-object v6

    .local v6, wifiApConfigStore:Landroid/net/wifi/WifiApConfigStore;
    invoke-virtual {v6}, Landroid/net/wifi/WifiApConfigStore;->loadApConfiguration()V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v6}, Landroid/net/wifi/WifiApConfigStore;->getMessenger()Landroid/os/Messenger;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->clear()V

    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    const/4 v7, -0x1

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    const/4 v7, -0x1

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.android.server.WifiManager.action.START_SCAN"

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v5, scanIntent:Landroid/content/Intent;
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e000d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e000e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopDelayMs:I

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110010

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040037

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, cwintentFilter:Landroid/content/IntentFilter;
    const-string v7, "android.cw.STATE_CHANGE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mCWToWiFiEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/sec/enterprise/WifiPolicy;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v7, "edm.intent.action.enable"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "edm.intent.action.disable"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/net/wifi/WifiStateMachine$2;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$2;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/net/wifi/WifiStateMachine$3;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$3;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/net/wifi/WifiStateMachine$4;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$4;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "com.android.server.WifiManager.action.START_SCAN"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/net/wifi/WifiStateMachine$7;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$7;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mScreenFilter:Landroid/content/IntentFilter;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mScreenFilter:Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mScreenFilter:Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v7, Landroid/net/wifi/WifiStateMachine$8;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$8;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mScreenFilter:Landroid/content/IntentFilter;

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/net/wifi/WifiStateMachine$9;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$9;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v7, Landroid/util/LruCache;

    const/16 v8, 0x50

    invoke-direct {v7, v8}, Landroid/util/LruCache;-><init>(I)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .local v4, powerManager:Landroid/os/PowerManager;
    const/4 v7, 0x1

    const-string v8, "WifiStateMachine"

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x1

    const-string v8, "WifiSuspend"

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadingState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStoppingState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    const/16 v7, 0x64

    invoke-virtual {p0, v7}, Lcom/android/internal/util/StateMachine;->setProcessedMessagesSize(I)V

    sget-boolean v7, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/internal/util/StateMachine;->setDbg(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->start()V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v8, "wifip2p"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    :try_start_0
    const-string v7, "1"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Landroid/net/wifi/WifiStateMachine;->DEFAULT_MAX_DHCP_RETRIES:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DEFAULT_MAX_DHCP_RETRIES is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/net/wifi/WifiStateMachine;->DEFAULT_MAX_DHCP_RETRIES:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v7, "WifiStateMachine"

    const-string v8, "DEFAULT_MAX_DHCP_RETRIES is 9"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private CheckDhcpRenew()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, ret:Z
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckDhcpRenew return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiStateMachine;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastToCW(II)V

    return-void
.end method

.method static synthetic access$10000(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand()V

    return-void
.end method

.method static synthetic access$1002(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mAllowToConnect:Z

    return p1
.end method

.method static synthetic access$10100(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$10200(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$10300(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    return v0
.end method

.method static synthetic access$10400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$10500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$10700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10800(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mSetScanActive:Z

    return v0
.end method

.method static synthetic access$10802(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mSetScanActive:Z

    return p1
.end method

.method static synthetic access$10900(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$11000(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return v0
.end method

.method static synthetic access$11008(Landroid/net/wifi/WifiStateMachine;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return v0
.end method

.method static synthetic access$11100(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$11102(Landroid/net/wifi/WifiStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$11200(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopDelayMs:I

    return v0
.end method

.method static synthetic access$11300(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$11400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$11600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11702(Landroid/net/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$12000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$12200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12500(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    return v0
.end method

.method static synthetic access$12502(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    return p1
.end method

.method static synthetic access$12600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12802(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEapTlsInProgress:Z

    return p1
.end method

.method static synthetic access$12900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$13000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1302(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$13100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$13200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13300(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchFrequency()I

    move-result v0

    return v0
.end method

.method static synthetic access$13400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$13500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$13600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13800(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$13808(Landroid/net/wifi/WifiStateMachine;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$13900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$13902(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    return v0
.end method

.method static synthetic access$14000(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V

    return-void
.end method

.method static synthetic access$14100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$14300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$14400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14500(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V

    return-void
.end method

.method static synthetic access$14600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$14900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$15000(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->configureLinkProperties()V

    return-void
.end method

.method static synthetic access$15100(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    return-void
.end method

.method static synthetic access$15200(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->CheckDhcpRenew()Z

    move-result v0

    return v0
.end method

.method static synthetic access$15300(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V

    return-void
.end method

.method static synthetic access$15400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiStateMachine$WifiMobility;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    return-object v0
.end method

.method static synthetic access$15500(Landroid/net/wifi/WifiStateMachine;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$15600(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->updatePingState()V

    return-void
.end method

.method static synthetic access$15700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I

    return v0
.end method

.method static synthetic access$16000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1602(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I

    return p1
.end method

.method static synthetic access$16100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$16200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16400(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->waitForDhcpRelease(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$16500(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    return-void
.end method

.method static synthetic access$16600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$16700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$16800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$16900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->cwStopWifiAfterCWDreg()V

    return-void
.end method

.method static synthetic access$17000(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$17100(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    return v0
.end method

.method static synthetic access$17200(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    return v0
.end method

.method static synthetic access$17204(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    return v0
.end method

.method static synthetic access$17300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$18000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$18100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$18200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$18300(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRVFMode:I

    return v0
.end method

.method static synthetic access$18400(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$18500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$18600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$18700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$18800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$18900(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I

    return v0
.end method

.method static synthetic access$19000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I

    return p1
.end method

.method static synthetic access$19100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$19300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$19600(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$19900(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$19904(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    sget v0, Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TO_STORE:I

    return v0
.end method

.method static synthetic access$2000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$20000(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$20100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$20200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$20400(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->stopTethering()V

    return-void
.end method

.method static synthetic access$20500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$20600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$21000(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->pingIpAddr()V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return v0
.end method

.method static synthetic access$2302(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return p1
.end method

.method static synthetic access$2400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return v0
.end method

.method static synthetic access$2602(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return p1
.end method

.method static synthetic access$2700(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return v0
.end method

.method static synthetic access$2702(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return p1
.end method

.method static synthetic access$2800(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mHighPerfMode:Z

    return v0
.end method

.method static synthetic access$2802(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mHighPerfMode:Z

    return p1
.end method

.method static synthetic access$2900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    sget v0, Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_BLOCK_MAX:I

    return v0
.end method

.method static synthetic access$3000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V

    return-void
.end method

.method static synthetic access$3800(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V

    return-void
.end method

.method static synthetic access$3900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic access$5000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z

    return v0
.end method

.method static synthetic access$5800(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic access$5802(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return p1
.end method

.method static synthetic access$5804(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic access$5900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$6000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6002(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6100(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return v0
.end method

.method static synthetic access$6102(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return p1
.end method

.method static synthetic access$6202(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    return p1
.end method

.method static synthetic access$6300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$6400(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    return v0
.end method

.method static synthetic access$6500(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/net/wifi/WifiStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$6700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    sget v0, Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TIMER_INTERVAL:I

    return v0
.end method

.method static synthetic access$7000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7200(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    return v0
.end method

.method static synthetic access$7202(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    return p1
.end method

.method static synthetic access$7300(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$7400(Landroid/net/wifi/WifiStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$7402(Landroid/net/wifi/WifiStateMachine;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    return-wide p1
.end method

.method static synthetic access$7500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$7600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7700(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    return-void
.end method

.method static synthetic access$7800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setScanResults(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8000(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast()V

    return-void
.end method

.method static synthetic access$802(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pState:I

    return p1
.end method

.method static synthetic access$8100(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return v0
.end method

.method static synthetic access$8102(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return p1
.end method

.method static synthetic access$8200(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableShowApEvent:Z

    return v0
.end method

.method static synthetic access$8300(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendShowApDialogBroadcast()V

    return-void
.end method

.method static synthetic access$8400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendActionFrameVSWESReceivedBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8600(Landroid/net/wifi/WifiStateMachine;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->edmRemoveNetwork(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8700(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic access$8704(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic access$8800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$902(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pFreq:I

    return p1
.end method

.method static synthetic access$9100(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    return v0
.end method

.method static synthetic access$9104(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    return v0
.end method

.method static synthetic access$9200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$9500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9702(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$9800(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    return v0
.end method

.method static synthetic access$9802(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    return p1
.end method

.method static synthetic access$9900(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setCountryCode()V

    return-void
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    :cond_0
    return-void
.end method

.method private checkAverageRSSI(Ljava/lang/Integer;)Z
    .locals 7
    .parameter "value"

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, temporar:Ljava/lang/Integer;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAverageRSSI:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v2, v6, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAverageRSSI:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v2, v3

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAverageRSSI:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "AverRSSI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temporar average = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v5, -0x53

    if-le v2, v5, :cond_3

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAverageRSSI:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    move v2, v3

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAverageRSSI:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    move v2, v4

    goto :goto_0
.end method

.method private configureLinkProperties()V
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Link configured: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfigStore;->getProxyProperties(I)Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const/16 v2, 0x22

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, ""

    .end local p0
    .local v0, lastPos:I
    :cond_0
    :goto_0
    return-object p0

    .end local v0           #lastPos:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0       #lastPos:I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private cwStopWifiAfterCWDreg()V
    .locals 3

    .prologue
    const-string v0, "WifiStateMachine"

    const-string v1, "CW_SISO : WifiStateTracker : cwStopWifiAfterCWDreg start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x2000c

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    const v0, 0x20002

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    const-string v0, "WifiStateMachine"

    const-string v1, "CW_SISO : WifiStateTracker : cwStopWifiAfterCWDreg done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .parameter "config"
    .parameter "pid"

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq p2, v2, :cond_0

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .restart local p1
    :cond_1
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v4, "ssid"

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, netSSID:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getAllowUserProfiles()Z

    move-result v2

    if-nez v2, :cond_3

    move-object p1, v1

    goto :goto_0

    .end local v0           #netSSID:Ljava/lang/String;
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .restart local v0       #netSSID:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/sec/enterprise/WifiPolicyCache;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object p1, v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v1, p1, v0}, Landroid/sec/enterprise/WifiPolicy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private edmRemoveNetwork(II)Z
    .locals 5
    .parameter "netId"
    .parameter "pid"

    .prologue
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v4, "ssid"

    invoke-virtual {v3, p1, v4}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, auxSSID:Ljava/lang/String;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/sec/enterprise/WifiPolicyCache;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v1

    .local v1, isEnterprise:Z
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicyCache;->getAllowUserChanges()Z

    move-result v2

    .local v2, isUserChangesAllowed:Z
    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq p2, v3, :cond_0

    if-eqz v2, :cond_1

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3, v0}, Landroid/sec/enterprise/WifiPolicy;->removeNetworkConfiguration(Ljava/lang/String;)Z

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private fetchFrequency()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v0

    return v0
.end method

.method private fetchRssiAndLinkSpeedNative()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/16 v13, -0xc8

    const/4 v12, -0x1

    const/4 v6, -0x1

    .local v6, newRssi:I
    const/4 v5, -0x1

    .local v5, newLinkSpeed:I
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v10}, Landroid/net/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v9

    .local v9, signalPoll:Ljava/lang/String;
    if-eqz v9, :cond_3

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, lines:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .local v3, line:Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, prop:[Ljava/lang/String;
    array-length v10, v8

    const/4 v11, 0x2

    if-ge v10, v11, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v8, v10

    const-string v11, "RSSI"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    aget-object v10, v8, v10

    const-string v11, "LINKSPEED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #lines:[Ljava/lang/String;
    .end local v8           #prop:[Ljava/lang/String;
    :cond_3
    sget-boolean v10, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fetchRssiAndLinkSpeedNative - newRSSI:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", newLinkSpeed:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_4
    if-eq v6, v12, :cond_c

    if-ge v13, v6, :cond_c

    const/16 v10, 0x100

    if-ge v6, v10, :cond_c

    if-lez v6, :cond_5

    add-int/lit16 v6, v6, -0x100

    :cond_5
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10, v6}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    sget v10, Landroid/net/wifi/WifiStateMachine;->WIFI_DISCONNECT_THRESHOLD:I

    if-eq v10, v12, :cond_6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine;->checkAverageRSSI(Ljava/lang/Integer;)Z

    move-result v10

    if-eqz v10, :cond_a

    sget-boolean v10, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v10, :cond_6

    const-string v10, "AverRSSI"

    const-string v11, "average rssi is high enough, doing nothing"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    const/4 v10, 0x5

    invoke-static {v6, v10}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v7

    .local v7, newSignalLevel:I
    iget v10, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    if-ne v7, v10, :cond_7

    iget v10, p0, Landroid/net/wifi/WifiStateMachine;->mSignalLevelBroadcastCount:I

    if-ge v10, v14, :cond_8

    :cond_7
    invoke-direct {p0, v6}, Landroid/net/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    iget v10, p0, Landroid/net/wifi/WifiStateMachine;->mSignalLevelBroadcastCount:I

    if-ge v10, v14, :cond_8

    iget v10, p0, Landroid/net/wifi/WifiStateMachine;->mSignalLevelBroadcastCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/net/wifi/WifiStateMachine;->mSignalLevelBroadcastCount:I

    sget-boolean v10, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v10, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Force RSSI Broadcast "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/net/wifi/WifiStateMachine;->mSignalLevelBroadcastCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/3"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_8
    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .end local v7           #newSignalLevel:I
    :goto_3
    if-eq v5, v12, :cond_9

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10, v5}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    :cond_9
    return-void

    :cond_a
    sget-boolean v10, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v10, :cond_b

    const-string v10, "AverRSSI"

    const-string v11, "average rssi is too low, disconnectiong network"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v10}, Landroid/net/wifi/WifiNative;->reconnect()Z

    goto :goto_2

    :cond_c
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10, v13}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    const-string v10, "set default RSSI: -200"

    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_3

    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #lines:[Ljava/lang/String;
    .restart local v8       #prop:[Ljava/lang/String;
    :catch_0
    move-exception v10

    goto/16 :goto_1
.end method

.method private getFreq(Landroid/net/wifi/WifiConfiguration;)I
    .locals 7
    .parameter "config"

    .prologue
    const/4 v3, 0x0

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v0, compare:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .local v2, sr:Landroid/net/wifi/ScanResult;
    sget-boolean v4, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find !!!!! compare : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v3, v2, Landroid/net/wifi/ScanResult;->frequency:I

    goto :goto_0

    .end local v2           #sr:Landroid/net/wifi/ScanResult;
    :cond_4
    const-string v4, "can\'t find same ssid"

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMaxDhcpRetries()I
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_max_dhcp_retry_count"

    sget v2, Landroid/net/wifi/WifiStateMachine;->DEFAULT_MAX_DHCP_RETRIES:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method private handleFailedIpConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v1, "IP configuration failed"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    sget v0, Landroid/net/wifi/WifiStateMachine;->DEFAULT_MAX_DHCP_RETRIES:I

    .local v0, maxRetries:I
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max retries : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    if-lez v0, :cond_1

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    if-le v1, v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times, Disabling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine;->sendErrorBroadcast(I)V

    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->disconnect()Z

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->reconnect()Z

    return-void
.end method

.method private handleNetworkDisconnect()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Stopping DHCP and clearing IP"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v2, 0x30002

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine;->quit()V

    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/16 v2, -0xc8

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->clear()V

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfigStore;->clearIpConfiguration(I)V

    :cond_2
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    iput v5, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clear addresses or disable ipv6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    .locals 5
    .parameter "dhcpInfoInternal"

    .prologue
    const/4 v4, 0x0

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v3

    :try_start_0
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, -0x1

    iput v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    iput v4, p0, Landroid/net/wifi/WifiStateMachine;->mSignalLevelBroadcastCount:I

    iput v4, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v2, v3, p1}, Landroid/net/wifi/WifiConfigStore;->setIpConfiguration(ILandroid/net/DhcpInfoInternal;)V

    iget-object v2, p1, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .local v0, addr:Ljava/net/InetAddress;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->hasMeteredHint()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .local v1, linkProperties:Landroid/net/LinkProperties;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfigStore;->getProxyProperties(I)Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Link configuration changed for netId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    .end local v1           #linkProperties:Landroid/net/LinkProperties;
    :cond_1
    :goto_0
    return-void

    .end local v0           #addr:Ljava/net/InetAddress;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .restart local v0       #addr:Ljava/net/InetAddress;
    :cond_2
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->configureLinkProperties()V

    goto :goto_0
.end method

.method private handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 4
    .parameter "message"

    .prologue
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/StateChangeResult;

    .local v1, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    iget-object v0, v1, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .local v0, state:Landroid/net/wifi/SupplicantState;
    const v2, 0xc367

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(II)I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SupplicantState.isConnecting WpsInprogress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget v3, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    :goto_0
    sget-object v2, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, v1, Landroid/net/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, v1, Landroid/net/wifi/StateChangeResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-object v0

    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    goto :goto_0
.end method

.method private isWifiTethered(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v6

    .local v6, wifiRegexs:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, intf:Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .local v5, regex:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #intf:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #regex:Ljava/lang/String;
    :goto_1
    return v7

    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #intf:Ljava/lang/String;
    .restart local v4       #len$:I
    .restart local v5       #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #intf:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #regex:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    const-string v0, "WifiStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    const-string v0, "WifiStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    const-string v0, "WifiStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifySccDiffFreq(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "info_type"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "visible"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .parameter "srcMsg"

    .prologue
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    return-object v0
.end method

.method private parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 17
    .parameter "line"

    .prologue
    const/4 v1, 0x0

    .local v1, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz p1, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    monitor-enter v15

    :try_start_0
    sget-object v14, Landroid/net/wifi/WifiStateMachine;->scanResultPattern:Ljava/util/regex/Pattern;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v10

    .local v10, result:[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, scan_offset:I
    const/4 v14, 0x3

    array-length v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    if-gt v14, v0, :cond_6

    array-length v14, v10

    const/16 v16, 0x5

    move/from16 v0, v16

    if-gt v14, v0, :cond_6

    const/4 v14, 0x0

    aget-object v3, v10, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, bssid:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, maxrate:I
    const/4 v13, 0x0

    .local v13, wifitype:I
    const/4 v14, 0x1

    :try_start_1
    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .local v6, frequency:I
    const/4 v14, 0x2

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    .local v5, level:I
    if-lez v5, :cond_0

    add-int/lit16 v5, v5, -0x100

    :cond_0
    :goto_0
    :try_start_2
    array-length v14, v10

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v14, v0, :cond_3

    const/4 v14, 0x3

    aget-object v14, v10, v14

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v16, 0x5b

    move/from16 v0, v16

    if-ne v14, v0, :cond_2

    const/4 v14, 0x3

    aget-object v4, v10, v14

    .local v4, flags:Ljava/lang/String;
    const-string v2, ""

    .local v2, ssid:Ljava/lang/String;
    :goto_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v14, v8}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1           #scanResult:Landroid/net/wifi/ScanResult;
    .local v11, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v11, :cond_5

    :try_start_3
    iput v5, v11, Landroid/net/wifi/ScanResult;->level:I

    iput-object v2, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v4, v11, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iput v6, v11, Landroid/net/wifi/ScanResult;->frequency:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v1, v11

    .end local v2           #ssid:Ljava/lang/String;
    .end local v3           #bssid:Ljava/lang/String;
    .end local v4           #flags:Ljava/lang/String;
    .end local v5           #level:I
    .end local v6           #frequency:I
    .end local v8           #key:Ljava/lang/String;
    .end local v9           #maxrate:I
    .end local v11           #scanResult:Landroid/net/wifi/ScanResult;
    .end local v13           #wifitype:I
    .restart local v1       #scanResult:Landroid/net/wifi/ScanResult;
    :goto_2
    :try_start_4
    monitor-exit v15

    .end local v10           #result:[Ljava/lang/String;
    .end local v12           #scan_offset:I
    :cond_1
    return-object v1

    .restart local v3       #bssid:Ljava/lang/String;
    .restart local v9       #maxrate:I
    .restart local v10       #result:[Ljava/lang/String;
    .restart local v12       #scan_offset:I
    .restart local v13       #wifitype:I
    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    .restart local v6       #frequency:I
    const/4 v5, 0x0

    .restart local v5       #level:I
    goto :goto_0

    .end local v7           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v4, ""

    .restart local v4       #flags:Ljava/lang/String;
    const/4 v14, 0x3

    aget-object v2, v10, v14

    .restart local v2       #ssid:Ljava/lang/String;
    goto :goto_1

    .end local v2           #ssid:Ljava/lang/String;
    .end local v4           #flags:Ljava/lang/String;
    :cond_3
    array-length v14, v10

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v14, v0, :cond_4

    const/4 v14, 0x3

    aget-object v4, v10, v14

    .restart local v4       #flags:Ljava/lang/String;
    const/4 v14, 0x4

    aget-object v2, v10, v14

    .restart local v2       #ssid:Ljava/lang/String;
    goto :goto_1

    .end local v2           #ssid:Ljava/lang/String;
    .end local v4           #flags:Ljava/lang/String;
    :cond_4
    const-string v4, ""

    .restart local v4       #flags:Ljava/lang/String;
    const-string v2, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v2       #ssid:Ljava/lang/String;
    goto :goto_1

    .end local v1           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v8       #key:Ljava/lang/String;
    .restart local v11       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_5
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_8

    new-instance v1, Landroid/net/wifi/ScanResult;

    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v11           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v1       #scanResult:Landroid/net/wifi/ScanResult;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v14, v8, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v2           #ssid:Ljava/lang/String;
    .end local v3           #bssid:Ljava/lang/String;
    .end local v4           #flags:Ljava/lang/String;
    .end local v5           #level:I
    .end local v6           #frequency:I
    .end local v8           #key:Ljava/lang/String;
    .end local v9           #maxrate:I
    .end local v10           #result:[Ljava/lang/String;
    .end local v12           #scan_offset:I
    .end local v13           #wifitype:I
    :catchall_0
    move-exception v14

    :goto_3
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v14

    .restart local v10       #result:[Ljava/lang/String;
    .restart local v12       #scan_offset:I
    :cond_6
    :try_start_7
    sget-boolean v14, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v14, :cond_7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Misformatted scan result text with "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v0, v10

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, " fields: "

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v14, "There are misformatted scan results"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .end local v1           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v2       #ssid:Ljava/lang/String;
    .restart local v3       #bssid:Ljava/lang/String;
    .restart local v4       #flags:Ljava/lang/String;
    .restart local v5       #level:I
    .restart local v6       #frequency:I
    .restart local v8       #key:Ljava/lang/String;
    .restart local v9       #maxrate:I
    .restart local v11       #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v13       #wifitype:I
    :catchall_1
    move-exception v14

    move-object v1, v11

    .end local v11           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v1       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_3

    .end local v1           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v11       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_8
    move-object v1, v11

    .end local v11           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v1       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_2
.end method

.method private final pingIpAddr()V
    .locals 14

    .prologue
    :try_start_0
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .local v4, intf:Ljava/lang/String;
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/RouteInfo;

    .local v8, route:Landroid/net/RouteInfo;
    invoke-virtual {v8}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v8}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v3

    .local v3, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, gatewayIp:Ljava/lang/String;
    sget-boolean v11, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v11, :cond_1

    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ipAddress of gateway is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ping -c 1 -w 1 "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, pingCommand:Ljava/lang/String;
    sget-boolean v11, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v11, :cond_2

    const-string v11, "WifiStateMachine"

    invoke-static {v11, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v9, 0x1

    .local v9, status:I
    const/4 v6, 0x0

    .local v6, pingRetry:I
    const/4 v7, 0x3

    .local v7, pingRetryLimit:I
    :cond_3
    :goto_1
    if-eqz v9, :cond_7

    if-ge v6, v7, :cond_7

    sget-boolean v11, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v11, :cond_4

    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "th ping"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Process;->waitFor()I

    move-result v9

    add-int/lit8 v6, v6, 0x1

    sget-boolean v11, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v11, :cond_6

    if-nez v9, :cond_6

    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "th ping got response"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .end local v1           #gatewayIp:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/lang/String;
    .end local v5           #pingCommand:Ljava/lang/String;
    .end local v6           #pingRetry:I
    .end local v7           #pingRetryLimit:I
    .end local v8           #route:Landroid/net/RouteInfo;
    .end local v9           #status:I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    sget-boolean v11, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v11, :cond_5

    const-string v11, "WifiStateMachine"

    const-string v12, "Fail: IOException"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/io/IOException;
    :cond_5
    :goto_2
    return-void

    .restart local v1       #gatewayIp:Ljava/lang/String;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #inetAddress:Ljava/net/InetAddress;
    .restart local v4       #intf:Ljava/lang/String;
    .restart local v5       #pingCommand:Ljava/lang/String;
    .restart local v6       #pingRetry:I
    .restart local v7       #pingRetryLimit:I
    .restart local v8       #route:Landroid/net/RouteInfo;
    .restart local v9       #status:I
    :cond_6
    :try_start_1
    sget-boolean v11, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v11, :cond_3

    if-eqz v9, :cond_3

    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "th ping no response"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .end local v1           #gatewayIp:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/lang/String;
    .end local v5           #pingCommand:Ljava/lang/String;
    .end local v6           #pingRetry:I
    .end local v7           #pingRetryLimit:I
    .end local v8           #route:Landroid/net/RouteInfo;
    .end local v9           #status:I
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    sget-boolean v11, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v11, :cond_5

    const-string v11, "WifiStateMachine"

    const-string v12, "Fail: InterruptedException"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #gatewayIp:Ljava/lang/String;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #inetAddress:Ljava/net/InetAddress;
    .restart local v4       #intf:Ljava/lang/String;
    .restart local v5       #pingCommand:Ljava/lang/String;
    .restart local v6       #pingRetry:I
    .restart local v7       #pingRetryLimit:I
    .restart local v8       #route:Landroid/net/RouteInfo;
    .restart local v9       #status:I
    :cond_7
    if-nez v9, :cond_9

    :try_start_2
    sget-boolean v11, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v11, :cond_8

    const-string v11, "WifiStateMachine"

    const-string v12, "Ping Test Successed"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const v11, 0x200ac

    invoke-virtual {p0, v11}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .end local v1           #gatewayIp:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/lang/String;
    .end local v5           #pingCommand:Ljava/lang/String;
    .end local v6           #pingRetry:I
    .end local v7           #pingRetryLimit:I
    .end local v8           #route:Landroid/net/RouteInfo;
    .end local v9           #status:I
    :catch_2
    move-exception v10

    .local v10, t:Ljava/lang/Throwable;
    sget-boolean v11, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v11, :cond_5

    const-string v11, "WifiStateMachine"

    const-string v12, "Fail: Throwable t"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v10           #t:Ljava/lang/Throwable;
    .restart local v1       #gatewayIp:Ljava/lang/String;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #inetAddress:Ljava/net/InetAddress;
    .restart local v4       #intf:Ljava/lang/String;
    .restart local v5       #pingCommand:Ljava/lang/String;
    .restart local v6       #pingRetry:I
    .restart local v7       #pingRetryLimit:I
    .restart local v8       #route:Landroid/net/RouteInfo;
    .restart local v9       #status:I
    :cond_9
    :try_start_3
    sget-boolean v11, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v11, :cond_a

    const-string v11, "WifiStateMachine"

    const-string v12, "Ping Test Failed"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const v11, 0x200ad

    invoke-virtual {p0, v11}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .parameter "msg"
    .parameter "what"

    .prologue
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "arg1"

    .prologue
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    iput p3, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendActionFrameVSWESReceivedBroadcast(Ljava/lang/String;)V
    .locals 3
    .parameter "data"

    .prologue
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action Frame VS WES Received data [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.ACTION_FRAME_VS_WES_RECEIVED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ActionFrameVSWESData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send broadcast before boot - action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendBroadcastToCW(II)V
    .locals 4
    .parameter "nOperationType"
    .parameter "nStoppingType"

    .prologue
    new-instance v1, Landroid/content/Intent;

    const-string v2, "WiFiToCWEvent"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "WifiStateMachine"

    const-string v3, "CW_SISO: sendNetworkStateChangeBroadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "CWOperationType"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "stopCWDueToWiFI"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .local v0, bssid:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "bssid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private sendErrorBroadcast(I)V
    .locals 4
    .parameter "errorCode"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendErrorBroadcast code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "wifiInfo"

    new-instance v2, Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    return-void
.end method

.method private sendLinkConfigurationChangedBroadcast()V
    .locals 4

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    return-void
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .locals 4
    .parameter "bssid"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v1, "wifiInfo"

    new-instance v2, Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    return-void
.end method

.method private sendRssiChangeBroadcast(I)V
    .locals 2
    .parameter "newRssi"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "newRssi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    return-void
.end method

.method private sendScanResultsAvailableBroadcast()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    return-void
.end method

.method private sendShowApDialogBroadcast()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    return-void
.end method

.method private sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send sticky broadcast before boot - action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendSupplicantConnectionChangedBroadcast(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "connected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    return-void
.end method

.method private setCCode(Ljava/lang/String;)V
    .locals 7
    .parameter "countryCode"

    .prologue
    const/4 v1, 0x0

    .local v1, fw:Ljava/io/FileWriter;
    :try_start_0
    const-string v3, "/data/.ccode.info"

    .local v3, path:Ljava/lang/String;
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #fw:Ljava/io/FileWriter;
    .local v2, fw:Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .end local v3           #path:Ljava/lang/String;
    .restart local v1       #fw:Ljava/io/FileWriter;
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v4, "WifiStateMachine"

    const-string v5, "[setCCODE] IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v4, "WifiStateMachine"

    const-string v5, "[setCCODE] Fail to close"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_4
    throw v4

    :catch_2
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "WifiStateMachine"

    const-string v6, "[setCCODE] Fail to close"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    .restart local v3       #path:Ljava/lang/String;
    :catch_3
    move-exception v0

    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "WifiStateMachine"

    const-string v5, "[setCCODE] Fail to close"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_3

    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_2
.end method

.method private setCountryCode()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, countryCode:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private setFrequencyBand()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    return-void
.end method

.method private setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDetailed state, old ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setScanResults(Ljava/lang/String;)V
    .locals 9
    .parameter "scanResults"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v2, 0x0

    .local v2, lineCount:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .local v6, scanResultsLen:I
    const/4 v1, 0x0

    .local v1, lineBeg:I
    const/4 v3, 0x0

    .local v3, lineEnd:I
    :goto_1
    if-gt v3, v6, :cond_5

    if-eq v3, v6, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    add-int/lit8 v1, v3, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-le v3, v1, :cond_4

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, line:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v5

    .local v5, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v5, :cond_4

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v0           #line:Ljava/lang/String;
    .end local v5           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    add-int/lit8 v1, v3, 0x1

    goto :goto_2

    :cond_5
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    goto :goto_0
.end method

.method private setWifiApState(I)V
    .locals 5
    .parameter "wifiApState"

    .prologue
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .local v2, previousWifiApState:I
    const/16 v3, 0xd

    if-ne p1, v3, :cond_2

    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiApState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x800

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    return-void

    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const/16 v3, 0xb

    if-ne p1, v3, :cond_0

    :try_start_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Failed to note battery stats in wifi"

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWifiState(I)V
    .locals 5
    .parameter "wifiState"

    .prologue
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .local v2, previousWifiState:I
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x800

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    return-void

    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    :try_start_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Failed to note battery stats in wifi"

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "config"

    .prologue
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/wifi/WifiStateMachine$11;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiStateMachine$11;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startTethering(Ljava/util/ArrayList;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    const/4 v8, 0x0

    .local v8, wifiAvailable:Z
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v9

    .local v9, wifiRegexs:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, intf:Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v7, v0, v3

    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v4, 0x0

    .local v4, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v4

    if-eqz v4, :cond_1

    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "startTethering, mRVFMode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/net/wifi/WifiStateMachine;->mRVFMode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/net/LinkAddress;

    const-string v12, "192.168.43.1"

    invoke-static {v12}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v11}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v5, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v11, v5}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error tethering on "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v5           #intf:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :cond_2
    :goto_1
    return v10

    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v5       #intf:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error configuring interface "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    iput-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    const/4 v10, 0x1

    goto :goto_1

    .end local v4           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private stopTethering()V
    .locals 5

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    const/4 v1, 0x0

    .local v1, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "0.0.0.0"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Untether initiate failed!"

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error resetting interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final updatePingState()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/wifi/WifiStateMachine$12;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiStateMachine$12;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    .local v0, ipAddrThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private waitForDhcpRelease(I)I
    .locals 8
    .parameter "maxSecWait"

    .prologue
    const/16 v6, 0x14

    const/16 v4, 0xc8

    .local v4, sleepTime:I
    if-le p1, v6, :cond_0

    move p1, v6

    .end local p1
    :cond_0
    mul-int/lit16 v6, p1, 0x3e8

    div-int v2, v6, v4

    .local v2, repeats:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init.svc.dhcpcd_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, key:Ljava/lang/String;
    const/4 v6, 0x1

    if-ge v2, v6, :cond_3

    const/4 v2, 0x1

    move v3, v2

    .end local v2           #repeats:I
    .local v3, repeats:I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    .end local v3           #repeats:I
    .restart local v2       #repeats:I
    if-lez v3, :cond_2

    sget-boolean v6, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "waitForDhcpRelease repeats: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_1
    int-to-long v6, v4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, value:Ljava/lang/String;
    const-string v6, "stopped"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    .end local v5           #value:Ljava/lang/String;
    :goto_2
    return v6

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/InterruptedException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "waitForDhcpRelease sleep exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_2
    const/4 v6, -0x1

    goto :goto_2

    :cond_3
    move v3, v2

    .end local v2           #repeats:I
    .restart local v3       #repeats:I
    goto :goto_0
.end method


# virtual methods
.method public CWdisableWifi(Z)Z
    .locals 3
    .parameter "flag"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->cwEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "WifiStateMachine"

    const-string v2, "handleMessage: CW_SISO :MESSAGE_DISABLE_WIFI: is CW !!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->CWgetWifiScreenEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->cwStop(I)V

    :goto_0
    const-string v0, "WifiStateMachine"

    const-string v1, "handleMessage: CW_SISO :MESSAGE_DISABLE_WIFI: is Done !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->cwStop(I)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->bCwAirPlaneMode:Z

    if-eqz v0, :cond_3

    const-string v0, "WifiStateMachine"

    const-string v1, "handleMessage: CW_SISO :Airplanemode is on set persist wifi enabled to true!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->cwStop(I)V

    goto :goto_1

    :cond_3
    const-string v0, "WifiStateMachine"

    const-string v1, "handleMessage: CW_SISO : Else Case NOT Handled!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public CWgetWifiScreenEnable()Z
    .locals 3

    .prologue
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CWgetWifiScreenEnable return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->bEnableWifiSettingsDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->bEnableWifiSettingsDialog:Z

    return v0
.end method

.method public CWsetWifiScreenEnable(Z)Z
    .locals 3
    .parameter "bEnable"

    .prologue
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CWsetWifiScreenEnable set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "old value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->bEnableWifiSettingsDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->bEnableWifiSettingsDialog:Z

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->bEnableWifiSettingsDialog:Z

    return v0
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .parameter "bssid"

    .prologue
    const v0, 0x20038

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public declared-synchronized callSECApi(Landroid/os/Message;)I
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v1, -0x1

    monitor-enter p0

    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    monitor-exit p0

    return v1

    :sswitch_1
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .local v0, args:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v2, 0x1

    const-string v3, "enable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v1

    goto :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_2
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    if-nez v1, :cond_1

    const v1, 0x2007d

    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    :cond_1
    move v1, v2

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v2, 0x9

    const-string v3, "enable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v1

    goto :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_4
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v2, 0xe

    const-string v3, "enable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v1

    goto :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .restart local v0       #args:Landroid/os/Bundle;
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableShowApEvent:Z

    move v1, v2

    goto :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_6
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v2, 0xa

    const-string v3, "ampdu"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v1

    goto/16 :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v2, 0xb

    const-string v3, "stop"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v1

    goto/16 :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_8
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v2, 0xc

    const-string v3, "enable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v1

    goto/16 :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .restart local v0       #args:Landroid/os/Bundle;
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    const-string v1, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiManager.SEC_COMMAND_ID_SET_WIFI_ENABLED_WITH_P2P mSkipScanAssoc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v4, 0xd

    iget-boolean v5, p0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    if-nez v5, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v4, v2}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v1

    goto/16 :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_a
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v2, 0x10

    const-string v3, "enable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v1

    goto/16 :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_b
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v2, 0x11

    const-string v3, "enable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v1

    goto/16 :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_c
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    if-eqz v1, :cond_3

    const-string v1, "WifiStateMachine"

    const-string v2, "WifiManager.SEC_COMMAND_ID_PRE_SCAN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto/16 :goto_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xf -> :sswitch_3
        0x10 -> :sswitch_5
        0x11 -> :sswitch_6
        0x12 -> :sswitch_7
        0x13 -> :sswitch_8
        0x18 -> :sswitch_0
        0x1a -> :sswitch_9
        0x20 -> :sswitch_4
        0x22 -> :sswitch_a
        0x23 -> :sswitch_b
        0x25 -> :sswitch_c
        0x26 -> :sswitch_c
    .end sparse-switch
.end method

.method public checkAndAllowOtherSsid(Ljava/lang/String;)Z
    .locals 5
    .parameter "ssid"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, nAllowAllSSID:Z
    const/4 v1, 0x1

    .local v1, nOnlySISOTestSSID:Z
    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz v1, :cond_2

    const-string v4, "SKTRCS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_2
    const-string v2, "WifiStateMachine"

    const-string v4, " IMS SERVICE : checkAllowOtherSsid: doesnot allow any SSID other than CTC"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_0
.end method

.method public checkScanNet()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->checkScanResults()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "checkScanNet: mWifiMobility is null"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    const v0, 0x20039

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public cwDataOff()V
    .locals 3

    .prologue
    const-string v1, "WifiStateMachine"

    const-string v2, "CW_SISO : WifiStateTracker : cwStartCommand true stoppingtype entered "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mCWState:I

    if-lez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "QuickMenu_DataOnOff"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "dataState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    const-string v1, "WifiStateMachine"

    const-string v2, "CW_SISO : WifiStateTracker : cwStartCommand true stoppingtype exited "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "WifiStateMachine"

    const-string v2, "CW_SISO : cwDataOff CW State is NONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cwDataOn()V
    .locals 3

    .prologue
    const-string v1, "WifiStateMachine"

    const-string v2, "CW_SISO : WifiStateTracker : cwStartCommand true stoppingtype entered "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mCWState:I

    if-lez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "QuickMenu_DataOnOff"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "dataState"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    const-string v1, "WifiStateMachine"

    const-string v2, "CW_SISO : WifiStateTracker : cwStartCommand true stoppingtype exited "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v1, "WifiStateMachine"

    const-string v2, "CW_SISO : cwDataOn CW State is NONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cwEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, WiFi_ssidWithQuotes:Ljava/lang/String;
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : WifiStateMachine: cwEnabled enter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Landroid/net/wifi/WifiStateMachine;->mCWState:I

    if-lez v4, :cond_5

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .local v2, wifiMgr:Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_0

    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : wifiMgr is NULL!!! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #wifiMgr:Landroid/net/wifi/WifiManager;
    :goto_0
    return v3

    .restart local v2       #wifiMgr:Landroid/net/wifi/WifiManager;
    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v1, activeSSID:Ljava/lang/String;
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : activeSSID is retreived"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_3

    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->checkCTCSsid(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->checkAndAllowOtherSsid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string v3, "WifiStateMachine"

    const-string v4, "CW_SISO : WifiStateMachine: cwEnabled true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : WifiStateMachine : cwEnabled Not SKTRCS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : WifiStateMachine : cwEnabled .activeSSID() == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #activeSSID:Ljava/lang/String;
    :cond_4
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : WifiStateMachine : cwEnabled .getSSID() == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #wifiMgr:Landroid/net/wifi/WifiManager;
    :cond_5
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : WifiStateMachine : cwEnabled false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cwGetForgetnwkID()I
    .locals 3

    .prologue
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CW_SISO : WifiStateTracker : cwGetForgetnwkID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I

    return v0
.end method

.method public cwSetDisableOthers(Z)V
    .locals 3
    .parameter "ID"

    .prologue
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CW_SISO : WifiStateTracker : cwSetDisableOthers "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mdisableOthers:Z

    return-void
.end method

.method public cwSetForgetnwkID(I)V
    .locals 3
    .parameter "netID"

    .prologue
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CW_SISO : WifiStateTracker : cwSetForgetnwkID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I

    return-void
.end method

.method public cwStartCommand(I)V
    .locals 0
    .parameter "nRetryMethod"

    .prologue
    return-void
.end method

.method public cwStop(I)V
    .locals 5
    .parameter "stoppingtype"

    .prologue
    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mCWState:I

    if-lez v2, :cond_0

    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CW_SISO : WifiStateTracker : cwStop true stoppingtype "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mCwHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .local v1, msgcw:Landroid/os/Message;
    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mCwHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mCwHandler:Landroid/os/Handler;

    const/16 v3, 0x20

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mCwHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #msgcw:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public disconnectCommand()V
    .locals 1

    .prologue
    const v0, 0x2004a

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public enableAllNetworks()V
    .locals 1

    .prologue
    const v0, 0x20037

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public enableBackgroundScanCommand(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    const-string v0, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableBackgroundScanCommand = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x2005b

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public enableRssiPolling(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    const v2, 0x20052

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public forgetNetwork(I)V
    .locals 2
    .parameter "netId"

    .prologue
    const v0, 0x25004

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpRenewAfterRoamingMode()I
    .locals 3

    .prologue
    const-string v0, "WifiStateMachine"

    const-string v1, "getDhcpRenewAfterRoamingMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDhcpRenewAfterRoamingMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    return v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getRvfMode()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRVFMode:I

    return v0
.end method

.method public getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "netID"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfigStore;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public handleEapTlsFinish(Z)V
    .locals 4
    .parameter "isTerminating"

    .prologue
    const/4 v3, 0x1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mEapTlsInProgress:Z

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    .local v1, suppState:Landroid/net/wifi/SupplicantState;
    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq v2, v3, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mEapTlsInProgress:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    const-string v2, "edm.intent.action.lock"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #suppState:Landroid/net/wifi/SupplicantState;
    :cond_1
    return-void
.end method

.method handleEapTlsKeystoreRequired()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEapTlsInProgress:Z

    return-void
.end method

.method handlePostDhcpSetup()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    return-void
.end method

.method handlePreDhcpSetup()V
    .locals 2

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    :cond_1
    return-void
.end method

.method public isUsbTethered()Z
    .locals 11

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v8

    .local v8, tethered:[Ljava/lang/String;
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v9

    .local v9, usbRegexs:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    .local v7, tether:Ljava/lang/String;
    move-object v1, v9

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v6, v1, v2

    .local v6, regex:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v6           #regex:Ljava/lang/String;
    .end local v7           #tether:Ljava/lang/String;
    :goto_2
    return v10

    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #regex:Ljava/lang/String;
    .restart local v7       #tether:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v6           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v7           #tether:Ljava/lang/String;
    :cond_2
    const/4 v10, 0x0

    goto :goto_2
.end method

.method notifyEapTlsKeystoreRequired()V
    .locals 1

    .prologue
    const v0, 0x20118

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method notifyShowEapMessageDialog(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    const v0, 0x2007c

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public postStoppingSupplicant()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    const v1, 0x2006f

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public reassociateCommand()V
    .locals 1

    .prologue
    const v0, 0x2004c

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public reconnectCommand()V
    .locals 1

    .prologue
    const v0, 0x2004b

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method protected recordProcessedMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    if-ne v1, v2, :cond_1

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_1

    const/4 v0, 0x1

    :sswitch_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x20001 -> :sswitch_0
        0x2000b -> :sswitch_0
        0x2000d -> :sswitch_0
        0x20037 -> :sswitch_0
        0x20048 -> :sswitch_0
        0x2004d -> :sswitch_0
        0x20056 -> :sswitch_0
        0x20057 -> :sswitch_0
        0x2005b -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x20012 -> :sswitch_0
        0x20047 -> :sswitch_0
        0x20052 -> :sswitch_0
        0x20053 -> :sswitch_0
        0x21017 -> :sswitch_0
        0x24005 -> :sswitch_0
    .end sparse-switch
.end method

.method public sendARP(I)I
    .locals 6
    .parameter "duration"

    .prologue
    const-string v3, "dhcp.wlan0.pid"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, dhcpPid:Ljava/lang/String;
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendARP dhcpPid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p1, :cond_0

    const/16 p1, 0x2710

    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, pId:I
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendARP pId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xc

    invoke-static {v2, v3}, Landroid/os/Process;->sendSignal(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .end local v2           #pId:I
    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "WifiStateMachine"

    const-string v4, "sendARP Invalid pId"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public sendBluetoothAdapterStateChange(I)V
    .locals 2
    .parameter "state"

    .prologue
    const v0, 0x2001f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    return-void
.end method

.method public sendDhcpDiscover(I)I
    .locals 2
    .parameter "duration"

    .prologue
    const-string v0, "WifiStateMachine"

    const-string v1, "sendDhcpDiscover"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->registerForPreDhcpNotification()V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30002

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30001

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public sendDhcpRelease(I)I
    .locals 6
    .parameter "duration"

    .prologue
    const-string v3, "dhcp.wlan0.pid"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, dhcpPid:Ljava/lang/String;
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendDhcpRelease dhcpPid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz p1, :cond_0

    const/16 p1, 0x1f4

    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, pId:I
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendDhcpRelease pId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Process;->sendSignal(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    .end local v2           #pId:I
    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v3, "WifiStateMachine"

    const-string v4, "sendDhcpRelease Invalid pId"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_0
.end method

.method public sendDhcpRenew(I)I
    .locals 2
    .parameter "duration"

    .prologue
    const-string v0, "WifiStateMachine"

    const-string v1, "sendDhcpRenew"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30003

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public sendShowEnableWarningDialogBroadcast()Z
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_ENABLE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    const/4 v1, 0x1

    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 4
    .parameter "countryCode"
    .parameter "persist"

    .prologue
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_WLAN_SEC_5GhZ_COUNTRY_CODE"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    if-nez v1, :cond_0

    const-string v1, "TN"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CountryISO"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "IL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CountryISO"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const-string v1, "ro.csc.countryiso_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, temp:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object p1, v0

    :cond_1
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setCountryCode] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    .end local v0           #temp:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    :cond_3
    if-eqz p2, :cond_4

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_country_code"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_4
    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setCCode(Ljava/lang/String;)V

    const v1, 0x20050

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setDhcpRenewAfterRoamingMode(I)I
    .locals 3
    .parameter "mode"

    .prologue
    const-string v0, "WifiStateMachine"

    const-string v1, "setDhcpRenewAfterRoamingMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDhcpRenewAfterRoamingMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    return v0
.end method

.method public setDriverStart(ZZ)V
    .locals 3
    .parameter "enable"
    .parameter "ecm"

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const v0, 0x2000d

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    :goto_0
    return-void

    :cond_0
    const v2, 0x2000e

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setFrequencyBand(IZ)V
    .locals 2
    .parameter "band"
    .parameter "persist"

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_frequency_band"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const v0, 0x2005a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setHighPerfModeEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    const v2, 0x2004d

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setRvfMode(I)V
    .locals 0
    .parameter "value"

    .prologue
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mRVFMode:I

    return-void
.end method

.method public setScanOnlyMode(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const v2, 0x20048

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setScanSkipInterval(I)I
    .locals 2
    .parameter "time"

    .prologue
    const/4 v1, 0x0

    const v0, 0x20191

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return v1
.end method

.method public setScanType(Z)V
    .locals 3
    .parameter "active"

    .prologue
    const v2, 0x20049

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "config"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20019

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 4
    .parameter "wifiConfig"
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eqz p2, :cond_0

    invoke-static {v3}, Landroid/net/wifi/WifiNative;->setFwType(I)Z

    const-string v0, "setWifiApEnabled : WifiNative.setFwType(1)"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    sput-boolean v3, Landroid/net/wifi/WifiStateMachine;->isWifiApEnabling:Z

    const v0, 0x20001

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    const v0, 0x20015

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    sput-boolean v2, Landroid/net/wifi/WifiStateMachine;->isWifiApEnabling:Z

    const v0, 0x20018

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    const v0, 0x20002

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setWifiEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eqz p1, :cond_0

    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setFwType(I)Z

    const-string v0, "setWifiEnabled : WifiNative.setFwType(0)"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    const v0, 0x20001

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    const v0, 0x2000b

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20084

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    :cond_2
    const v0, 0x2000c

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    const v0, 0x20002

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    iput v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    goto :goto_0
.end method

.method public showApDialogBroadcast()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "show_dialog_once"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    return-void
.end method

.method public startFilteringMulticastV4Packets()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const v0, 0x20054

    invoke-virtual {p0, v0, v2, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public startFilteringMulticastV6Packets()V
    .locals 3

    .prologue
    const v0, 0x20054

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public startPartialScan([I)I
    .locals 9
    .parameter "channel"

    .prologue
    const/4 v5, -0x1

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v6

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v6, v7, :cond_1

    sget-boolean v6, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "SKIP startScan during CONNECTING state"

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string v3, ""

    .local v3, freqs:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v6, p1

    if-ge v4, v6, :cond_5

    const/4 v2, 0x0

    .local v2, freq:Ljava/lang/Integer;
    aget v6, p1, v4

    const/16 v7, 0x96c

    if-ge v6, v7, :cond_2

    sget-object v6, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    aget v7, p1, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #freq:Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .restart local v2       #freq:Ljava/lang/Integer;
    :goto_2
    if-nez v2, :cond_4

    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "channel is unavailable ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v8, p1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-object v6, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    aget v7, p1, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    aget v6, p1, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v2           #freq:Ljava/lang/Integer;
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, cmd:Ljava/lang/String;
    const v5, 0x20065

    invoke-virtual {p0, v5, v0}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method public startScan(Z)V
    .locals 3
    .parameter "forceActive"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_1

    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SKIP startScan during CONNECTING state"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v1, 0x20047

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public stopFilteringMulticastV4Packets()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const v0, 0x20055

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public stopFilteringMulticastV6Packets()V
    .locals 3

    .prologue
    const v0, 0x20055

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .parameter "channel"
    .parameter "config"

    .prologue
    const v2, 0x20034

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, resultMsg:Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .local v0, result:I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return v0
.end method

.method public syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I
    .locals 3
    .parameter "channel"
    .parameter "msg"

    .prologue
    const-string v2, "syncCallSECApi"

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    const v2, 0x2012d

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, resultMsg:Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .local v0, result:I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return v0
.end method

.method public syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;
    .locals 3
    .parameter "channel"
    .parameter "msg"

    .prologue
    const-string v2, "syncCallSECStringApi"

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    const v2, 0x2012e

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, resultMsg:Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .local v0, result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return-object v0
.end method

.method public syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .parameter "channel"
    .parameter "netId"

    .prologue
    const v2, 0x25011

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->what:I

    const v3, 0x25012

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .local v0, result:Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncDisableNetwork:  netId  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  result:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return v0

    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z
    .locals 6
    .parameter "channel"
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x20036

    if-eqz p3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p1, v5, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v1

    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    move v0, v3

    .local v0, result:Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return v0

    .end local v0           #result:Z
    .end local v1           #resultMsg:Landroid/os/Message;
    :cond_0
    move v2, v4

    goto :goto_0

    .restart local v1       #resultMsg:Landroid/os/Message;
    :cond_1
    move v0, v4

    goto :goto_1
.end method

.method public syncGetConfiguredNetworks(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 3
    .parameter "channel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const v2, 0x2003b

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .local v1, resultMsg:Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .local v0, result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return-object v0
.end method

.method public syncGetCountryRev()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getCountryRev()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public syncGetDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncGetFullRoamScanPeriod()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getFullRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public syncGetPartialScanResultsList([I)Ljava/util/List;
    .locals 10
    .parameter "channels"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, channelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, p1

    if-ge v2, v7, :cond_3

    const/4 v1, 0x0

    .local v1, freq:Ljava/lang/Integer;
    aget v7, p1, v2

    const/16 v8, 0x96c

    if-ge v7, v8, :cond_0

    sget-object v7, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    aget v8, p1, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #freq:Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1       #freq:Ljava/lang/Integer;
    :goto_1
    if-nez v1, :cond_2

    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "channel is unavailable ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, p1, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #freq:Ljava/lang/Integer;
    :goto_2
    return-object v6

    .restart local v1       #freq:Ljava/lang/Integer;
    :cond_0
    sget-object v7, Landroid/net/wifi/WifiStateMachine;->mAvailableChannelMap:Ljava/util/HashMap;

    aget v8, p1, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    aget v7, p1, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_3
    goto :goto_1

    :cond_1
    move-object v1, v6

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #freq:Ljava/lang/Integer;
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .local v4, result:Landroid/net/wifi/ScanResult;
    iget v6, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v4           #result:Landroid/net/wifi/ScanResult;
    :cond_5
    move-object v6, v5

    goto :goto_2
.end method

.method public syncGetRoamBand()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getBand()I

    move-result v0

    return v0
.end method

.method public syncGetRoamDelta()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getRoamDelta()I

    move-result v0

    return v0
.end method

.method public syncGetRoamScanPeriod()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public syncGetRoamTrigger()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getRoamTrigger()I

    move-result v0

    return v0
.end method

.method public syncGetScanResultsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object v0
.end method

.method public syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x2001b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .local v0, resultMsg:Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .local v1, ret:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    return-object v1
.end method

.method public syncGetWifiApState()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiApStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    :pswitch_4
    const-string v0, "failed"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncGetWifiState()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    :pswitch_4
    const-string v0, "unknown state"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .parameter "channel"

    .prologue
    const v2, 0x20033

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .local v0, result:Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return v0

    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .parameter "channel"
    .parameter "networkId"

    .prologue
    const v2, 0x20035

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {p1, v2, p2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v1

    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .local v0, result:Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return v0

    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .parameter "channel"

    .prologue
    const v2, 0x2003a

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .local v0, result:Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    return v0

    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncSetCountryRev(Ljava/lang/String;)Z
    .locals 1
    .parameter "countryRev"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setCountryRev(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public syncSetFullRoamScanPeriod(I)Z
    .locals 1
    .parameter "fullRoamScanPeriod"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setFullRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public syncSetRoamBand(I)Z
    .locals 1
    .parameter "roamBand"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setBand(I)Z

    move-result v0

    return v0
.end method

.method public syncSetRoamDelta(I)Z
    .locals 1
    .parameter "roamDelta"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setRoamDelta(I)Z

    move-result v0

    return v0
.end method

.method public syncSetRoamScanPeriod(I)Z
    .locals 1
    .parameter "roamScanPeriod"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public syncSetRoamTrigger(I)Z
    .locals 1
    .parameter "roamTrigger"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setRoamTrigger(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, LS:Ljava/lang/String;
    const-string v2, "current HSM state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mLinkProperties "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mWifiInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mDhcpInfoInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mNetworkInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mLastSignalLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mEnableRssiPolling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mLastBssid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mLastNetworkId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mReconnectCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "mIsScanMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "Supplicant status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->status()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfigStore;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method tryingSSID(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->setLastSSID(Ljava/lang/String;)V

    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiMobilityEAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message is ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public unlockMobNetwork(I)V
    .locals 2
    .parameter "netid"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->unLockMobilityByNetID(Ljava/lang/Integer;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "unlockMobNetwork: mWifiMobility is null"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateBatteryWorkSource(Landroid/os/WorkSource;)V
    .locals 4
    .parameter "newSource"

    .prologue
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning(Landroid/os/WorkSource;)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped(Landroid/os/WorkSource;)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
