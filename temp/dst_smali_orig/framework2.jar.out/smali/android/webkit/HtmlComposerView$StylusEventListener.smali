.class Landroid/webkit/HtmlComposerView$StylusEventListener;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnStylusButtonEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StylusEventListener"
.end annotation


# instance fields
.field private final DELTA:I

.field private mDirLTR:Z

.field private mMaxX:F

.field private mPressed:Z

.field private mStartX:F

.field private mStartY:F

.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method private constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iput-object p1, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mDirLTR:Z

    iput v1, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mStartX:F

    iput v1, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mStartY:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mPressed:Z

    iput v1, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    const/16 v0, 0xf

    iput v0, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->DELTA:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/HtmlComposerView;Landroid/webkit/HtmlComposerView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/webkit/HtmlComposerView$StylusEventListener;-><init>(Landroid/webkit/HtmlComposerView;)V

    return-void
.end method


# virtual methods
.method public onStylusButtonEvent(Landroid/view/MotionEvent;I)V
    .locals 13
    .parameter "event"
    .parameter "clipboardId"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/high16 v8, 0x4170

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .local v0, action:I
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget-boolean v5, v5, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "HtmlComposerView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onStylusButtonEvent action = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    if-eq v5, v12, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-array v4, v12, [I

    .local v4, offsetThisWindow:[I
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, htmlcomposer_rect:Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    aget v6, v4, v10

    sub-int v2, v5, v6

    .local v2, local_X:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    aget v6, v4, v9

    sub-int v3, v5, v6

    .local v3, local_Y:I
    if-eqz v1, :cond_3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v4, 0x0

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mStartY:F

    iput-boolean v9, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mPressed:Z

    iput v11, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    iget-object v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iput v2, v5, Landroid/webkit/HtmlComposerView;->mLocalStartX:I

    iget-object v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iput v3, v5, Landroid/webkit/HtmlComposerView;->mLocalStartY:I

    goto :goto_0

    :pswitch_1
    iget-boolean v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mPressed:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget-boolean v5, v5, Landroid/webkit/HtmlComposerView;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string v5, "HtmlComposerView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TextSelection is canceled mPressed = ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mPressed:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iput v2, v5, Landroid/webkit/HtmlComposerView;->mLocalEndX:I

    iget-object v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iput v3, v5, Landroid/webkit/HtmlComposerView;->mLocalEndY:I

    iget-object v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    :cond_5
    iget-object v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget-object v6, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget v6, v6, Landroid/webkit/HtmlComposerView;->mLocalStartX:I

    iget-object v7, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget v7, v7, Landroid/webkit/HtmlComposerView;->mLocalStartY:I

    iget-object v8, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget v8, v8, Landroid/webkit/HtmlComposerView;->mLocalEndX:I

    iget-object v9, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    iget v9, v9, Landroid/webkit/HtmlComposerView;->mLocalEndY:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/webkit/HtmlComposerView;->selectBWStartAndEnd(IIII)V

    iget-object v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v5, v10}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    iput-boolean v10, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    :pswitch_2
    iget-boolean v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mPressed:Z

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    cmpl-float v5, v5, v11

    if-nez v5, :cond_7

    iget v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    iget v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    add-float/2addr v6, v8

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    iput-boolean v9, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mDirLTR:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    goto/16 :goto_0

    :cond_6
    iget v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    iget v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mStartX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    add-float/2addr v6, v8

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    iput-boolean v10, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mDirLTR:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    goto/16 :goto_0

    :cond_7
    iget-boolean v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mDirLTR:Z

    if-eqz v5, :cond_9

    iget v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    goto/16 :goto_0

    :cond_8
    iget v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    add-float/2addr v6, v8

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    const-string v5, "HtmlComposerView"

    const-string v6, "TextSelection is canceled because of wrong X position, DirLTR"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    :cond_9
    iget-boolean v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mDirLTR:Z

    if-nez v5, :cond_1

    iget v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    goto/16 :goto_0

    :cond_a
    iget v5, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mMaxX:F

    add-float/2addr v5, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    const-string v5, "HtmlComposerView"

    const-string v6, "TextSelection is canceled because of wrong X position, DirRTL"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    :pswitch_3
    iput-boolean v10, p0, Landroid/webkit/HtmlComposerView$StylusEventListener;->mPressed:Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
