.class Landroid/widget/VideoView$6;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 6
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 477
    iget-object v4, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mSurfaceWidth:I
    invoke-static {v4, p3}, Landroid/widget/VideoView;->access$1002(Landroid/widget/VideoView;I)I

    .line 478
    iget-object v4, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mSurfaceHeight:I
    invoke-static {v4, p4}, Landroid/widget/VideoView;->access$1102(Landroid/widget/VideoView;I)I

    .line 479
    iget-object v4, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move v1, v2

    .line 480
    .local v1, isValidState:Z
    :goto_0
    iget-object v4, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v4

    if-ne v4, p3, :cond_3

    iget-object v4, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v4

    if-ne v4, p4, :cond_3

    move v0, v2

    .line 481
    .local v0, hasValidSize:Z
    :goto_1
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v2}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 482
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    iget-object v3, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v3}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->seekTo(I)V

    .line 485
    :cond_0
    iget-object v2, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 487
    :cond_1
    return-void

    .end local v0           #hasValidSize:Z
    .end local v1           #isValidState:Z
    :cond_2
    move v1, v3

    .line 479
    goto :goto_0

    .restart local v1       #isValidState:Z
    :cond_3
    move v0, v3

    .line 480
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 491
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #setter for: Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, p1}, Landroid/widget/VideoView;->access$1902(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 492
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #calls: Landroid/widget/VideoView;->openVideo()V
    invoke-static {v0}, Landroid/widget/VideoView;->access$2000(Landroid/widget/VideoView;)V

    .line 493
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 498
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$1902(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 499
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    #getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 500
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView$6;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x1

    #calls: Landroid/widget/VideoView;->release(Z)V
    invoke-static {v0, v1}, Landroid/widget/VideoView;->access$2100(Landroid/widget/VideoView;Z)V

    .line 501
    return-void
.end method
