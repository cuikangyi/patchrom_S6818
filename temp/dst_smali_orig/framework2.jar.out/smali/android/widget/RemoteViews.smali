.class public Landroid/widget/RemoteViews;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViews$2;,
        Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;,
        Landroid/widget/RemoteViews$SetLaunchPendingIntent;,
        Landroid/widget/RemoteViews$MemoryUsageCounter;,
        Landroid/widget/RemoteViews$ViewPaddingAction;,
        Landroid/widget/RemoteViews$TextViewSizeAction;,
        Landroid/widget/RemoteViews$TextViewDrawableAction;,
        Landroid/widget/RemoteViews$ViewGroupAction;,
        Landroid/widget/RemoteViews$ReflectionAction;,
        Landroid/widget/RemoteViews$BitmapReflectionAction;,
        Landroid/widget/RemoteViews$BitmapCache;,
        Landroid/widget/RemoteViews$ReflectionActionWithoutParams;,
        Landroid/widget/RemoteViews$SetDrawableParameters;,
        Landroid/widget/RemoteViews$SetOnClickPendingIntent;,
        Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;,
        Landroid/widget/RemoteViews$SetPendingIntentTemplate;,
        Landroid/widget/RemoteViews$SetOnClickFillInIntent;,
        Landroid/widget/RemoteViews$SetEmptyView;,
        Landroid/widget/RemoteViews$Action;,
        Landroid/widget/RemoteViews$OnClickHandler;,
        Landroid/widget/RemoteViews$ActionException;,
        Landroid/widget/RemoteViews$RemoteView;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler; = null

.field static final EXTRA_REMOTEADAPTER_APPWIDGET_ID:Ljava/lang/String; = "remoteAdapterAppWidgetId"

.field private static final LOG_TAG:Ljava/lang/String; = "RemoteViews"

.field private static final MODE_HAS_LANDSCAPE_AND_PORTRAIT:I = 0x1

.field private static final MODE_NORMAL:I

.field private static mIsLongClick:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isNotification:Z

.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RemoteViews$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

.field private mIsRoot:Z

.field private mIsWidgetCollectionChild:Z

.field private mLandscape:Landroid/widget/RemoteViews;

.field private final mLayoutId:I

.field private mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

.field private final mPackage:Ljava/lang/String;

.field private mPortrait:Landroid/widget/RemoteViews;

