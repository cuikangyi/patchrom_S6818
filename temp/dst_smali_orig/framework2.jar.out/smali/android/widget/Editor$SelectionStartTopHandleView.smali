.class Landroid/widget/Editor$SelectionStartTopHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionStartTopHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    iput-object p1, p0, Landroid/widget/Editor$SelectionStartTopHandleView;->this$0:Landroid/widget/Editor;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private isHandleViewScreenOut()Z
    .locals 4

    .prologue
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartTopHandleView;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    .local v1, positionListener:Landroid/widget/Editor$PositionListener;
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .local v0, iconSize:I
    iget v2, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    invoke-virtual {v1}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected calculateForSwitchingCursor()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    .local v0, bSwitchCursor:Z
    iput-boolean v3, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    invoke-direct {p0}, Landroid/widget/Editor$SelectionStartTopHandleView;->isHandleViewScreenOut()Z

    move-result v4

    if-eqz v4, :cond_0

    iput-boolean v2, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    :cond_0
    iget-boolean v4, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    if-eq v0, v4, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartTopHandleView;->updateDrawable()V

    iget-object v3, p0, Landroid/widget/Editor$SelectionStartTopHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .local v1, layout:Landroid/text/Layout;
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartTopHandleView;->getCurrentCursorOffset()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    const/high16 v4, 0x3f00

    sub-float/2addr v3, v4

    iget v4, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget v3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    iget-object v4, p0, Landroid/widget/Editor$SelectionStartTopHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$HandleView;->mPositionX:I

    .end local v1           #layout:Landroid/text/Layout;
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public getActionPopupWindow()Landroid/widget/Editor$ActionPopupWindow;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$HandleView;->mActionPopupWindow:Landroid/widget/Editor$ActionPopupWindow;

    return-object v0
.end method

.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartTopHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 1
    .parameter "offset"
    .parameter "parentScrolled"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    iget-object v0, p0, Landroid/widget/Editor$SelectionStartTopHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v0}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/Editor$HandleView;->mIsDragging:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartTopHandleView;->calculateForSwitchingCursor()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$HandleView;->mPositionHasChanged:Z

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public refreshForSwitchingCursor()Z
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/widget/Editor$SelectionStartTopHandleView;->isHandleViewScreenOut()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartTopHandleView;->getCurrentCursorOffset()I

    move-result v0

    .local v0, oldCursorOffset:I
    iget-object v1, p0, Landroid/widget/Editor$SelectionStartTopHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    const/4 v1, 0x1

    .end local v0           #oldCursorOffset:I
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 4

    .prologue
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartTopHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v3}, Landroid/widget/Editor;->access$2100(Landroid/widget/Editor;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-super {p0}, Landroid/widget/Editor$HandleView;->updateDrawable()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartTopHandleView;->getCurrentCursorOffset()I

    move-result v1

    .local v1, offset:I
    iget-object v2, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .local v2, oldDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/Editor$SelectionStartTopHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .local v0, isRtlCharAtOffset:Z
    iget-boolean v3, p0, Landroid/widget/Editor$HandleView;->mbSwitchCursor:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_2
    iput-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v0}, Landroid/widget/Editor$SelectionStartTopHandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$HandleView;->mHotspotX:I

    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroid/widget/Editor$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method public updatePosition(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartTopHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .local v0, offset:I
    iget-object v2, p0, Landroid/widget/Editor$SelectionStartTopHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .local v1, selectionEnd:I
    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/widget/Editor$SelectionStartTopHandleView;->positionAtCursorOffset(IZ)V

    goto :goto_0
.end method

.method public updateSelection(I)V
    .locals 2
    .parameter "offset"

    .prologue
    iget-object v0, p0, Landroid/widget/Editor$SelectionStartTopHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionStartTopHandleView;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    invoke-virtual {p0}, Landroid/widget/Editor$SelectionStartTopHandleView;->updateDrawable()V

    return-void
.end method
