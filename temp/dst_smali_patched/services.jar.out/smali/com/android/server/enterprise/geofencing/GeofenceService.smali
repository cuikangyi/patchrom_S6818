.class public Lcom/android/server/enterprise/geofencing/GeofenceService;
.super Landroid/app/enterprise/geofencing/IGeofencing$Stub;
.source "GeofenceService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/geofencing/GeofenceService$1;,
        Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;,
        Lcom/android/server/enterprise/geofencing/GeofenceService$MyLocationListener;,
        Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;
    }
.end annotation


# static fields
.field private static final CHECK_DEVICE_POSITION:I = 0x1

.field private static STARTED_GEOFENCING:I = 0x0

.field private static final START_GEOFENCING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GeofenceService"

.field private static mCheckGeofence:I

.field private static mDistanceParameter:F

.field private static mLocationListener:Landroid/location/LocationListener;

.field private static mTimeParameter:J


# instance fields
.field private mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mTimeParameter:J

    const/high16 v0, 0x43fa

    sput v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mDistanceParameter:F

    sput v2, Lcom/android/server/enterprise/geofencing/GeofenceService;->STARTED_GEOFENCING:I

    sput v2, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCheckGeofence:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/enterprise/geofencing/IGeofencing$Stub;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Lcom/android/server/enterprise/geofencing/GeofenceService$1;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "geofencing"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "geofencingTime"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "geofencingDistance"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "GeofenceService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->startMonitoring()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    sget v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCheckGeofence:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    sget v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->STARTED_GEOFENCING:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;Z)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/geofencing/GeofenceService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->readGeofenceFromDB()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private calcBoundingBox(Ljava/util/List;)Landroid/app/enterprise/geofencing/BoundingBox;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)",
            "Landroid/app/enterprise/geofencing/BoundingBox;"
        }
    .end annotation

    .prologue
    .local p1, point:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v6, 0x0

    const/4 v0, 0x0

    .local v0, boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;
    if-eqz p1, :cond_4

    new-instance v0, Landroid/app/enterprise/geofencing/BoundingBox;

    .end local v0           #boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/app/enterprise/geofencing/BoundingBox;-><init>(Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;)V

    .restart local v0       #boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    .local v2, p1:Landroid/app/enterprise/geofencing/LatLongPoint;
    iget-wide v3, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-object v5, v0, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    :cond_0
    iget-wide v3, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-object v5, v0, Landroid/app/enterprise/geofencing/BoundingBox;->right:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_1

    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->right:Landroid/app/enterprise/geofencing/LatLongPoint;

    :cond_1
    iget-wide v3, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-object v5, v0, Landroid/app/enterprise/geofencing/BoundingBox;->top:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpl-double v3, v3, v5

    if-lez v3, :cond_2

    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->top:Landroid/app/enterprise/geofencing/LatLongPoint;

    :cond_2
    iget-wide v3, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-object v5, v0, Landroid/app/enterprise/geofencing/BoundingBox;->bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    iput-object v2, v0, Landroid/app/enterprise/geofencing/BoundingBox;->bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    .end local v2           #p1:Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_4
    return-object v0
.end method

.method private checkDeviceInsideBoundingbox(Landroid/location/Location;Landroid/app/enterprise/geofencing/BoundingBox;)Z
    .locals 7
    .parameter "location"
    .parameter "boundingBox"

    .prologue
    const/4 v4, 0x0

    if-eqz p1, :cond_0

    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    .local v0, lat:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    .local v2, lng:D
    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->top:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpg-double v5, v0, v5

    if-gtz v5, :cond_0

    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->bottom:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpl-double v5, v0, v5

    if-ltz v5, :cond_0

    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->right:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpg-double v5, v2, v5

    if-gtz v5, :cond_0

    iget-object v5, p2, Landroid/app/enterprise/geofencing/BoundingBox;->left:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v5, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpl-double v5, v2, v5

    if-ltz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private checkDeviceInsideCircleSpherical(Landroid/location/Location;Landroid/app/enterprise/geofencing/CircularGeofence;)Z
    .locals 30
    .parameter "location"
    .parameter "cfence"

    .prologue
    const-wide v2, 0x40b8e30000000000L

    .local v2, R:D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v18

    .local v18, pointlat:D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v20

    .local v20, pointlong:D
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v4, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    .local v4, centerlat:D
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v6, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    .local v6, centerlong:D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .local v12, lat2:D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    .local v16, lon2:D
    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .local v10, lat1:D
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    .local v14, lon1:D
    const-wide v24, 0x409925604189374cL

    move-object/from16 v0, p2

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->radius:D

    move-wide/from16 v26, v0

    mul-double v22, v24, v26

    .local v22, radInMiles:D
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    sub-double v28, v16, v14

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->acos(D)D

    move-result-wide v24

    mul-double v24, v24, v2

    const-wide v26, 0x408f400000000000L

    mul-double v8, v24, v26

    .local v8, distance:D
    cmpg-double v24, v8, v22

    if-gtz v24, :cond_0

    const/16 v24, 0x1

    :goto_0
    return v24

    :cond_0
    const/16 v24, 0x0

    goto :goto_0
.end method

.method private checkDeviceInsideLinear(Landroid/location/Location;Landroid/app/enterprise/geofencing/LinearGeofence;)Z
    .locals 9
    .parameter "location"
    .parameter "lFence"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v1, p2, Landroid/app/enterprise/geofencing/LinearGeofence;->optimizedPoints:Ljava/util/List;

    .local v1, point:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v6, 0x1

    .local v6, status:Z
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v7, :cond_0

    move v6, v7

    :goto_0
    if-ne v6, v7, :cond_1

    move v0, v7

    :goto_1
    return v0

    :cond_0
    move v6, v8

    goto :goto_0

    :cond_1
    move v0, v8

    goto :goto_1
.end method

