.class Lcom/android/internal/telephony/cat/DtmfString;
.super Ljava/lang/Object;
.source "CatService.java"


# instance fields
.field public dtfmString:Ljava/lang/String;

.field public dtmfStringLength:I

.field public pointer:I


# direct methods
.method constructor <init>(I[B)V
    .locals 1
    .parameter "dtmfStringLength"
    .parameter "dtfmString"

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p1, p0, Lcom/android/internal/telephony/cat/DtmfString;->dtmfStringLength:I

    .line 192
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/DtmfString;->dtfmString:Ljava/lang/String;

    .line 193
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    .line 194
    return-void
.end method
