.class public Lcom/android/settings/DataUsageSummary$CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/DataUsageSummary$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChangeItem:Lcom/android/settings/DataUsageSummary$CycleChangeItem;

.field private mChangePossible:Z

.field private mChangeVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1787
    const v0, 0x1090008

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 1781
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 1782
    iput-boolean v1, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 1788
    const v0, 0x1090009

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1789
    new-instance v0, Lcom/android/settings/DataUsageSummary$CycleChangeItem;

    invoke-direct {v0, p1}, Lcom/android/settings/DataUsageSummary$CycleChangeItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/settings/DataUsageSummary$CycleChangeItem;

    .line 1790
    return-void
.end method

.method private updateChange()V
    .locals 1

    .prologue
    .line 1803
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/settings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 1804
    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    if-eqz v0, :cond_0

    .line 1805
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangeItem:Lcom/android/settings/DataUsageSummary$CycleChangeItem;

    invoke-virtual {p0, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1807
    :cond_0
    return-void
.end method


# virtual methods
.method public findNearestPosition(Lcom/android/settings/DataUsageSummary$CycleItem;)I
    .locals 4
    .parameter "target"

    .prologue
    .line 1814
    if-eqz p1, :cond_2

    .line 1815
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 1816
    .local v0, count:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 1817
    invoke-virtual {p0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/DataUsageSummary$CycleItem;

    .line 1818
    .local v2, item:Lcom/android/settings/DataUsageSummary$CycleItem;
    instance-of v3, v2, Lcom/android/settings/DataUsageSummary$CycleChangeItem;

    if-eqz v3, :cond_1

    .line 1816
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1820
    :cond_1
    invoke-virtual {v2, p1}, Lcom/android/settings/DataUsageSummary$CycleItem;->compareTo(Lcom/android/settings/DataUsageSummary$CycleItem;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1825
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #item:Lcom/android/settings/DataUsageSummary$CycleItem;
    :goto_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public setChangePossible(Z)V
    .locals 0
    .parameter "possible"

    .prologue
    .line 1793
    iput-boolean p1, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangePossible:Z

    .line 1794
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 1795
    return-void
.end method

.method public setChangeVisible(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 1798
    iput-boolean p1, p0, Lcom/android/settings/DataUsageSummary$CycleAdapter;->mChangeVisible:Z

    .line 1799
    invoke-direct {p0}, Lcom/android/settings/DataUsageSummary$CycleAdapter;->updateChange()V

    .line 1800
    return-void
.end method