.method private checkDeviceInsideOrOutside(Landroid/location/Location;I)Z
    .locals 7
    .parameter "location"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .local v4, state:Z
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, extras:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getGeofence(I)I

    move-result v5

    .local v5, type:I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getCircularGeofence(I)Landroid/app/enterprise/geofencing/CircularGeofence;

    move-result-object v0

    .local v0, cfence:Landroid/app/enterprise/geofencing/CircularGeofence;
    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideCircleSpherical(Landroid/location/Location;Landroid/app/enterprise/geofencing/CircularGeofence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceInsideMessageList(Ljava/util/List;)V

    const/4 v4, 0x1

    .end local v0           #cfence:Landroid/app/enterprise/geofencing/CircularGeofence;
    :cond_0
    :goto_0
    return v4

    :cond_1
    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getPolygonalGeofence(I)Landroid/app/enterprise/geofencing/PolygonalGeofence;

    move-result-object v3

    .local v3, pFence:Landroid/app/enterprise/geofencing/PolygonalGeofence;
    if-eqz v3, :cond_0

    iget-object v6, v3, Landroid/app/enterprise/geofencing/PolygonalGeofence;->boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Landroid/app/enterprise/geofencing/BoundingBox;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygon(Landroid/location/Location;Landroid/app/enterprise/geofencing/PolygonalGeofence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceInsideMessageList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto :goto_0

    .end local v3           #pFence:Landroid/app/enterprise/geofencing/PolygonalGeofence;
    :cond_2
    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getLinearGeofence(I)Landroid/app/enterprise/geofencing/LinearGeofence;

    move-result-object v2

    .local v2, lFence:Landroid/app/enterprise/geofencing/LinearGeofence;
    if-eqz v2, :cond_0

    iget-object v6, v2, Landroid/app/enterprise/geofencing/LinearGeofence;->boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;

    invoke-direct {p0, p1, v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Landroid/app/enterprise/geofencing/BoundingBox;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideLinear(Landroid/location/Location;Landroid/app/enterprise/geofencing/LinearGeofence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceInsideMessageList(Ljava/util/List;)V

    const/4 v4, 0x1

    goto :goto_0
.end method

.method private checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;
    .locals 13
    .parameter "location"
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v3, 0x0

    .local v3, inside:Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, relevant_geofences:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    iget-object v8, v8, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->mGeofenceList:Ljava/util/List;

    if-eqz v8, :cond_4

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    iget-object v8, v8, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->mGeofenceList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    iget-object v8, v8, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->mGeofenceList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/geofencing/Geofence;

    iget v8, v8, Landroid/app/enterprise/geofencing/Geofence;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .local v1, element:Ljava/lang/Integer;
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    iget-object v8, v8, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->mGeofenceList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/enterprise/geofencing/Geofence;

    iget v7, v8, Landroid/app/enterprise/geofencing/Geofence;->type:I

    .local v7, typeGeofence:I
    if-ne v7, v12, :cond_1

    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    iget-object v8, v8, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->mGeofenceList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/CircularGeofence;

    .local v0, cfence:Landroid/app/enterprise/geofencing/CircularGeofence;
    const-string v8, "GeofenceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "center "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v10, v10, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v10, v10, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "GeofenceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "radius "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->radius:D

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "GeofenceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "device "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideCircleSpherical(Landroid/location/Location;Landroid/app/enterprise/geofencing/CircularGeofence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v3, 0x1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v0           #cfence:Landroid/app/enterprise/geofencing/CircularGeofence;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    iget-object v8, v8, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->mGeofenceList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .local v5, pFence:Landroid/app/enterprise/geofencing/PolygonalGeofence;
    iget-object v8, v5, Landroid/app/enterprise/geofencing/PolygonalGeofence;->boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;

    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Landroid/app/enterprise/geofencing/BoundingBox;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0, p1, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygon(Landroid/location/Location;Landroid/app/enterprise/geofencing/PolygonalGeofence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v3, 0x1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v5           #pFence:Landroid/app/enterprise/geofencing/PolygonalGeofence;
    :cond_2
    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    iget-object v8, v8, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->mGeofenceList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/geofencing/LinearGeofence;

    .local v4, lFence:Landroid/app/enterprise/geofencing/LinearGeofence;
    iget-object v8, v4, Landroid/app/enterprise/geofencing/LinearGeofence;->boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;

    invoke-direct {p0, p1, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideBoundingbox(Landroid/location/Location;Landroid/app/enterprise/geofencing/BoundingBox;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideLinear(Landroid/location/Location;Landroid/app/enterprise/geofencing/LinearGeofence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v3, 0x1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #element:Ljava/lang/Integer;
    .end local v4           #lFence:Landroid/app/enterprise/geofencing/LinearGeofence;
    .end local v7           #typeGeofence:I
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_5

    if-nez v3, :cond_5

    if-ne p2, v12, :cond_5

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceOutsideMessage()V

    .end local v2           #i:I
    :cond_4
    :goto_2
    return-object v6

    .restart local v2       #i:I
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_4

    if-ne v3, v12, :cond_4

    if-ne p2, v12, :cond_4

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceInsideMessageList(Ljava/util/List;)V

    goto :goto_2
.end method

.method private checkDeviceInsidePolygon(Landroid/location/Location;Landroid/app/enterprise/geofencing/PolygonalGeofence;)Z
    .locals 11
    .parameter "location"
    .parameter "pFence"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    iget-object v1, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->optimizedPoints:Ljava/util/List;

    .local v1, point:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v8, 0x1

    .local v8, status:Z
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v8, v9

    :goto_0
    if-ne v8, v9, :cond_1

    move v0, v9

    :goto_1
    return v0

    :cond_0
    move v8, v10

    goto :goto_0

    :cond_1
    iget-object v3, p2, Landroid/app/enterprise/geofencing/PolygonalGeofence;->pointsWithinGraceLimit:Ljava/util/List;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I

    move-result v0

    if-ne v0, v9, :cond_2

    move v8, v9

    :goto_2
    if-ne v8, v9, :cond_3

    move v0, v9

    goto :goto_1

    :cond_2
    move v8, v10

    goto :goto_2

    :cond_3
    move v0, v10

    goto :goto_1
.end method

.method private checkDeviceInsidePolygonRayCasting(Ljava/util/List;DD)I
    .locals 13
    .parameter
    .parameter "testx"
    .parameter "testy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;DD)I"
        }
    .end annotation

    .prologue
    .local p1, points:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v0, 0x0

    .local v0, c:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, nvert:I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    new-array v5, v7, [D

    .local v5, vertx:[D
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    new-array v6, v7, [D

    .local v6, verty:[D
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v7, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    aput-wide v7, v5, v1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v7, v7, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    aput-wide v7, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    add-int/lit8 v3, v4, -0x1

    .local v3, j:I
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_1
    if-ge v2, v4, :cond_5

    aget-wide v7, v6, v2

    cmpl-double v7, v7, p4

    if-lez v7, :cond_2

    const/4 v7, 0x1

    :goto_2
    aget-wide v8, v6, v3

    cmpl-double v8, v8, p4

    if-lez v8, :cond_3

    const/4 v8, 0x1

    :goto_3
    if-eq v7, v8, :cond_1

    aget-wide v7, v5, v3

    aget-wide v9, v5, v2

    sub-double/2addr v7, v9

    aget-wide v9, v6, v2

    sub-double v9, p4, v9

    mul-double/2addr v7, v9

    aget-wide v9, v6, v3

    aget-wide v11, v6, v2

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    aget-wide v9, v5, v2

    add-double/2addr v7, v9

    cmpg-double v7, p2, v7

    if-gtz v7, :cond_1

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :cond_1
    :goto_4
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    move v3, v2

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    return v0
.end method

.method private convertToLinear(Landroid/app/enterprise/geofencing/LinearGeofence;)Ljava/util/List;
    .locals 14
    .parameter "lFence"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/geofencing/LinearGeofence;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    .local v3, length:I
    const/4 v0, 0x0

    .local v0, i:I
    add-int/lit8 v1, v3, -0x1

    .local v1, j:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, pointList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v0, 0x0

    :goto_0
    div-int/lit8 v9, v3, 0x2

    if-ge v0, v9, :cond_0

    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v10, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v12, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    add-double v9, v10, v12

    const-wide/high16 v11, 0x3fe0

    mul-double v4, v9, v11

    .local v4, midValueLat:D
    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v10, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-object v9, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v12, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    add-double v9, v10, v12

    const-wide/high16 v11, 0x3fe0

    mul-double v6, v9, v11

    .local v6, midValueLong:D
    new-instance v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .local v2, lTemp:Landroid/app/enterprise/geofencing/LatLongPoint;
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2           #lTemp:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v4           #midValueLat:D
    .end local v6           #midValueLong:D
    :cond_0
    return-object v8
.end method

.method private createGracePoints(Ljava/util/List;D)Ljava/util/List;
    .locals 47
    .parameter
    .parameter "graceDistance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;D)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, points:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .local v13, frontList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .local v33, slopes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .local v19, listAbove:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const-wide/16 v31, 0x0

    .local v31, slopePerpendicularAB:D
    const-wide/16 v7, 0x0

    .local v7, distanceToPoint:D
    const-wide v17, 0x3f747ae147ae147bL

    .local v17, latitudeNoise:D
    const-wide v20, 0x3f747ae147ae147bL

    .local v20, longitudeNoise:D
    const-wide v41, 0x3ee2cc82c7677f8dL

    mul-double p2, p2, v41

    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v41

    move/from16 v0, v41

    if-ge v14, v0, :cond_b

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v41

    add-int/lit8 v41, v41, -0x1

    move/from16 v0, v41

    if-ne v14, v0, :cond_5

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    .local v5, a:Landroid/app/enterprise/geofencing/LatLongPoint;
    const/16 v41, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    .local v6, b:Landroid/app/enterprise/geofencing/LatLongPoint;
    :goto_1
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v43, v0

    sub-double v41, v41, v43

    const-wide/16 v43, 0x0

    cmpl-double v41, v41, v43

    if-nez v41, :cond_0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v41, v0

    const-wide/16 v43, 0x0

    cmpl-double v41, v41, v43

    if-ltz v41, :cond_6

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v41, v0

    sub-double v41, v41, v17

    move-wide/from16 v0, v41

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    :cond_0
    :goto_2
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    sub-double v41, v41, v43

    const-wide/16 v43, 0x0

    cmpl-double v41, v41, v43

    if-nez v41, :cond_1

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    const-wide/16 v43, 0x0

    cmpl-double v41, v41, v43

    if-ltz v41, :cond_7

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    sub-double v41, v41, v20

    move-wide/from16 v0, v41

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    :cond_1
    :goto_3
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    sub-double v41, v41, v43

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v43, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v45, v0

    sub-double v43, v43, v45

    div-double v29, v41, v43

    .local v29, slopeAB:D
    invoke-static/range {v29 .. v30}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v41

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v26, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v43, v0

    add-double v41, v41, v43

    const-wide/high16 v43, 0x4000

    div-double v41, v41, v43

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v45, v0

    add-double v43, v43, v45

    const-wide/high16 v45, 0x4000

    div-double v43, v43, v45

    move-object/from16 v0, v26

    move-wide/from16 v1, v41

    move-wide/from16 v3, v43

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .local v26, mid1:Landroid/app/enterprise/geofencing/LatLongPoint;
    const-wide/high16 v41, 0x3ff0

    div-double v41, v41, v29

    move-wide/from16 v0, v41

    neg-double v0, v0

    move-wide/from16 v31, v0

    const-wide/high16 v41, 0x3ff0

    mul-double v43, v31, v31

    add-double v41, v41, v43

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v41

    div-double v7, p2, v41

    const-wide/16 v41, 0x0

    cmpl-double v41, v29, v41

    if-lez v41, :cond_2

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    cmpg-double v41, v41, v43

    if-ltz v41, :cond_3

    :cond_2
    const-wide/16 v41, 0x0

    cmpg-double v41, v29, v41

    if-gez v41, :cond_8

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    cmpl-double v41, v41, v43

    if-lez v41, :cond_8

    :cond_3
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    mul-double v43, v31, v7

    add-double v36, v41, v43

    .local v36, yNewAbove:D
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    sub-double v41, v36, v41

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v43, v0

    mul-double v43, v43, v31

    add-double v41, v41, v43

    div-double v34, v41, v31

    .local v34, xNewAbove:D
    new-instance v41, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v41

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v34           #xNewAbove:D
    .end local v36           #yNewAbove:D
    :cond_4
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .end local v5           #a:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v6           #b:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v26           #mid1:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v29           #slopeAB:D
    :cond_5
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    .restart local v5       #a:Landroid/app/enterprise/geofencing/LatLongPoint;
    add-int/lit8 v41, v14, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    .restart local v6       #b:Landroid/app/enterprise/geofencing/LatLongPoint;
    goto/16 :goto_1

    :cond_6
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v41, v0

    add-double v41, v41, v17

    move-wide/from16 v0, v41

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    goto/16 :goto_2

    :cond_7
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    add-double v41, v41, v20

    move-wide/from16 v0, v41

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    goto/16 :goto_3

    .restart local v26       #mid1:Landroid/app/enterprise/geofencing/LatLongPoint;
    .restart local v29       #slopeAB:D
    :cond_8
    const-wide/16 v41, 0x0

    cmpl-double v41, v29, v41

    if-lez v41, :cond_9

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    cmpl-double v41, v41, v43

    if-gtz v41, :cond_a

    :cond_9
    const-wide/16 v41, 0x0

    cmpg-double v41, v29, v41

    if-gez v41, :cond_4

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    cmpg-double v41, v41, v43

    if-gez v41, :cond_4

    :cond_a
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    mul-double v43, v31, v7

    sub-double v36, v41, v43

    .restart local v36       #yNewAbove:D
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    sub-double v41, v36, v41

    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v43, v0

    mul-double v43, v43, v31

    add-double v41, v41, v43

    div-double v34, v41, v31

    .restart local v34       #xNewAbove:D
    new-instance v41, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v41

    move-wide/from16 v1, v34

    move-wide/from16 v3, v36

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .end local v5           #a:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v6           #b:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v26           #mid1:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v29           #slopeAB:D
    .end local v34           #xNewAbove:D
    .end local v36           #yNewAbove:D
    :cond_b
    const/16 v38, 0x0

    .local v38, z:I
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v41

    add-int/lit8 v40, v41, -0x1

    .local v40, z1:I
    const/4 v14, 0x0

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v41

    add-int/lit8 v16, v41, -0x1

    .local v16, j:I
    :goto_5
    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v41

    add-int/lit8 v41, v41, -0x1

    move/from16 v0, v41

    if-ge v14, v0, :cond_c

    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Double;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    .local v22, m1:D
    move-object/from16 v0, v33

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Double;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    .local v24, m2:D
    move-object/from16 v0, v19

    move/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/app/enterprise/geofencing/LatLongPoint;

    .local v27, p1:Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, v19

    move/from16 v1, v40

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/app/enterprise/geofencing/LatLongPoint;

    .local v28, p2:Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v41, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v43, v0

    mul-double v43, v43, v24

    sub-double v41, v41, v43

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v45, v0

    mul-double v45, v45, v22

    sub-double v43, v43, v45

    sub-double v41, v41, v43

    sub-double v43, v22, v24

    div-double v9, v41, v43

    .local v9, finx:D
    mul-double v41, v22, v9

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v43, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v45, v0

    mul-double v45, v45, v22

    sub-double v43, v43, v45

    add-double v11, v41, v43

    .local v11, finy:D
    new-instance v41, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v41

    invoke-direct {v0, v9, v10, v11, v12}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v41

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v39, v38, 0x1

    .end local v38           #z:I
    .local v39, z:I
    move/from16 v40, v38

    add-int/lit8 v15, v14, 0x1

    .end local v14           #i:I
    .local v15, i:I
    move/from16 v16, v14

    move v14, v15

    .end local v15           #i:I
    .restart local v14       #i:I
    move/from16 v38, v39

    .end local v39           #z:I
    .restart local v38       #z:I
    goto/16 :goto_5

    .end local v9           #finx:D
    .end local v11           #finy:D
    .end local v22           #m1:D
    .end local v24           #m2:D
    .end local v27           #p1:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v28           #p2:Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_c
    return-object v13
.end method

.method private deleteFromDB(I)Z
    .locals 3
    .parameter "_id"

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, geofence_id_value:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "_id"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "GEOFENCING"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    invoke-virtual {v1}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->updateCache()Z

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static deserializeGeoFence([B)Ljava/lang/Object;
    .locals 6
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .local v1, in:Ljava/io/ObjectInputStream;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .local v3, object:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1           #in:Ljava/io/ObjectInputStream;
    .end local v3           #object:Ljava/lang/Object;
    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    .local v0, cnfe:Ljava/lang/ClassNotFoundException;
    move-object v3, v4

    goto :goto_0

    .end local v0           #cnfe:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .local v2, ioe:Ljava/io/IOException;
    move-object v3, v4

    goto :goto_0
.end method

.method private deviceInsideMessageList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, relevantGeofences:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v3, "GeofenceService"

    const-string v4, "DEVICE_INSIDE_GEOFENCE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [I

    .local v1, id:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "edm.intent.action.device.inside"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const-string v3, "edm.intent.extra.geofence.id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private deviceLocationUnavailableMessage()V
    .locals 3

    .prologue
    const-string v1, "GeofenceService"

    const-string v2, "DEVICE_LOCATION_UNAVAILABLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.device.location.unavailable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private deviceOutsideMessage()V
    .locals 3

    .prologue
    const-string v1, "GeofenceService"

    const-string v2, "DEVICE_OUTSIDE_GEOFENCE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.device.outside"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private enforceGeofencingPermission()I
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_GEOFENCING"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private findCollinear(Ljava/util/List;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, point:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, latlongs:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, collinear:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v11, 0x0

    .local v11, p3:Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    .local v5, i:I
    const/4 v6, 0x1

    .local v6, j:I
    const/4 v7, 0x2

    .local v7, k:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v7, v12, :cond_5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    .local v9, p1:Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/enterprise/geofencing/LatLongPoint;

    .local v10, p2:Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #p3:Landroid/app/enterprise/geofencing/LatLongPoint;
    check-cast v11, Landroid/app/enterprise/geofencing/LatLongPoint;

    .restart local v11       #p3:Landroid/app/enterprise/geofencing/LatLongPoint;
    iget-wide v12, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v14, v10, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-wide v0, v11, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v16, v0

    sub-double v14, v14, v16

    mul-double/2addr v12, v14

    iget-wide v14, v10, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v0, v11, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v16, v0

    iget-wide v0, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    iget-wide v14, v11, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v0, v9, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v16, v0

    iget-wide v0, v10, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v14, v14, v16

    add-double v2, v12, v14

    .local v2, area:D
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-nez v12, :cond_3

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findFirst(Ljava/util/List;)Landroid/app/enterprise/geofencing/LatLongPoint;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findLast(Ljava/util/List;)Landroid/app/enterprise/geofencing/LatLongPoint;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_4
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2           #area:D
    .end local v9           #p1:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v10           #p2:Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v8
.end method

.method private findFirst(Ljava/util/List;)Landroid/app/enterprise/geofencing/LatLongPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)",
            "Landroid/app/enterprise/geofencing/LatLongPoint;"
        }
    .end annotation

    .prologue
    .local p1, point:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    .local v0, first:Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v2, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v4, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v2, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-wide v4, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #first:Landroid/app/enterprise/geofencing/LatLongPoint;
    check-cast v0, Landroid/app/enterprise/geofencing/LatLongPoint;

    .restart local v0       #first:Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private findLast(Ljava/util/List;)Landroid/app/enterprise/geofencing/LatLongPoint;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)",
            "Landroid/app/enterprise/geofencing/LatLongPoint;"
        }
    .end annotation

    .prologue
    .local p1, point:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    .local v1, last:Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v2, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v2, v2, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #last:Landroid/app/enterprise/geofencing/LatLongPoint;
    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    .restart local v1       #last:Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getCircularGeofence(I)Landroid/app/enterprise/geofencing/CircularGeofence;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .local v6, cFence:Landroid/app/enterprise/geofencing/CircularGeofence;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, callingUid:I
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "GEOFENCING"

    const-string v3, "_id"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "blobdata"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlobByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    .local v8, circularBlobData:[B
    if-nez v8, :cond_0

    move-object v7, v6

    .end local v6           #cFence:Landroid/app/enterprise/geofencing/CircularGeofence;
    .local v7, cFence:Landroid/app/enterprise/geofencing/CircularGeofence;
    :goto_0
    return-object v7

    .end local v7           #cFence:Landroid/app/enterprise/geofencing/CircularGeofence;
    .restart local v6       #cFence:Landroid/app/enterprise/geofencing/CircularGeofence;
    :cond_0
    invoke-static {v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #cFence:Landroid/app/enterprise/geofencing/CircularGeofence;
    check-cast v6, Landroid/app/enterprise/geofencing/CircularGeofence;

    .restart local v6       #cFence:Landroid/app/enterprise/geofencing/CircularGeofence;
    move-object v7, v6

    .end local v6           #cFence:Landroid/app/enterprise/geofencing/CircularGeofence;
    .restart local v7       #cFence:Landroid/app/enterprise/geofencing/CircularGeofence;
    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getGeofence(I)I
    .locals 7
    .parameter "id"

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, callingUid:I
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "GEOFENCING"

    const-string v3, "_id"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .local v6, type:I
    if-gtz v6, :cond_0

    const/4 v6, -0x1

    .end local v6           #type:I
    :cond_0
    return v6
.end method

.method private getLinearGeofence(I)Landroid/app/enterprise/geofencing/LinearGeofence;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .local v6, lFence:Landroid/app/enterprise/geofencing/LinearGeofence;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, callingUid:I
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "GEOFENCING"

    const-string v3, "_id"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "blobdata"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlobByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    .local v8, linearBlobData:[B
    if-nez v8, :cond_0

    move-object v7, v6

    .end local v6           #lFence:Landroid/app/enterprise/geofencing/LinearGeofence;
    .local v7, lFence:Landroid/app/enterprise/geofencing/LinearGeofence;
    :goto_0
    return-object v7

    .end local v7           #lFence:Landroid/app/enterprise/geofencing/LinearGeofence;
    .restart local v6       #lFence:Landroid/app/enterprise/geofencing/LinearGeofence;
    :cond_0
    invoke-static {v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #lFence:Landroid/app/enterprise/geofencing/LinearGeofence;
    check-cast v6, Landroid/app/enterprise/geofencing/LinearGeofence;

    .restart local v6       #lFence:Landroid/app/enterprise/geofencing/LinearGeofence;
    move-object v7, v6

    .end local v6           #lFence:Landroid/app/enterprise/geofencing/LinearGeofence;
    .restart local v7       #lFence:Landroid/app/enterprise/geofencing/LinearGeofence;
    goto :goto_0
.end method

.method private getPolygonalGeofence(I)Landroid/app/enterprise/geofencing/PolygonalGeofence;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .local v6, pFence:Landroid/app/enterprise/geofencing/PolygonalGeofence;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, callingUid:I
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "GEOFENCING"

    const-string v3, "_id"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "blobdata"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlobByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    .local v8, polygonalBlobData:[B
    if-nez v8, :cond_0

    move-object v7, v6

    .end local v6           #pFence:Landroid/app/enterprise/geofencing/PolygonalGeofence;
    .local v7, pFence:Landroid/app/enterprise/geofencing/PolygonalGeofence;
    :goto_0
    return-object v7

    .end local v7           #pFence:Landroid/app/enterprise/geofencing/PolygonalGeofence;
    .restart local v6       #pFence:Landroid/app/enterprise/geofencing/PolygonalGeofence;
    :cond_0
    invoke-static {v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #pFence:Landroid/app/enterprise/geofencing/PolygonalGeofence;
    check-cast v6, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .restart local v6       #pFence:Landroid/app/enterprise/geofencing/PolygonalGeofence;
    move-object v7, v6

    .end local v6           #pFence:Landroid/app/enterprise/geofencing/PolygonalGeofence;
    .restart local v7       #pFence:Landroid/app/enterprise/geofencing/PolygonalGeofence;
    goto :goto_0
.end method

.method private isDeviceInsideGeofence(I)Z
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .local v0, criteria:Landroid/location/Criteria;
    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setAccuracy(I)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v0, v2}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v0, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->setLocationManager()V

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v0, v3}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .local v1, provider:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    iput-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutside(Landroid/location/Location;I)Z

    move-result v2

    return v2
.end method

.method private readGeofenceFromDB()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/Geofence;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, geofences:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/Geofence;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    const/4 v6, 0x0

    .local v6, numberOfGeofences:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, idList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, typeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, geofenceDataList:Ljava/util/List;,"Ljava/util/List<[B>;"
    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "GEOFENCING"

    const-string v11, "_id"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "GEOFENCING"

    const-string v11, "type"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "GEOFENCING"

    const-string v11, "blobdata"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlobList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_3

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-static {v9}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .local v7, pFence:Landroid/app/enterprise/geofencing/PolygonalGeofence;
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, Landroid/app/enterprise/geofencing/PolygonalGeofence;->id:I

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v7, Landroid/app/enterprise/geofencing/PolygonalGeofence;->type:I

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v7           #pFence:Landroid/app/enterprise/geofencing/PolygonalGeofence;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-static {v9}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LinearGeofence;

    .local v5, lFence:Landroid/app/enterprise/geofencing/LinearGeofence;
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v5, Landroid/app/enterprise/geofencing/LinearGeofence;->id:I

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v5, Landroid/app/enterprise/geofencing/LinearGeofence;->type:I

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v5           #lFence:Landroid/app/enterprise/geofencing/LinearGeofence;
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    invoke-static {v9}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deserializeGeoFence([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/geofencing/CircularGeofence;

    .local v0, cFence:Landroid/app/enterprise/geofencing/CircularGeofence;
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->id:I

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v0, Landroid/app/enterprise/geofencing/CircularGeofence;->type:I

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #cFence:Landroid/app/enterprise/geofencing/CircularGeofence;
    .end local v3           #i:I
    :cond_2
    const/4 v2, 0x0

    .end local v2           #geofences:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/Geofence;>;"
    :cond_3
    return-object v2
.end method

.method private serializeGeoFence(Ljava/lang/Object;)[B
    .locals 4
    .parameter "o"

    .prologue
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v2, out:Ljava/io/ObjectOutput;
    invoke-interface {v2, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/io/ObjectOutput;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v2           #out:Ljava/io/ObjectOutput;
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, ioe:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setLocationManager()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private startMonitoring()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .local v7, token:J
    sput v5, Lcom/android/server/enterprise/geofencing/GeofenceService;->STARTED_GEOFENCING:I

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "geofencing"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->setLocationManager()V

    sget-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    sget-object v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    new-instance v0, Lcom/android/server/enterprise/geofencing/GeofenceService$MyLocationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService$MyLocationListener;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Lcom/android/server/enterprise/geofencing/GeofenceService$1;)V

    sput-object v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Landroid/location/LocationListener;

    new-instance v4, Landroid/location/Criteria;

    invoke-direct {v4}, Landroid/location/Criteria;-><init>()V

    .local v4, criteria:Landroid/location/Criteria;
    invoke-virtual {v4, v5}, Landroid/location/Criteria;->setAccuracy(I)V

    invoke-virtual {v4, v3}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v4, v3}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v4, v3}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v4, v5}, Landroid/location/Criteria;->setPowerRequirement(I)V

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    sget-wide v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mTimeParameter:J

    sget v3, Lcom/android/server/enterprise/geofencing/GeofenceService;->mDistanceParameter:F

    sget-object v5, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Landroid/location/LocationListener;

    iget-object v6, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(JFLandroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method private validateCircularGeofence(Landroid/app/enterprise/geofencing/LatLongPoint;D)Z
    .locals 5
    .parameter "center"
    .parameter "radius"

    .prologue
    const/4 v0, 0x1

    .local v0, valid:Z
    const-wide/16 v1, 0x0

    cmpg-double v1, p2, v1

    if-gtz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-wide v1, p1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    const-wide v3, 0x4056800000000000L

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_2

    iget-wide v1, p1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    const-wide v3, -0x3fa9800000000000L

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_2

    iget-wide v1, p1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    const-wide v3, 0x4066800000000000L

    cmpl-double v1, v1, v3

    if-gtz v1, :cond_2

    iget-wide v1, p1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    const-wide v3, -0x3f99800000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private validatePolygonalGeofence(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, points:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const/4 v2, 0x1

    .local v2, valid:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/geofencing/LatLongPoint;

    .local v1, latlongPoint:Landroid/app/enterprise/geofencing/LatLongPoint;
    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    const-wide v6, 0x4056800000000000L

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_0

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    const-wide v6, -0x3fa9800000000000L

    cmpg-double v4, v4, v6

    if-ltz v4, :cond_0

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    const-wide v6, 0x4066800000000000L

    cmpl-double v4, v4, v6

    if-gtz v4, :cond_0

    iget-wide v4, v1, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    const-wide v6, -0x3f99800000000000L

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .end local v1           #latlongPoint:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v2           #valid:Z
    .local v3, valid:I
    :goto_1
    return v3

    .end local v3           #valid:I
    .restart local v1       #latlongPoint:Landroid/app/enterprise/geofencing/LatLongPoint;
    .restart local v2       #valid:Z
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #latlongPoint:Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_2
    move v3, v2

    .restart local v3       #valid:I
    goto :goto_1
.end method

.method private writeGeofenceToDB(I[B)I
    .locals 5
    .parameter "type"
    .parameter "serializedBlob"

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, callingUid:I
    if-nez p2, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "blobdata"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "GEOFENCING"

    invoke-virtual {v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insertValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v1

    .local v1, id:I
    iget-object v3, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    invoke-virtual {v3}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->updateCache()Z

    goto :goto_0
.end method


# virtual methods
.method public createGeofence(Landroid/app/enterprise/geofencing/CircularGeofence;)I
    .locals 9
    .parameter "circularGeofence"

    .prologue
    const/4 v8, 0x1

    const-string v5, "GeofenceService"

    const-string v6, "createGeofence"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    const/4 v1, -0x1

    .local v1, id:I
    iget-object v5, p1, Landroid/app/enterprise/geofencing/CircularGeofence;->center:Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v6, p1, Landroid/app/enterprise/geofencing/CircularGeofence;->radius:D

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validateCircularGeofence(Landroid/app/enterprise/geofencing/LatLongPoint;D)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v4

    .local v4, serializedBlob:[B
    if-nez v4, :cond_0

    move v2, v1

    .end local v1           #id:I
    .end local v4           #serializedBlob:[B
    .local v2, id:I
    :goto_0
    return v2

    .end local v2           #id:I
    .restart local v1       #id:I
    .restart local v4       #serializedBlob:[B
    :cond_0
    invoke-direct {p0, v8, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(I[B)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .local v3, message:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "edm.intent.extra.geofence.id"

    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v3           #message:Landroid/os/Message;
    .end local v4           #serializedBlob:[B
    :cond_1
    move v2, v1

    .end local v1           #id:I
    .restart local v2       #id:I
    goto :goto_0
.end method

.method public createGeofence(Landroid/app/enterprise/geofencing/Geofence;)I
    .locals 3
    .parameter "geofence"

    .prologue
    const/4 v0, -0x1

    .local v0, id:I
    iget v1, p1, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    check-cast p1, Landroid/app/enterprise/geofencing/CircularGeofence;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Landroid/app/enterprise/geofencing/CircularGeofence;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    .restart local p1
    :cond_1
    iget v1, p1, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    check-cast p1, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Landroid/app/enterprise/geofencing/PolygonalGeofence;)I

    move-result v0

    goto :goto_0

    .restart local p1
    :cond_2
    iget v1, p1, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    check-cast p1, Landroid/app/enterprise/geofencing/LinearGeofence;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGeofence(Landroid/app/enterprise/geofencing/LinearGeofence;)I

    move-result v0

    goto :goto_0
.end method

.method public createGeofence(Landroid/app/enterprise/geofencing/LinearGeofence;)I
    .locals 14
    .parameter "linearGeofence"

    .prologue
    const-string v10, "GeofenceService"

    const-string v11, "createGeofence"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    const/4 v7, -0x1

    .local v7, id:I
    iget-wide v4, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    .local v4, toleranceVal:D
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, polygonList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    iget-wide v10, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-nez v10, :cond_0

    const/4 v10, -0x1

    :goto_0
    return v10

    :cond_0
    iget-object v10, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->points:Ljava/util/List;

    iget-wide v11, p1, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    invoke-virtual {p0, v10, v11, v12}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-le v10, v11, :cond_4

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .local v2, latlongs:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-gt v10, v11, :cond_2

    :cond_1
    const/4 v10, -0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Landroid/app/enterprise/geofencing/BoundingBox;

    move-result-object v3

    .local v3, boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;
    new-instance v0, Landroid/app/enterprise/geofencing/LinearGeofence;

    invoke-direct/range {v0 .. v5}, Landroid/app/enterprise/geofencing/LinearGeofence;-><init>(Ljava/util/List;Ljava/util/List;Landroid/app/enterprise/geofencing/BoundingBox;D)V

    .local v0, lFence:Landroid/app/enterprise/geofencing/LinearGeofence;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v9

    .local v9, serializedBlob:[B
    const/4 v10, 0x3

    invoke-direct {p0, v10, v9}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(I[B)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .local v8, message:Landroid/os/Message;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .local v6, bundle:Landroid/os/Bundle;
    const-string v10, "edm.intent.extra.geofence.id"

    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v8, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v0           #lFence:Landroid/app/enterprise/geofencing/LinearGeofence;
    .end local v2           #latlongs:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    .end local v3           #boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v8           #message:Landroid/os/Message;
    .end local v9           #serializedBlob:[B
    :cond_3
    move v10, v7

    goto :goto_0

    :cond_4
    move v10, v7

    goto :goto_0
.end method

.method public createGeofence(Landroid/app/enterprise/geofencing/PolygonalGeofence;)I
    .locals 14
    .parameter "polygonalGeofence"

    .prologue
    const/4 v13, 0x2

    const-string v1, "GeofenceService"

    const-string v2, "createGeofence"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    const/4 v8, -0x1

    .local v8, id:I
    iget-object v1, p1, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v13, :cond_2

    iget-object v1, p1, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->validatePolygonalGeofence(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->findCollinear(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .local v4, latlongs:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v13, :cond_1

    :cond_0
    const/4 v1, -0x1

    .end local v4           #latlongs:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    :goto_0
    return v1

    .restart local v4       #latlongs:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->calcBoundingBox(Ljava/util/List;)Landroid/app/enterprise/geofencing/BoundingBox;

    move-result-object v6

    .local v6, boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;
    iget-wide v1, p1, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    const-wide/16 v11, 0x0

    cmpl-double v1, v1, v11

    if-nez v1, :cond_3

    move-object v5, v4

    .local v5, gracePoints:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    :goto_1
    new-instance v0, Landroid/app/enterprise/geofencing/PolygonalGeofence;

    iget-object v1, p1, Landroid/app/enterprise/geofencing/PolygonalGeofence;->points:Ljava/util/List;

    iget-wide v2, p1, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    invoke-direct/range {v0 .. v6}, Landroid/app/enterprise/geofencing/PolygonalGeofence;-><init>(Ljava/util/List;DLjava/util/List;Ljava/util/List;Landroid/app/enterprise/geofencing/BoundingBox;)V

    .local v0, pGeofence:Landroid/app/enterprise/geofencing/PolygonalGeofence;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->serializeGeoFence(Ljava/lang/Object;)[B

    move-result-object v10

    .local v10, serializedBlob:[B
    invoke-direct {p0, v13, v10}, Lcom/android/server/enterprise/geofencing/GeofenceService;->writeGeofenceToDB(I[B)I

    move-result v8

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .local v9, message:Landroid/os/Message;
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .local v7, bundle:Landroid/os/Bundle;
    const-string v1, "edm.intent.extra.geofence.id"

    invoke-virtual {v7, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v9, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .end local v0           #pGeofence:Landroid/app/enterprise/geofencing/PolygonalGeofence;
    .end local v4           #latlongs:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    .end local v5           #gracePoints:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    .end local v6           #boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #message:Landroid/os/Message;
    .end local v10           #serializedBlob:[B
    :cond_2
    move v1, v8

    goto :goto_0

    .restart local v4       #latlongs:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    .restart local v6       #boundingBox:Landroid/app/enterprise/geofencing/BoundingBox;
    :cond_3
    iget-wide v1, p1, Landroid/app/enterprise/geofencing/PolygonalGeofence;->graceDistance:D

    invoke-direct {p0, v4, v1, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->createGracePoints(Ljava/util/List;D)Ljava/util/List;

    move-result-object v5

    .restart local v5       #gracePoints:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    goto :goto_1
.end method

.method public createPolygonalPoints2(Ljava/util/List;D)Ljava/util/List;
    .locals 58
    .parameter
    .parameter "tolerance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;D)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/LatLongPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, points:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .local v20, frontList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .local v11, endList:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .local v41, slopes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Double;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .local v24, listAbove:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .local v25, listBelow:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    const-wide/16 v39, 0x0

    .local v39, slopePerpendicularAB:D
    const-wide/16 v7, 0x0

    .local v7, distanceToPoint:D
    const-wide v22, 0x3f747ae147ae147bL

    .local v22, latitudeNoise:D
    const-wide v26, 0x3f747ae147ae147bL

    .local v26, longitudeNoise:D
    const/16 v42, 0x0

    .local v42, temp:Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v9, 0x0

    .local v9, end1:Landroid/app/enterprise/geofencing/LatLongPoint;
    const/4 v10, 0x0

    .local v10, end2:Landroid/app/enterprise/geofencing/LatLongPoint;
    const-wide v52, 0x3ee2cc82c7677f8dL

    mul-double p2, p2, v52

    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    move/from16 v0, v21

    move/from16 v1, v52

    if-ge v0, v1, :cond_15

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_8

    add-int/lit8 v52, v21, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    .local v5, a:Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    .local v6, b:Landroid/app/enterprise/geofencing/LatLongPoint;
    :goto_1
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    sub-double v52, v52, v54

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-nez v52, :cond_0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-ltz v52, :cond_9

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    sub-double v52, v52, v22

    move-wide/from16 v0, v52

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    :cond_0
    :goto_2
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v52, v52, v54

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-nez v52, :cond_1

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-ltz v52, :cond_a

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v52, v26

    move-wide/from16 v0, v52

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    :cond_1
    :goto_3
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    sub-double v52, v52, v54

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    sub-double v54, v54, v56

    div-double v37, v52, v54

    .local v37, slopeAB:D
    invoke-static/range {v37 .. v38}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v52

    move-object/from16 v0, v41

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v32, Landroid/app/enterprise/geofencing/LatLongPoint;

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    add-double v52, v52, v54

    const-wide/high16 v54, 0x4000

    div-double v52, v52, v54

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v56, v0

    add-double v54, v54, v56

    const-wide/high16 v56, 0x4000

    div-double v54, v54, v56

    move-object/from16 v0, v32

    move-wide/from16 v1, v52

    move-wide/from16 v3, v54

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .local v32, mid1:Landroid/app/enterprise/geofencing/LatLongPoint;
    const-wide/high16 v52, 0x3ff0

    div-double v52, v52, v37

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v39, v0

    const-wide/high16 v52, 0x3ff0

    mul-double v54, v39, v39

    add-double v52, v52, v54

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v52

    div-double v7, p2, v52

    const-wide/16 v52, 0x0

    cmpl-double v52, v37, v52

    if-lez v52, :cond_2

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    cmpg-double v52, v52, v54

    if-ltz v52, :cond_3

    :cond_2
    const-wide/16 v52, 0x0

    cmpg-double v52, v37, v52

    if-gez v52, :cond_d

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    cmpl-double v52, v52, v54

    if-lez v52, :cond_d

    :cond_3
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    add-double v47, v52, v54

    .local v47, yNewAbove:D
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v47, v52

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v43, v52, v39

    .local v43, xNewAbove:D
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    move-wide/from16 v3, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v24

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    sub-double v49, v52, v54

    .local v49, yNewBelow:D
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v49, v52

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v45, v52, v39

    .local v45, xNewBelow:D
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v45

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v21, :cond_4

    move-object/from16 v42, v5

    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_5

    move-object/from16 v42, v6

    :cond_5
    if-eqz v21, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_7

    :cond_6
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    add-double v47, v52, v54

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v47, v52

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v43, v52, v39

    if-nez v21, :cond_b

    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    move-wide/from16 v3, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    sub-double v49, v52, v54

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v49, v52

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v45, v52, v39

    if-nez v21, :cond_c

    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v45

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v52

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v43           #xNewAbove:D
    .end local v45           #xNewBelow:D
    .end local v47           #yNewAbove:D
    .end local v49           #yNewBelow:D
    :cond_7
    :goto_5
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .end local v5           #a:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v6           #b:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v32           #mid1:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v37           #slopeAB:D
    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/LatLongPoint;

    .restart local v5       #a:Landroid/app/enterprise/geofencing/LatLongPoint;
    add-int/lit8 v52, v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/enterprise/geofencing/LatLongPoint;

    .restart local v6       #b:Landroid/app/enterprise/geofencing/LatLongPoint;
    goto/16 :goto_1

    :cond_9
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v52, v0

    add-double v52, v52, v22

    move-wide/from16 v0, v52

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    goto/16 :goto_2

    :cond_a
    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    add-double v52, v52, v26

    move-wide/from16 v0, v52

    iput-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    goto/16 :goto_3

    .restart local v32       #mid1:Landroid/app/enterprise/geofencing/LatLongPoint;
    .restart local v37       #slopeAB:D
    .restart local v43       #xNewAbove:D
    .restart local v45       #xNewBelow:D
    .restart local v47       #yNewAbove:D
    .restart local v49       #yNewBelow:D
    :cond_b
    new-instance v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    .end local v9           #end1:Landroid/app/enterprise/geofencing/LatLongPoint;
    move-wide/from16 v0, v43

    move-wide/from16 v2, v47

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .restart local v9       #end1:Landroid/app/enterprise/geofencing/LatLongPoint;
    goto :goto_4

    :cond_c
    new-instance v10, Landroid/app/enterprise/geofencing/LatLongPoint;

    .end local v10           #end2:Landroid/app/enterprise/geofencing/LatLongPoint;
    move-wide/from16 v0, v45

    move-wide/from16 v2, v49

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .restart local v10       #end2:Landroid/app/enterprise/geofencing/LatLongPoint;
    goto :goto_5

    .end local v43           #xNewAbove:D
    .end local v45           #xNewBelow:D
    .end local v47           #yNewAbove:D
    .end local v49           #yNewBelow:D
    :cond_d
    const-wide/16 v52, 0x0

    cmpl-double v52, v37, v52

    if-lez v52, :cond_e

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    cmpl-double v52, v52, v54

    if-gtz v52, :cond_f

    :cond_e
    const-wide/16 v52, 0x0

    cmpg-double v52, v37, v52

    if-gez v52, :cond_7

    iget-wide v0, v5, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    iget-wide v0, v6, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    cmpg-double v52, v52, v54

    if-gez v52, :cond_7

    :cond_f
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    sub-double v47, v52, v54

    .restart local v47       #yNewAbove:D
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v47, v52

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v43, v52, v39

    .restart local v43       #xNewAbove:D
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    move-wide/from16 v3, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v24

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    add-double v49, v52, v54

    .restart local v49       #yNewBelow:D
    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v49, v52

    move-object/from16 v0, v32

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v45, v52, v39

    .restart local v45       #xNewBelow:D
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v45

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v25

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v21, :cond_10

    move-object/from16 v42, v5

    :cond_10
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_11

    move-object/from16 v42, v6

    :cond_11
    if-eqz v21, :cond_12

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v21

    move/from16 v1, v52

    if-ne v0, v1, :cond_7

    :cond_12
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    sub-double v47, v52, v54

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v47, v52

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v43, v52, v39

    if-nez v21, :cond_13

    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v43

    move-wide/from16 v3, v47

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    mul-double v54, v39, v7

    add-double v49, v52, v54

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    sub-double v52, v49, v52

    move-object/from16 v0, v42

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v39

    add-double v52, v52, v54

    div-double v45, v52, v39

    if-nez v21, :cond_14

    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v45

    move-wide/from16 v3, v49

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v52

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_13
    new-instance v9, Landroid/app/enterprise/geofencing/LatLongPoint;

    .end local v9           #end1:Landroid/app/enterprise/geofencing/LatLongPoint;
    move-wide/from16 v0, v43

    move-wide/from16 v2, v47

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .restart local v9       #end1:Landroid/app/enterprise/geofencing/LatLongPoint;
    goto :goto_6

    :cond_14
    new-instance v10, Landroid/app/enterprise/geofencing/LatLongPoint;

    .end local v10           #end2:Landroid/app/enterprise/geofencing/LatLongPoint;
    move-wide/from16 v0, v45

    move-wide/from16 v2, v49

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    .restart local v10       #end2:Landroid/app/enterprise/geofencing/LatLongPoint;
    goto/16 :goto_5

    .end local v5           #a:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v6           #b:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v32           #mid1:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v37           #slopeAB:D
    .end local v43           #xNewAbove:D
    .end local v45           #xNewBelow:D
    .end local v47           #yNewAbove:D
    .end local v49           #yNewBelow:D
    :cond_15
    const/16 v51, 0x0

    .local v51, z:I
    const/16 v21, 0x0

    :goto_7
    invoke-interface/range {v41 .. v41}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v52, v52, -0x2

    move/from16 v0, v21

    move/from16 v1, v52

    if-ge v0, v1, :cond_16

    move-object/from16 v0, v41

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Double;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    .local v28, m1:D
    add-int/lit8 v52, v21, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/Double;

    invoke-virtual/range {v52 .. v52}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v30

    .local v30, m2:D
    move-object/from16 v0, v24

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/enterprise/geofencing/LatLongPoint;

    .local v33, p1:Landroid/app/enterprise/geofencing/LatLongPoint;
    add-int/lit8 v52, v51, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/enterprise/geofencing/LatLongPoint;

    .local v34, p2:Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    move-object/from16 v0, v34

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v30

    sub-double v52, v52, v54

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v28

    sub-double v54, v54, v56

    sub-double v52, v52, v54

    sub-double v54, v28, v30

    div-double v12, v52, v54

    .local v12, finx:D
    mul-double v52, v28, v12

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v28

    sub-double v54, v54, v56

    add-double v16, v52, v54

    .local v16, finy:D
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v16

    invoke-direct {v0, v12, v13, v1, v2}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v25

    move/from16 v1, v51

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/app/enterprise/geofencing/LatLongPoint;

    .local v35, p3:Landroid/app/enterprise/geofencing/LatLongPoint;
    add-int/lit8 v52, v51, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/app/enterprise/geofencing/LatLongPoint;

    .local v36, p4:Landroid/app/enterprise/geofencing/LatLongPoint;
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v52, v0

    move-object/from16 v0, v36

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v54, v0

    mul-double v54, v54, v30

    sub-double v52, v52, v54

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v28

    sub-double v54, v54, v56

    sub-double v52, v52, v54

    sub-double v54, v28, v30

    div-double v14, v52, v54

    .local v14, finxbelow:D
    mul-double v52, v28, v14

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    move-wide/from16 v54, v0

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    move-wide/from16 v56, v0

    mul-double v56, v56, v28

    sub-double v54, v54, v56

    add-double v18, v52, v54

    .local v18, finybelow:D
    new-instance v52, Landroid/app/enterprise/geofencing/LatLongPoint;

    move-object/from16 v0, v52

    move-wide/from16 v1, v18

    invoke-direct {v0, v14, v15, v1, v2}, Landroid/app/enterprise/geofencing/LatLongPoint;-><init>(DD)V

    move-object/from16 v0, v52

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v51, v51, 0x1

    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_7

    .end local v12           #finx:D
    .end local v14           #finxbelow:D
    .end local v16           #finy:D
    .end local v18           #finybelow:D
    .end local v28           #m1:D
    .end local v30           #m2:D
    .end local v33           #p1:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v34           #p2:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v35           #p3:Landroid/app/enterprise/geofencing/LatLongPoint;
    .end local v36           #p4:Landroid/app/enterprise/geofencing/LatLongPoint;
    :cond_16
    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v52

    add-int/lit8 v21, v52, -0x1

    :goto_8
    if-ltz v21, :cond_17

    move/from16 v0, v21

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v52

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v21, v21, -0x1

    goto :goto_8

    :cond_17
    return-object v20
.end method

.method public destroyGeofence(I)Z
    .locals 2
    .parameter "id"

    .prologue
    const-string v0, "GeofenceService"

    const-string v1, "destroyGeofence"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteFromDB(I)Z

    move-result v0

    return v0
.end method

.method public findDistance(Landroid/app/enterprise/geofencing/LatLongPoint;Landroid/app/enterprise/geofencing/LatLongPoint;)D
    .locals 19
    .parameter "point1"
    .parameter "point2"

    .prologue
    const-wide v1, 0x40aeed880a82edb3L

    .local v1, R:D
    move-object/from16 v0, p1

    iget-wide v13, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    .local v7, lat2:D
    move-object/from16 v0, p1

    iget-wide v13, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v11

    .local v11, lon2:D
    move-object/from16 v0, p2

    iget-wide v13, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->latitude:D

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .local v5, lat1:D
    move-object/from16 v0, p2

    iget-wide v13, v0, Landroid/app/enterprise/geofencing/LatLongPoint;->longitude:D

    invoke-static {v13, v14}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .local v9, lon1:D
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    sub-double v17, v11, v9

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->acos(D)D

    move-result-wide v13

    mul-double v3, v13, v1

    .local v3, distance:D
    return-wide v3
.end method

.method public getGeofences()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/geofencing/Geofence;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v5, "GeofenceService"

    const-string v6, "getGeofences"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, linearPoints:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/LatLongPoint;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, resultGeofences:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/Geofence;>;"
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    iget-object v5, v5, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->mGeofenceList:Ljava/util/List;

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    iget-object v5, v5, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->mGeofenceList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    iget-object v5, v5, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->mGeofenceList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/Geofence;

    iget v5, v5, Landroid/app/enterprise/geofencing/Geofence;->type:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    iget-object v5, v5, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->mGeofenceList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/geofencing/Geofence;

    iget v5, v5, Landroid/app/enterprise/geofencing/Geofence;->id:I

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getLinearGeofence(I)Landroid/app/enterprise/geofencing/LinearGeofence;

    move-result-object v2

    .local v2, lFenceTemp:Landroid/app/enterprise/geofencing/LinearGeofence;
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->convertToLinear(Landroid/app/enterprise/geofencing/LinearGeofence;)Ljava/util/List;

    move-result-object v3

    new-instance v1, Landroid/app/enterprise/geofencing/LinearGeofence;

    iget-wide v5, v2, Landroid/app/enterprise/geofencing/LinearGeofence;->width:D

    invoke-direct {v1, v3, v5, v6}, Landroid/app/enterprise/geofencing/LinearGeofence;-><init>(Ljava/util/List;D)V

    .local v1, lFence:Landroid/app/enterprise/geofencing/LinearGeofence;
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1           #lFence:Landroid/app/enterprise/geofencing/LinearGeofence;
    .end local v2           #lFenceTemp:Landroid/app/enterprise/geofencing/LinearGeofence;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    iget-object v5, v5, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->mGeofenceList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v0           #i:I
    :cond_1
    const/4 v4, 0x0

    .end local v4           #resultGeofences:Ljava/util/List;,"Ljava/util/List<Landroid/app/enterprise/geofencing/Geofence;>;"
    :cond_2
    return-object v4
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandler:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;

    return-object v0
.end method

.method public getMinDistanceParameter()F
    .locals 1

    .prologue
    sget v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mDistanceParameter:F

    return v0
.end method

.method public getMinTimeParameter()J
    .locals 2

    .prologue
    sget-wide v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mTimeParameter:J

    return-wide v0
.end method

.method public isDeviceInsideGeofence()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v7, "GeofenceService"

    const-string v8, "isDeviceInsideGeofence"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .local v5, token:J
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    const/4 v2, 0x0

    .local v2, flag:Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, activeGeofences:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, location:Landroid/location/Location;
    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    invoke-virtual {v7}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->updateCache()Z

    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1}, Landroid/location/Criteria;-><init>()V

    .local v1, criteria:Landroid/location/Criteria;
    invoke-virtual {v1, v9}, Landroid/location/Criteria;->setAccuracy(I)V

    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setBearingRequired(Z)V

    invoke-virtual {v1, v10}, Landroid/location/Criteria;->setCostAllowed(Z)V

    invoke-virtual {v1, v9}, Landroid/location/Criteria;->setPowerRequirement(I)V

    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    if-nez v7, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->setLocationManager()V

    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v7, v1, v9}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v4

    .local v4, provider:Ljava/lang/String;
    sget-object v7, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Landroid/location/LocationListener;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    sget-object v8, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v7, v8}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_1
    new-instance v7, Lcom/android/server/enterprise/geofencing/GeofenceService$MyLocationListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/server/enterprise/geofencing/GeofenceService$MyLocationListener;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Lcom/android/server/enterprise/geofencing/GeofenceService$1;)V

    sput-object v7, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Landroid/location/LocationListener;

    sput v9, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCheckGeofence:I

    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v7, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage()V

    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    sget-object v8, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Landroid/location/LocationListener;

    iget-object v9, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {v7, v1, v8, v9}, Landroid/location/LocationManager;->requestSingleUpdate(Landroid/location/Criteria;Landroid/location/LocationListener;Landroid/os/Looper;)V

    :goto_0
    sput v10, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCheckGeofence:I

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v0

    :cond_2
    iget-object v7, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v7, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public isGeofencingEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-string v4, "GeofenceService"

    const-string v5, "isGeofencingEnabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "geofencing"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, enabled:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "geofencingTime"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, time:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "geofencingDistance"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, distance:Ljava/lang/String;
    const-string v4, "GeofenceService"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GeofenceService"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "GeofenceService"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->startGeofencing()Z

    sput v3, Lcom/android/server/enterprise/geofencing/GeofenceService;->STARTED_GEOFENCING:I

    :cond_0
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/enterprise/geofencing/GeofenceService;->mTimeParameter:J

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    sput v4, Lcom/android/server/enterprise/geofencing/GeofenceService;->mDistanceParameter:F

    :cond_1
    sget v4, Lcom/android/server/enterprise/geofencing/GeofenceService;->STARTED_GEOFENCING:I

    if-ne v4, v3, :cond_2

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 1
    .parameter "uid"

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    invoke-virtual {v0}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->updateCache()Z

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 1
    .parameter "uid"

    .prologue
    const/4 v0, 0x0

    sput v0, Lcom/android/server/enterprise/geofencing/GeofenceService;->STARTED_GEOFENCING:I

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    invoke-virtual {v0}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->updateCache()Z

    return-void
.end method

.method public setMinDistanceParameter(F)Z
    .locals 3
    .parameter "distance"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/high16 v0, -0x4080

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    const/high16 p1, 0x43fa

    .end local p1
    :cond_1
    sput p1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mDistanceParameter:F

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "geofencingDistance"

    sget v2, Lcom/android/server/enterprise/geofencing/GeofenceService;->mDistanceParameter:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->startMonitoring()V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMinTimeParameter(J)Z
    .locals 4
    .parameter "time"

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const-wide/16 p1, 0xbb8

    .end local p1
    :cond_1
    sput-wide p1, Lcom/android/server/enterprise/geofencing/GeofenceService;->mTimeParameter:J

    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "geofencingTime"

    sget-wide v2, Lcom/android/server/enterprise/geofencing/GeofenceService;->mTimeParameter:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->startMonitoring()V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public startGeofencing()Z
    .locals 3

    .prologue
    const-string v1, "GeofenceService"

    const-string v2, "startGeofencing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    iget-object v1, v1, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->mGeofenceList:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, message:Landroid/os/Message;
    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x1

    .end local v0           #message:Landroid/os/Message;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopGeofencing()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "GeofenceService"

    const-string v3, "stopGeofencing"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->enforceGeofencingPermission()I

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->isGeofencingEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationManager:Landroid/location/LocationManager;

    sget-object v3, Lcom/android/server/enterprise/geofencing/GeofenceService;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    sput v1, Lcom/android/server/enterprise/geofencing/GeofenceService;->STARTED_GEOFENCING:I

    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "geofencing"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public systemReady()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService;->mCache:Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;

    invoke-virtual {v0}, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingCache;->updateCache()Z

    return-void
.end method
