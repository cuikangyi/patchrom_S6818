.class Lcom/android/settings/motion2013/SMotionGuideHub$2;
.super Ljava/lang/Object;
.source "SMotionGuideHub.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2013/SMotionGuideHub;->showMotionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2013/SMotionGuideHub;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2013/SMotionGuideHub;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 586
    const-string v0, "SMotionGuideHub"

    const-string v1, "showMotionDialog, positive click"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    #getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionDBItem:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$000(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 588
    iget-object v0, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    iget-object v1, p0, Lcom/android/settings/motion2013/SMotionGuideHub$2;->this$0:Lcom/android/settings/motion2013/SMotionGuideHub;

    #getter for: Lcom/android/settings/motion2013/SMotionGuideHub;->mMotionType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$200(Lcom/android/settings/motion2013/SMotionGuideHub;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/settings/motion2013/SMotionGuideHub;->startTryActually(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/motion2013/SMotionGuideHub;->access$300(Lcom/android/settings/motion2013/SMotionGuideHub;Ljava/lang/String;)V

    .line 589
    return-void
.end method