.field private stringNamesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {v0}, Landroid/widget/RemoteViews$OnClickHandler;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;

    new-instance v0, Landroid/widget/RemoteViews$1;

    invoke-direct {v0}, Landroid/widget/RemoteViews$1;-><init>()V

    sput-object v0, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 11
    .parameter "parcel"
    .parameter "bitmapCache"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v9, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    iput-object v8, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v8, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-boolean v10, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    sget-boolean v7, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v7, :cond_0

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v7, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    iput-boolean v10, p0, Landroid/widget/RemoteViews;->isNotification:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, mode:I
    if-nez p2, :cond_1

    new-instance v7, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v7, p1}, Landroid/widget/RemoteViews$BitmapCache;-><init>(Landroid/os/Parcel;)V

    iput-object v7, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    :goto_1
    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-ne v7, v9, :cond_2

    move v7, v9

    :goto_2
    iput-boolean v7, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, count:I
    if-lez v0, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v0, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, tag:I
    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v7, Landroid/widget/RemoteViews$ActionException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Tag "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v3           #mode:I
    .end local v5           #tag:I
    :cond_0
    move-object v7, v8

    goto :goto_0

    .restart local v3       #mode:I
    :cond_1
    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    invoke-virtual {p0}, Landroid/widget/RemoteViews;->setNotRoot()V

    goto :goto_1

    :cond_2
    move v7, v10

    goto :goto_2

    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v5       #tag:I
    :pswitch_1
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :pswitch_2
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetDrawableParameters;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetDrawableParameters;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_3
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$ReflectionAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_4
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$ViewGroupAction;

    iget-object v10, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v9, p0, p1, v10}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_5
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_6
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_7
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_8
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_9
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_a
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$TextViewDrawableAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_b
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_c
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$ViewPaddingAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :pswitch_d
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_e
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetLaunchPendingIntent;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetLaunchPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_f
    iget-object v7, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    new-instance v9, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    invoke-direct {v9, p0, p1}, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .end local v0           #count:I
    .end local v1           #i:I
    .end local v5           #tag:I
    :cond_3
    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v9, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v7, p1, v9}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    iput-object v7, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    new-instance v7, Landroid/widget/RemoteViews;

    iget-object v9, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v7, p1, v9}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    iput-object v7, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iget-object v7, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    iget-object v7, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v7

    iput v7, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    :cond_4
    sget-boolean v7, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v7, :cond_5

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/RemoteViews;->isNotification:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, size:I
    if-lez v4, :cond_5

    iget-object v7, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_5
    if-ge v1, v4, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, key:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, value:Ljava/lang/CharSequence;
    iget-object v7, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v7, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/CharSequence;
    .end local v4           #size:I
    .end local v6           #value:Ljava/lang/CharSequence;
    :cond_5
    new-instance v7, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v7, p0, v8}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v7, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;Landroid/widget/RemoteViews$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViews;-><init>(Landroid/os/Parcel;Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 3
    .parameter "landscape"
    .parameter "portrait"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->isNotification:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both RemoteViews must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Both RemoteViews must share the same package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    iput-object p1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object p2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    new-instance v0, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    invoke-direct {p0, p2}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter "packageName"
    .parameter "layoutId"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    iput-object v1, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    iput-object v1, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    iput-boolean v2, p0, Landroid/widget/RemoteViews;->isNotification:Z

    iput-object p1, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    iput p2, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    new-instance v0, Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {v0}, Landroid/widget/RemoteViews$BitmapCache;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    new-instance v0, Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {v0, p0, v1}, Landroid/widget/RemoteViews$MemoryUsageCounter;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$1;)V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/widget/RemoteViews;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews$BitmapCache;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    return-void
.end method

.method static synthetic access$700()Ljava/util/HashMap;
    .locals 1

    .prologue
    sget-object v0, Landroid/widget/RemoteViews;->mIsLongClick:Ljava/util/HashMap;

    return-object v0
.end method

.method private addAction(Landroid/widget/RemoteViews$Action;)V
    .locals 2
    .parameter "a"

    .prologue
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "RemoteViews specifying separate landscape and portrait layouts cannot be modified. Instead, fully configure the landscape and portrait layouts individually before constructing the combined layout."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews$Action;->updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    return-void
.end method

.method private configureRemoteViewsAsChild(Landroid/widget/RemoteViews;)V
    .locals 2
    .parameter "rv"

    .prologue
    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v1, p1, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews$BitmapCache;->assimilate(Landroid/widget/RemoteViews$BitmapCache;)V

    iget-object v0, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p1, v0}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->setNotRoot()V

    return-void
.end method

.method private getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 2
    .parameter "context"

    .prologue
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .local v0, orientation:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    .end local v0           #orientation:I
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local v0       #orientation:I
    .restart local p0
    :cond_1
    iget-object p0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    goto :goto_0
.end method

.method private hasLandscapeAndPortraitLayouts()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 4
    .parameter "v"
    .parameter "parent"
    .parameter "handler"

    .prologue
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .local v0, a:Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #a:Landroid/widget/RemoteViews$Action;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private prepareContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 6
    .parameter "context"

    .prologue
    iget-object v2, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    .local v2, packageName:Ljava/lang/String;
    if-eqz v2, :cond_0

    const/4 v3, 0x4

    :try_start_0
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, c:Landroid/content/Context;
    :goto_0
    return-object v0

    .end local v0           #c:Landroid/content/Context;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RemoteViews"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0

    .end local v0           #c:Landroid/content/Context;
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move-object v0, p1

    .restart local v0       #c:Landroid/content/Context;
    goto :goto_0
.end method

.method private recalculateMemoryUsage()V
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2}, Landroid/widget/RemoteViews$MemoryUsageCounter;->clear()V

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$Action;->updateMemoryUsageEstimate(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    iget-boolean v2, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    iget-object v2, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->estimateMemoryUsage()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$MemoryUsageCounter;->increment(I)V

    iget-object v2, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v2, v3}, Landroid/widget/RemoteViews$BitmapCache;->addBitmapMemory(Landroid/widget/RemoteViews$MemoryUsageCounter;)V

    goto :goto_1
