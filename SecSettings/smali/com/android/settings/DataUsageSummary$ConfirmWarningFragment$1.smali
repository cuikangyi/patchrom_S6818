.class Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;

.field final synthetic val$warningBytes:J


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;J)V
    .locals 0

    .prologue
    .line 2192
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;

    iput-wide p2, p0, Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment$1;->val$warningBytes:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2194
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment$1;->this$0:Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary;

    .line 2195
    .local v0, target:Lcom/android/settings/DataUsageSummary;
    if-eqz v0, :cond_0

    .line 2196
    iget-wide v1, p0, Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment$1;->val$warningBytes:J

    #calls: Lcom/android/settings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->access$1700(Lcom/android/settings/DataUsageSummary;J)V

    .line 2198
    :cond_0
    return-void
.end method
