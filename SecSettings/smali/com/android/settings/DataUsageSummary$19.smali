.class Lcom/android/settings/DataUsageSummary$19;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 1690
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$19;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 1

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$19;->this$0:Lcom/android/settings/DataUsageSummary;

    #calls: Lcom/android/settings/DataUsageSummary;->updateDetailData()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$2400(Lcom/android/settings/DataUsageSummary;)V

    .line 1695
    return-void
.end method

.method public onLimitChanged()V
    .locals 3

    .prologue
    .line 1704
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$19;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$19;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$2300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v1

    #calls: Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->access$1400(Lcom/android/settings/DataUsageSummary;J)V

    .line 1705
    return-void
.end method

.method public onWarningChanged()V
    .locals 3

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$19;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$19;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$2300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v1

    #calls: Lcom/android/settings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->access$1700(Lcom/android/settings/DataUsageSummary;J)V

    .line 1700
    return-void
.end method

.method public requestLimitEdit()V
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$19;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    .line 1715
    return-void
.end method

.method public requestWarningEdit()V
    .locals 1

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$19;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/settings/DataUsageSummary;)V

    .line 1710
    return-void
.end method
