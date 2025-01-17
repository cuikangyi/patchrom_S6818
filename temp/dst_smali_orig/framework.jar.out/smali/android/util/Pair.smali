.class public Landroid/util/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/Pair;,"Landroid/util/Pair<TF;TS;>;"
    .local p1, first:Ljava/lang/Object;,"TF;"
    .local p2, second:Ljava/lang/Object;,"TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iput-object p2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(TA;TB;)",
            "Landroid/util/Pair",
            "<TA;TB;>;"
        }
    .end annotation

    .prologue
    .local p0, a:Ljava/lang/Object;,"TA;"
    .local p1, b:Ljava/lang/Object;,"TB;"
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "o"

    .prologue
    .local p0, this:Landroid/util/Pair;,"Landroid/util/Pair<TF;TS;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    instance-of v5, p1, Landroid/util/Pair;

    if-nez v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/util/Pair;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, other:Landroid/util/Pair;,"Landroid/util/Pair<TF;TS;>;"
    iget-object v5, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v6, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    .end local v2           #other:Landroid/util/Pair;,"Landroid/util/Pair<TF;TS;>;"
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/ClassCastException;
    move v3, v4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .local p0, this:Landroid/util/Pair;,"Landroid/util/Pair<TF;TS;>;"
    const/16 v0, 0x11

    .local v0, result:I
    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    return v0
.end method
