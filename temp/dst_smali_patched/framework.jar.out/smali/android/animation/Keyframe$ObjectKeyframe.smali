.class Landroid/animation/Keyframe$ObjectKeyframe;
.super Landroid/animation/Keyframe;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObjectKeyframe"
.end annotation


# instance fields
.field mValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(FLjava/lang/Object;)V
    .locals 1
    .parameter "fraction"
    .parameter "value"

    .prologue
    invoke-direct {p0}, Landroid/animation/Keyframe;-><init>()V

    iput p1, p0, Landroid/animation/Keyframe;->mFraction:F

    iput-object p2, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/animation/Keyframe;->mHasValue:Z

    iget-boolean v0, p0, Landroid/animation/Keyframe;->mHasValue:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroid/animation/Keyframe;->mValueType:Ljava/lang/Class;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-class v0, Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public clone()Landroid/animation/Keyframe$ObjectKeyframe;
    .locals 3

    .prologue
    new-instance v0, Landroid/animation/Keyframe$ObjectKeyframe;

    invoke-virtual {p0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    iget-object v2, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Landroid/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    .local v0, kfClone:Landroid/animation/Keyframe$ObjectKeyframe;
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframe;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/animation/Keyframe$ObjectKeyframe;->clone()Landroid/animation/Keyframe$ObjectKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/animation/Keyframe$ObjectKeyframe;->clone()Landroid/animation/Keyframe$ObjectKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .parameter "value"

    .prologue
    iput-object p1, p0, Landroid/animation/Keyframe$ObjectKeyframe;->mValue:Ljava/lang/Object;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/animation/Keyframe;->mHasValue:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