.end method

.method private setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V
    .locals 3
    .parameter "bitmapCache"

    .prologue
    iput-object p1, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews$Action;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViews$Action;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    iget-object v2, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-direct {v2, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    iget-object v2, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-direct {v2, p1}, Landroid/widget/RemoteViews;->setBitmapCache(Landroid/widget/RemoteViews$BitmapCache;)V

    :cond_1
    return-void
.end method

.method private updateResourceMap(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    iget-object v3, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .local v1, name:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .local v2, stringName:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/res/Resources;->addNotificationString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v1           #name:Ljava/lang/CharSequence;
    .end local v2           #stringName:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(ILandroid/widget/RemoteViews;)V
    .locals 1
    .parameter "viewId"
    .parameter "nestedView"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupAction;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "parent"

    .prologue
    sget-object v0, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "parent"
    .parameter "handler"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v3

    .local v3, rvToApply:Landroid/widget/RemoteViews;
    sget-boolean v4, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/widget/RemoteViews;->isNotification:Z

    if-eqz v4, :cond_0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->updateResourceMap(Landroid/content/Context;)V

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->prepareContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .local v0, c:Landroid/content/Context;
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .local v2, result:Landroid/view/View;
    invoke-direct {v3, v2, p2, p3}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    return-object v2
.end method

.method public clone()Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    iget v4, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .local v2, that:Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, v2, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    invoke-direct {v2}, Landroid/widget/RemoteViews;->recalculateMemoryUsage()V

    return-object v2

    .end local v2           #that:Landroid/widget/RemoteViews;
    :cond_1
    iget-object v3, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    .local v0, land:Landroid/widget/RemoteViews;
    iget-object v3, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    .local v1, port:Landroid/widget/RemoteViews;
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-direct {v2, v0, v1}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .restart local v2       #that:Landroid/widget/RemoteViews;
    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public estimateMemoryUsage()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/RemoteViews;->mMemoryUsageCounter:Landroid/widget/RemoteViews$MemoryUsageCounter;

    invoke-virtual {v0}, Landroid/widget/RemoteViews$MemoryUsageCounter;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    return v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public onLoadClass(Ljava/lang/Class;)Z
    .locals 1
    .parameter "clazz"

    .prologue
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .parameter "context"
    .parameter "v"

    .prologue
    sget-object v0, Landroid/widget/RemoteViews;->DEFAULT_ON_CLICK_HANDLER:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    return-void
.end method

.method public reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 3
    .parameter "context"
    .parameter "v"
    .parameter "handler"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->getRemoteViewsToApply(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .local v0, rvToApply:Landroid/widget/RemoteViews;
    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to re-apply RemoteViews to a view that that does not share the same root layout id."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/RemoteViews;->prepareContext(Landroid/content/Context;)Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {v0, p2, v1, p3}, Landroid/widget/RemoteViews;->performApply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V

    return-void
.end method

.method public removeAllViews(I)V
    .locals 2
    .parameter "viewId"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$ViewGroupAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ViewGroupAction;-><init>(Landroid/widget/RemoteViews;ILandroid/widget/RemoteViews;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$BitmapReflectionAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$BitmapReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setBoolean(ILjava/lang/String;Z)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setBundle(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xd

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setByte(ILjava/lang/String;B)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setChar(ILjava/lang/String;C)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x8

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xa

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setChronometer(IJLjava/lang/String;Z)V
    .locals 1
    .parameter "viewId"
    .parameter "base"
    .parameter "format"
    .parameter "started"

    .prologue
    const-string v0, "setBase"

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    const-string v0, "setFormat"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setString(ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "setStarted"

    invoke-virtual {p0, p1, v0, p5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    return-void
.end method

.method public setContentDescription(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "viewId"
    .parameter "contentDescription"

    .prologue
    const-string v0, "setContentDescription"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDisplayedChild(II)V
    .locals 1
    .parameter "viewId"
    .parameter "childIndex"

    .prologue
    const-string v0, "setDisplayedChild"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setDouble(ILjava/lang/String;D)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x7

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V
    .locals 8
    .parameter "viewId"
    .parameter "targetBackground"
    .parameter "alpha"
    .parameter "colorFilter"
    .parameter "mode"
    .parameter "level"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$SetDrawableParameters;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$SetDrawableParameters;-><init>(Landroid/widget/RemoteViews;IZIILandroid/graphics/PorterDuff$Mode;I)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setEmptyView(II)V
    .locals 1
    .parameter "viewId"
    .parameter "emptyViewId"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$SetEmptyView;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetEmptyView;-><init>(Landroid/widget/RemoteViews;II)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setFloat(ILjava/lang/String;F)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x6

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "viewId"
    .parameter "bitmap"

    .prologue
    const-string v0, "setImageBitmap"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setBitmap(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setImageViewResource(II)V
    .locals 1
    .parameter "viewId"
    .parameter "srcId"

    .prologue
    const-string v0, "setImageResource"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setImageViewUri(ILandroid/net/Uri;)V
    .locals 1
    .parameter "viewId"
    .parameter "uri"

    .prologue
    const-string v0, "setImageURI"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setUri(ILjava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method public setInt(ILjava/lang/String;I)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setIntent(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xe

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method setIsWidgetCollectionChild(Z)V
    .locals 0
    .parameter "isWidgetCollectionChild"

    .prologue
    iput-boolean p1, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    return-void
.end method

.method public setLaunchPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 1
    .parameter "viewId"
    .parameter "pendingIntent"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$SetLaunchPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetLaunchPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setLong(ILjava/lang/String;J)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x5

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method setNotRoot()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    return-void
.end method

.method public setOnClickFillInIntent(ILandroid/content/Intent;)V
    .locals 1
    .parameter "viewId"
    .parameter "fillInIntent"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickFillInIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickFillInIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    .locals 1
    .parameter "viewId"
    .parameter "pendingIntent"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetOnClickPendingIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setOnLongClickPendingIntent(Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "key"
    .parameter "viewId"
    .parameter "downPendingIntent"
    .parameter "upPendingIntent"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;-><init>(Landroid/widget/RemoteViews;Landroid/os/IBinder;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setPendingIntentTemplate(ILandroid/app/PendingIntent;)V
    .locals 1
    .parameter "viewId"
    .parameter "pendingIntentTemplate"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$SetPendingIntentTemplate;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetPendingIntentTemplate;-><init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setProgressBar(IIIZ)V
    .locals 1
    .parameter "viewId"
    .parameter "max"
    .parameter "progress"
    .parameter "indeterminate"

    .prologue
    const-string v0, "setIndeterminate"

    invoke-virtual {p0, p1, v0, p4}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    if-nez p4, :cond_0

    const-string v0, "setMax"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const-string v0, "setProgress"

    invoke-virtual {p0, p1, v0, p3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setRelativeScrollPosition(II)V
    .locals 1
    .parameter "viewId"
    .parameter "offset"

    .prologue
    const-string v0, "smoothScrollByOffset"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setRemoteAdapter(IILandroid/content/Intent;)V
    .locals 0
    .parameter "appWidgetId"
    .parameter "viewId"
    .parameter "intent"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-virtual {p0, p2, p3}, Landroid/widget/RemoteViews;->setRemoteAdapter(ILandroid/content/Intent;)V

    return-void
.end method

.method public setRemoteAdapter(ILandroid/content/Intent;)V
    .locals 1
    .parameter "viewId"
    .parameter "intent"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;

    invoke-direct {v0, p0, p1, p2}, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;-><init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setScrollPosition(II)V
    .locals 1
    .parameter "viewId"
    .parameter "position"

    .prologue
    const-string v0, "smoothScrollToPosition"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setShort(ILjava/lang/String;S)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/4 v4, 0x3

    invoke-static {p3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setString(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0x9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setStringMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, inputMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    sget-boolean v0, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RemoteViews;->isNotification:Z

    iput-object p1, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public setTextColor(II)V
    .locals 1
    .parameter "viewId"
    .parameter "color"

    .prologue
    const-string v0, "setTextColor"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public setTextViewCompoundDrawables(IIIII)V
    .locals 8
    .parameter "viewId"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setTextViewCompoundDrawablesRelative(IIIII)V
    .locals 8
    .parameter "viewId"
    .parameter "start"
    .parameter "top"
    .parameter "end"
    .parameter "bottom"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$TextViewDrawableAction;

    const/4 v3, 0x1

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Landroid/widget/RemoteViews$TextViewDrawableAction;-><init>(Landroid/widget/RemoteViews;IZIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setTextViewText(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "viewId"
    .parameter "text"

    .prologue
    const-string v0, "setText"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextViewTextSize(IIF)V
    .locals 1
    .parameter "viewId"
    .parameter "units"
    .parameter "size"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$TextViewSizeAction;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/widget/RemoteViews$TextViewSizeAction;-><init>(Landroid/widget/RemoteViews;IIF)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setUri(ILjava/lang/String;Landroid/net/Uri;)V
    .locals 6
    .parameter "viewId"
    .parameter "methodName"
    .parameter "value"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$ReflectionAction;

    const/16 v4, 0xb

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/RemoteViews$ReflectionAction;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewPadding(IIIII)V
    .locals 7
    .parameter "viewId"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$ViewPaddingAction;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/RemoteViews$ViewPaddingAction;-><init>(Landroid/widget/RemoteViews;IIIII)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public setViewVisibility(II)V
    .locals 1
    .parameter "viewId"
    .parameter "visibility"

    .prologue
    const-string v0, "setVisibility"

    invoke-virtual {p0, p1, v0, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    return-void
.end method

.method public showNext(I)V
    .locals 2
    .parameter "viewId"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    const-string v1, "showNext"

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public showPrevious(I)V
    .locals 2
    .parameter "viewId"

    .prologue
    new-instance v0, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;

    const-string v1, "showPrevious"

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/RemoteViews$ReflectionActionWithoutParams;-><init>(Landroid/widget/RemoteViews;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews;->addAction(Landroid/widget/RemoteViews$Action;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Landroid/widget/RemoteViews;->hasLandscapeAndPortraitLayouts()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v8, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v8, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    :cond_0
    iget-object v8, p0, Landroid/widget/RemoteViews;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v8, p0, Landroid/widget/RemoteViews;->mLayoutId:I

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v8, p0, Landroid/widget/RemoteViews;->mIsWidgetCollectionChild:Z

    if-eqz v8, :cond_1

    :goto_0
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v6, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, count:I
    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_5

    iget-object v6, p0, Landroid/widget/RemoteViews;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$Action;

    .local v0, a:Landroid/widget/RemoteViews$Action;
    invoke-virtual {v0, p1, v7}, Landroid/widget/RemoteViews$Action;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #a:Landroid/widget/RemoteViews$Action;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_1
    move v6, v7

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .restart local v1       #count:I
    goto :goto_1

    .end local v1           #count:I
    :cond_3
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v6, p0, Landroid/widget/RemoteViews;->mIsRoot:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/widget/RemoteViews;->mBitmapCache:Landroid/widget/RemoteViews$BitmapCache;

    invoke-virtual {v6, p1, p2}, Landroid/widget/RemoteViews$BitmapCache;->writeBitmapsToParcel(Landroid/os/Parcel;I)V

    :cond_4
    iget-object v6, p0, Landroid/widget/RemoteViews;->mLandscape:Landroid/widget/RemoteViews;

    invoke-virtual {v6, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v6, p0, Landroid/widget/RemoteViews;->mPortrait:Landroid/widget/RemoteViews;

    invoke-virtual {v6, p1, p2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_5
    sget-boolean v6, Landroid/os/Build;->IS_SYSTEM_SECURE:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Landroid/widget/RemoteViews;->isNotification:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    iget-object v6, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v5

    .local v5, size:I
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v6, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .local v4, key:Ljava/lang/CharSequence;
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Landroid/widget/RemoteViews;->stringNamesMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_3

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #key:Ljava/lang/CharSequence;
    .end local v5           #size:I
    :cond_6
    return-void
.end method
