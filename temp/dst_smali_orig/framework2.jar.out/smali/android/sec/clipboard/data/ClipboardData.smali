.class public abstract Landroid/sec/clipboard/data/ClipboardData;
.super Ljava/lang/Object;
.source "ClipboardData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/sec/clipboard/data/ClipboardData;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected final LOG_LEN:I

.field protected mFormatID:I

.field private mIsProtected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/sec/clipboard/data/ClipboardData$1;

    invoke-direct {v0}, Landroid/sec/clipboard/data/ClipboardData$1;-><init>()V

    sput-object v0, Landroid/sec/clipboard/data/ClipboardData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "format"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardData;->LOG_LEN:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    iput p1, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    return-void
.end method


# virtual methods
.method public GetAlternateFormat(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 4
    .parameter "format"

    .prologue
    invoke-static {p1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .local v0, Result:Landroid/sec/clipboard/data/ClipboardData;
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ClipboardServiceEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClipBoardDataFactory.CreateClipBoardData(format) -> result == null, format == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public GetFomat()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    return v0
.end method

.method public GetProtectState()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    return v0
.end method

.method public IsAlternateformatAvailable(I)Z
    .locals 3
    .parameter "format"

    .prologue
    const/4 v1, 0x0

    .local v1, isformat:Z
    iget v2, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-static {p1}, Landroid/sec/clipboard/data/ClipboardDataFactory;->CreateClipBoardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .local v0, altData:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {p0, p1, v0}, Landroid/sec/clipboard/data/ClipboardData;->SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v1

    move v2, v1

    goto :goto_0
.end method

.method public SetAlternateFormat(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .locals 1
    .parameter "format"
    .parameter "altData"

    .prologue
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public SetProtectState(Z)V
    .locals 0
    .parameter "isProtect"

    .prologue
    iput-boolean p1, p0, Landroid/sec/clipboard/data/ClipboardData;->mIsProtected:Z

    return-void
.end method

.method public abstract clearData()V
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x0

    .local v0, Result:Z
    if-eqz p1, :cond_0

    instance-of v2, p1, Landroid/sec/clipboard/data/ClipboardData;

    if-eqz v2, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/sec/clipboard/data/ClipboardData;

    .local v1, trgData:Landroid/sec/clipboard/data/ClipboardData;
    invoke-virtual {v1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v2

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .end local v1           #trgData:Landroid/sec/clipboard/data/ClipboardData;
    :cond_0
    :goto_0
    return v0

    .restart local v1       #trgData:Landroid/sec/clipboard/data/ClipboardData;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .end local v1           #trgData:Landroid/sec/clipboard/data/ClipboardData;
    :cond_2
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract readFormSource(Landroid/os/Parcel;)V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Landroid/sec/clipboard/data/ClipboardData;->mFormatID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
