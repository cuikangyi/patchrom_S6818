.class public Landroid/view/DragEvent;
.super Ljava/lang/Object;
.source "DragEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_DRAG_ENDED:I = 0x4

.field public static final ACTION_DRAG_ENTERED:I = 0x5

.field public static final ACTION_DRAG_EXITED:I = 0x6

.field public static final ACTION_DRAG_LOCATION:I = 0x2

.field public static final ACTION_DRAG_STARTED:I = 0x1

.field public static final ACTION_DROP:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_RECYCLED:I = 0xa

.field private static final TRACK_RECYCLED_LOCATION:Z

.field private static final gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/DragEvent;

.field private static gRecyclerUsed:I


# instance fields
.field mAction:I

.field mClipData:Landroid/content/ClipData;

.field mClipDescription:Landroid/content/ClipDescription;

.field mDragResult:Z

.field mLocalState:Ljava/lang/Object;

.field private mNext:Landroid/view/DragEvent;

.field private mRecycled:Z

.field private mRecycledLocation:Ljava/lang/RuntimeException;

.field mX:F

.field mY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Landroid/view/DragEvent;->gRecyclerUsed:I

    const/4 v0, 0x0

    sput-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    new-instance v0, Landroid/view/DragEvent$1;

    invoke-direct {v0}, Landroid/view/DragEvent$1;-><init>()V

    sput-object v0, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private init(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;Ljava/lang/Object;Z)V
    .locals 0
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "description"
    .parameter "data"
    .parameter "localState"
    .parameter "result"

    .prologue
    iput p1, p0, Landroid/view/DragEvent;->mAction:I

    iput p2, p0, Landroid/view/DragEvent;->mX:F

    iput p3, p0, Landroid/view/DragEvent;->mY:F

    iput-object p4, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object p5, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    iput-object p6, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    iput-boolean p7, p0, Landroid/view/DragEvent;->mDragResult:Z

    return-void
.end method

.method static obtain()Landroid/view/DragEvent;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v2, v1

    move-object v4, v3

    move-object v5, v3

    move v6, v0

    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;
    .locals 10
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "localState"
    .parameter "description"
    .parameter "data"
    .parameter "result"

    .prologue
    sget-object v9, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    sget-object v1, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    if-nez v1, :cond_0

    new-instance v0, Landroid/view/DragEvent;

    invoke-direct {v0}, Landroid/view/DragEvent;-><init>()V

    .local v0, ev:Landroid/view/DragEvent;
    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p3

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/view/DragEvent;->init(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;Ljava/lang/Object;Z)V

    monitor-exit v9

    move-object v8, v0

    .end local v0           #ev:Landroid/view/DragEvent;
    .local v8, ev:Ljava/lang/Object;
    :goto_0
    return-object v8

    .end local v8           #ev:Ljava/lang/Object;
    :cond_0
    sget-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    .restart local v0       #ev:Landroid/view/DragEvent;
    iget-object v1, v0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    sput-object v1, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    sget v1, Landroid/view/DragEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/DragEvent;->gRecyclerUsed:I

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/DragEvent;->mRecycledLocation:Ljava/lang/RuntimeException;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/DragEvent;->mRecycled:Z

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p3

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/view/DragEvent;->init(IFFLandroid/content/ClipDescription;Landroid/content/ClipData;Ljava/lang/Object;Z)V

    move-object v8, v0

    .restart local v8       #ev:Ljava/lang/Object;
    goto :goto_0

    .end local v0           #ev:Landroid/view/DragEvent;
    .end local v8           #ev:Ljava/lang/Object;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;
    .locals 7
    .parameter "source"

    .prologue
    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    iget v1, p0, Landroid/view/DragEvent;->mX:F

    iget v2, p0, Landroid/view/DragEvent;->mY:F

    iget-object v3, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    iget-object v4, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iget-object v5, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    iget-boolean v6, p0, Landroid/view/DragEvent;->mDragResult:Z

    invoke-static/range {v0 .. v6}, Landroid/view/DragEvent;->obtain(IFFLjava/lang/Object;Landroid/content/ClipDescription;Landroid/content/ClipData;Z)Landroid/view/DragEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    return v0
.end method

.method public getClipData()Landroid/content/ClipData;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    return-object v0
.end method

.method public getClipDescription()Landroid/content/ClipDescription;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    return-object v0
.end method

.method public getLocalState()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/view/DragEvent;->mDragResult:Z

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/DragEvent;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/DragEvent;->mY:F

    return v0
.end method

.method public isRecycled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/view/DragEvent;->mRecycled:Z

    return v0
.end method

.method public final recycle()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/view/DragEvent;->mRecycled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/DragEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/DragEvent;->mRecycled:Z

    iput-object v1, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    iput-object v1, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v1, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    sget-object v1, Landroid/view/DragEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Landroid/view/DragEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    sget v0, Landroid/view/DragEvent;->gRecyclerUsed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/DragEvent;->gRecyclerUsed:I

    sget-object v0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    iput-object v0, p0, Landroid/view/DragEvent;->mNext:Landroid/view/DragEvent;

    sput-object p0, Landroid/view/DragEvent;->gRecyclerTop:Landroid/view/DragEvent;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DragEvent{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DragEvent;->mAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DragEvent;->mX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") desc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/DragEvent;->mDragResult:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/view/DragEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/DragEvent;->mX:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/view/DragEvent;->mY:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/view/DragEvent;->mDragResult:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2
.end method
