.class public Lcom/android/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# static fields
.field static final DIVIDER_PADDING_ON_LANDSCAPE:I = 0x6

.field static final DIVIDER_PADDING_ON_VERTICAL:I = 0xa

.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mIsParentThemeDeviceDefault:Z

.field private mLandscapeDividerPadding:I

.field private mMaxItemHeight:I

.field private mMeasuredExtraWidth:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMinCellSize:I

.field private mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z

.field private mTWOriginalLeftPadding:I

.field private mTWOriginalRightPadding:I

.field private mVerticalDividerPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    .local v1, density:F
    const/high16 v4, 0x4260

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    const/high16 v4, 0x4080

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    sget-object v4, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v5, 0x10102ce

    invoke-virtual {p1, p2, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v4, 0x4

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v4, Lcom/android/internal/R$styleable;->View:[I

    const v5, 0x10102d8

    invoke-virtual {p1, p2, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v4, 0xe

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mTWOriginalLeftPadding:I

    const/16 v4, 0x10

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mTWOriginalRightPadding:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .local v2, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x10103ff

    invoke-virtual {v4, v5, v2, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v2, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_0

    iput-boolean v7, p0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    :cond_0
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v3, v4, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .local v3, smallestScreenWidthDp:I
    const/16 v4, 0x258

    if-ge v3, v4, :cond_1

    const/high16 v4, 0x40c0

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mLandscapeDividerPadding:I

    const/high16 v4, 0x4120

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mVerticalDividerPadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mLandscapeDividerPadding:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    .end local v3           #smallestScreenWidthDp:I
    :cond_1
    :goto_0
    return-void

    .restart local v3       #smallestScreenWidthDp:I
    :cond_2
    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mVerticalDividerPadding:I

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    goto :goto_0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 13
    .parameter "child"
    .parameter "cellSize"
    .parameter "cellsRemaining"
    .parameter "parentHeightMeasureSpec"
    .parameter "parentHeightPadding"

    .prologue
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .local v8, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    sub-int v2, v11, p4

    .local v2, childHeightSize:I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .local v1, childHeightMode:I
    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .local v3, childHeightSpec:I
    instance-of v11, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v11, :cond_3

    move-object v11, p0

    check-cast v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v7, v11

    .local v7, itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v6, 0x1

    .local v6, hasText:Z
    :goto_1
    const/4 v0, 0x0

    .local v0, cellsUsed:I
    if-lez p2, :cond_2

    if-eqz v6, :cond_0

    const/4 v11, 0x2

    if-lt p2, v11, :cond_2

    :cond_0
    mul-int v11, p1, p2

    const/high16 v12, -0x8000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .local v4, childWidthSpec:I
    invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .local v9, measuredWidth:I
    div-int v0, v9, p1

    rem-int v11, v9, p1

    if-eqz v11, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    if-eqz v6, :cond_2

    const/4 v11, 0x2

    if-ge v0, v11, :cond_2

    const/4 v0, 0x2

    .end local v4           #childWidthSpec:I
    .end local v9           #measuredWidth:I
    :cond_2
    iget-boolean v11, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    .local v5, expandable:Z
    :goto_2
    iput-boolean v5, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    iput v0, v8, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v10, v0, p1

    .local v10, targetWidth:I
    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V

    return v0

    .end local v0           #cellsUsed:I
    .end local v5           #expandable:Z
    .end local v6           #hasText:Z
    .end local v7           #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v10           #targetWidth:I
    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    .restart local v7       #itemView:Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .restart local v0       #cellsUsed:I
    .restart local v6       #hasText:Z
    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private onMeasureExactFormat(II)V
    .locals 42
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .local v17, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v37

    .local v37, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .local v19, heightSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v39

    add-int v36, v38, v39

    .local v36, widthPadding:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v39

    add-int v18, v38, v39

    .local v18, heightPadding:I
    const/high16 v38, 0x4000

    move/from16 v0, v17

    move/from16 v1, v38

    if-ne v0, v1, :cond_0

    sub-int v38, v19, v18

    const/high16 v39, 0x4000

    invoke-static/range {v38 .. v39}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    .local v22, itemHeightSpec:I
    :goto_0
    sub-int v37, v37, v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v4, v37, v38

    .local v4, cellCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    rem-int v6, v37, v38

    .local v6, cellSizeRemaining:I
    if-nez v4, :cond_1

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    :goto_1
    return-void

    .end local v4           #cellCount:I
    .end local v6           #cellSizeRemaining:I
    .end local v22           #itemHeightSpec:I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    move/from16 v38, v0

    sub-int v39, v19, v18

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->min(II)I

    move-result v38

    const/high16 v39, -0x8000

    invoke-static/range {v38 .. v39}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v22

    goto :goto_0

    .restart local v4       #cellCount:I
    .restart local v6       #cellSizeRemaining:I
    .restart local v22       #itemHeightSpec:I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v38, v0

    div-int v39, v6, v4

    add-int v5, v38, v39

    .local v5, cellSize:I
    move v8, v4

    .local v8, cellsRemaining:I
    const/16 v25, 0x0

    .local v25, maxChildHeight:I
    const/16 v24, 0x0

    .local v24, maxCellsUsed:I
    const/4 v14, 0x0

    .local v14, expandableItemCount:I
    const/16 v34, 0x0

    .local v34, visibleItemCount:I
    const/16 v16, 0x0

    .local v16, hasOverflow:Z
    const-wide/16 v32, 0x0

    .local v32, smallestItemsAt:J
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    .local v12, childCount:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_2
    move/from16 v0, v20

    if-ge v0, v12, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .local v11, child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v38

    const/16 v39, 0x8

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    :cond_3
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    .local v21, isGeneratedItem:Z
    add-int/lit8 v34, v34, 0x1

    if-eqz v21, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .local v23, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v21, :cond_8

    move-object/from16 v38, v11

    check-cast v38, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v38 .. v38}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v38

    if-eqz v38, :cond_8

    const/16 v38, 0x1

    :goto_4
    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    move/from16 v38, v0

    if-eqz v38, :cond_5

    move/from16 v0, v21

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    :cond_5
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_9

    const/4 v7, 0x1

    .local v7, cellsAvailable:I
    :goto_5
    move/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .local v9, cellsUsed:I
    move/from16 v0, v24

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v24

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-eqz v38, :cond_6

    add-int/lit8 v14, v14, 0x1

    :cond_6
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_7

    const/16 v16, 0x1

    :cond_7
    sub-int/2addr v8, v9

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v38

    move/from16 v0, v25

    move/from16 v1, v38

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v25

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v9, v0, :cond_2

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    goto/16 :goto_3

    .end local v7           #cellsAvailable:I
    .end local v9           #cellsUsed:I
    :cond_8
    const/16 v38, 0x0

    goto :goto_4

    :cond_9
    move v7, v8

    goto :goto_5

    .end local v11           #child:Landroid/view/View;
    .end local v21           #isGeneratedItem:Z
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_a
    if-eqz v16, :cond_c

    const/16 v38, 0x2

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_c

    const/4 v10, 0x1

    .local v10, centerSingleExpandedItem:Z
    :goto_6
    const/16 v30, 0x0

    .local v30, needsExpansion:Z
    :goto_7
    if-lez v14, :cond_10

    if-lez v8, :cond_10

    const v26, 0x7fffffff

    .local v26, minCells:I
    const-wide/16 v27, 0x0

    .local v27, minCellsAt:J
    const/16 v29, 0x0

    .local v29, minCellsItemCount:I
    const/16 v20, 0x0

    :goto_8
    move/from16 v0, v20

    if-ge v0, v12, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v38, v0

    if-nez v38, :cond_d

    :cond_b
    :goto_9
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .end local v10           #centerSingleExpandedItem:Z
    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v26           #minCells:I
    .end local v27           #minCellsAt:J
    .end local v29           #minCellsItemCount:I
    .end local v30           #needsExpansion:Z
    :cond_c
    const/4 v10, 0x0

    goto :goto_6

    .restart local v10       #centerSingleExpandedItem:Z
    .restart local v11       #child:Landroid/view/View;
    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v26       #minCells:I
    .restart local v27       #minCellsAt:J
    .restart local v29       #minCellsItemCount:I
    .restart local v30       #needsExpansion:Z
    :cond_d
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v26, v0

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v27, v0

    const/16 v29, 0x1

    goto :goto_9

    :cond_e
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_b

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v27, v27, v38

    add-int/lit8 v29, v29, 0x1

    goto :goto_9

    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_f
    or-long v32, v32, v27

    move/from16 v0, v29

    if-le v0, v8, :cond_15

    .end local v26           #minCells:I
    .end local v27           #minCellsAt:J
    .end local v29           #minCellsItemCount:I
    :cond_10
    if-nez v16, :cond_1a

    const/16 v38, 0x1

    move/from16 v0, v34

    move/from16 v1, v38

    if-ne v0, v1, :cond_1a

    const/16 v31, 0x1

    .local v31, singleItem:Z
    :goto_a
    if-lez v8, :cond_22

    const-wide/16 v38, 0x0

    cmp-long v38, v32, v38

    if-eqz v38, :cond_22

    add-int/lit8 v38, v34, -0x1

    move/from16 v0, v38

    if-lt v8, v0, :cond_11

    if-nez v31, :cond_11

    const/16 v38, 0x1

    move/from16 v0, v24

    move/from16 v1, v38

    if-le v0, v1, :cond_22

    :cond_11
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I

    move-result v38

    move/from16 v0, v38

    int-to-float v13, v0

    .local v13, expandCount:F
    if-nez v31, :cond_13

    const-wide/16 v38, 0x1

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_12

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_12

    const/high16 v38, 0x3f00

    sub-float v13, v13, v38

    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_12
    const/16 v38, 0x1

    add-int/lit8 v39, v12, -0x1

    shl-int v38, v38, v39

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-eqz v38, :cond_13

    add-int/lit8 v38, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_13

    const/high16 v38, 0x3f00

    sub-float v13, v13, v38

    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_13
    const/16 v38, 0x0

    cmpl-float v38, v13, v38

    if-lez v38, :cond_1b

    mul-int v38, v8, v5

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    div-float v38, v38, v13

    move/from16 v0, v38

    float-to-int v15, v0

    .local v15, extraPixels:I
    :goto_b
    const/16 v20, 0x0

    :goto_c
    move/from16 v0, v20

    if-ge v0, v12, :cond_21

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v32

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_1c

    :cond_14
    :goto_d
    add-int/lit8 v20, v20, 0x1

    goto :goto_c

    .end local v13           #expandCount:F
    .end local v15           #extraPixels:I
    .end local v31           #singleItem:Z
    .restart local v26       #minCells:I
    .restart local v27       #minCellsAt:J
    .restart local v29       #minCellsItemCount:I
    :cond_15
    add-int/lit8 v26, v26, 0x1

    const/16 v20, 0x0

    :goto_e
    move/from16 v0, v20

    if-ge v0, v12, :cond_19

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    and-long v38, v38, v27

    const-wide/16 v40, 0x0

    cmp-long v38, v38, v40

    if-nez v38, :cond_17

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    move/from16 v0, v38

    move/from16 v1, v26

    if-ne v0, v1, :cond_16

    const/16 v38, 0x1

    shl-int v38, v38, v20

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    or-long v32, v32, v38

    :cond_16
    :goto_f
    add-int/lit8 v20, v20, 0x1

    goto :goto_e

    :cond_17
    if-eqz v10, :cond_18

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-eqz v38, :cond_18

    const/16 v38, 0x1

    move/from16 v0, v38

    if-ne v8, v0, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    move/from16 v38, v0

    if-nez v38, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v38, v0

    add-int v38, v38, v5

    const/16 v39, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v40, v0

    const/16 v41, 0x0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_18
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    add-int/lit8 v8, v8, -0x1

    goto :goto_f

    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_19
    const/16 v30, 0x1

    goto/16 :goto_7

    .end local v26           #minCells:I
    .end local v27           #minCellsAt:J
    .end local v29           #minCellsItemCount:I
    :cond_1a
    const/16 v31, 0x0

    goto/16 :goto_a

    .restart local v13       #expandCount:F
    .restart local v31       #singleItem:Z
    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_b

    .restart local v15       #extraPixels:I
    :cond_1c
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v38, v0

    if-eqz v38, :cond_1e

    move-object/from16 v0, v23

    iput v15, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v20, :cond_1d

    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v38, v0

    if-nez v38, :cond_1d

    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_1d
    const/16 v30, 0x1

    goto/16 :goto_d

    :cond_1e
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v38, v0

    if-eqz v38, :cond_1f

    move-object/from16 v0, v23

    iput v15, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    const/16 v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    neg-int v0, v15

    move/from16 v38, v0

    div-int/lit8 v38, v38, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/16 v30, 0x1

    goto/16 :goto_d

    :cond_1f
    if-eqz v20, :cond_20

    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_20
    add-int/lit8 v38, v12, -0x1

    move/from16 v0, v20

    move/from16 v1, v38

    if-eq v0, v1, :cond_14

    div-int/lit8 v38, v15, 0x2

    move/from16 v0, v38

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_d

    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_21
    const/4 v8, 0x0

    .end local v13           #expandCount:F
    .end local v15           #extraPixels:I
    :cond_22
    if-eqz v30, :cond_24

    const/16 v20, 0x0

    :goto_10
    move/from16 v0, v20

    if-ge v0, v12, :cond_24

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .restart local v11       #child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .restart local v23       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v38, v0

    if-nez v38, :cond_23

    :goto_11
    add-int/lit8 v20, v20, 0x1

    goto :goto_10

    :cond_23
    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v38, v0

    mul-int v38, v38, v5

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v39, v0

    add-int v35, v38, v39

    .local v35, width:I
    const/high16 v38, 0x4000

    move/from16 v0, v35

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v38

    move/from16 v0, v38

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_11

    .end local v11           #child:Landroid/view/View;
    .end local v23           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v35           #width:I
    :cond_24
    const/high16 v38, 0x4000

    move/from16 v0, v17

    move/from16 v1, v38

    if-eq v0, v1, :cond_25

    move/from16 v19, v25

    :cond_25
    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    mul-int v38, v8, v5

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView;->mMeasuredExtraWidth:I

    goto/16 :goto_1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .local v0, params:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .parameter "p"

    .prologue
    instance-of v1, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local p1
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;)V

    .local v0, result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .end local v0           #result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_0
    :goto_0
    return-object v0

    .restart local p1
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_0
.end method

.method public generateOverflowButtonLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .local v0, result:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .parameter "childIndex"

    .prologue
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .local v1, childBefore:Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, child:Landroid/view/View;
    const/4 v2, 0x0

    .local v2, result:Z
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-nez v3, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v1           #childBefore:Landroid/view/View;
    invoke-interface {v1}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_2
    if-lez p1, :cond_3

    instance-of v3, v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_3

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v0           #child:Landroid/view/View;
    invoke-interface {v0}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_3
    return v2
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .parameter "menu"

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .parameter "item"

    .prologue
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mIsParentThemeDeviceDefault:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-ge v1, v2, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mLandscapeDividerPadding:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v4, 0x10102ce

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    :cond_1
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isSubMenuShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateSubMenu()V

    :cond_2
    return-void

    .end local v0           #a:Landroid/content/res/TypedArray;
    :cond_3
    iget v1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mVerticalDividerPadding:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setDividerPadding(I)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 30
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    move/from16 v28, v0

    if-nez v28, :cond_1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .local v6, childCount:I
    add-int v28, p3, p5

    div-int/lit8 v14, v28, 0x2

    .local v14, midVertical:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getDividerWidth()I

    move-result v7

    .local v7, dividerWidth:I
    const/16 v17, 0x0

    .local v17, overflowWidth:I
    const/16 v16, 0x0

    .local v16, nonOverflowWidth:I
    const/4 v15, 0x0

    .local v15, nonOverflowCount:I
    sub-int v28, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v29

    sub-int v27, v28, v29

    .local v27, widthRemaining:I
    const/4 v8, 0x0

    .local v8, hasOverflow:Z
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v6, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .local v25, v:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .local v18, p:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v28

    if-eqz v28, :cond_3

    add-int v17, v17, v7

    :cond_3
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .local v9, height:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v28

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v29

    sub-int v28, v28, v29

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v29, v0

    sub-int v19, v28, v29

    .local v19, r:I
    sub-int v11, v19, v17

    .local v11, l:I
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .local v24, t:I
    add-int v5, v24, v9

    .local v5, b:I
    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v19

    invoke-virtual {v0, v11, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    sub-int v27, v27, v17

    const/4 v8, 0x1

    goto :goto_2

    .end local v5           #b:I
    .end local v9           #height:I
    .end local v11           #l:I
    .end local v19           #r:I
    .end local v24           #t:I
    :cond_4
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v28

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v29, v0

    add-int v20, v28, v29

    .local v20, size:I
    add-int v16, v16, v20

    sub-int v27, v27, v20

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v28

    if-eqz v28, :cond_5

    add-int v16, v16, v7

    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .end local v18           #p:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v20           #size:I
    .end local v25           #v:Landroid/view/View;
    :cond_6
    const/16 v28, 0x1

    move/from16 v0, v28

    if-ne v6, v0, :cond_7

    if-nez v8, :cond_7

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .restart local v25       #v:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    .local v26, width:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .restart local v9       #height:I
    sub-int v28, p4, p2

    div-int/lit8 v13, v28, 0x2

    .local v13, midHorizontal:I
    div-int/lit8 v28, v26, 0x2

    sub-int v11, v13, v28

    .restart local v11       #l:I
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .restart local v24       #t:I
    add-int v28, v11, v26

    add-int v29, v24, v9

    move-object/from16 v0, v25

    move/from16 v1, v24

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .end local v9           #height:I
    .end local v11           #l:I
    .end local v13           #midHorizontal:I
    .end local v24           #t:I
    .end local v25           #v:Landroid/view/View;
    .end local v26           #width:I
    :cond_7
    if-eqz v8, :cond_9

    const/16 v28, 0x0

    :goto_3
    sub-int v21, v15, v28

    .local v21, spacerCount:I
    const/16 v29, 0x0

    if-lez v21, :cond_a

    div-int v28, v27, v21

    :goto_4
    move/from16 v0, v29

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v22

    .local v22, spacerSize:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v23

    .local v23, startLeft:I
    const/4 v10, 0x0

    :goto_5
    if-ge v10, v6, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v25

    .restart local v25       #v:Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .local v12, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v28

    const/16 v29, 0x8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    iget-boolean v0, v12, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v28, v0

    if-eqz v28, :cond_b

    :cond_8
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .end local v12           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v21           #spacerCount:I
    .end local v22           #spacerSize:I
    .end local v23           #startLeft:I
    .end local v25           #v:Landroid/view/View;
    :cond_9
    const/16 v28, 0x1

    goto :goto_3

    .restart local v21       #spacerCount:I
    :cond_a
    const/16 v28, 0x0

    goto :goto_4

    .restart local v12       #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v22       #spacerSize:I
    .restart local v23       #startLeft:I
    .restart local v25       #v:Landroid/view/View;
    :cond_b
    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v28, v0

    add-int v23, v23, v28

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    .restart local v26       #width:I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .restart local v9       #height:I
    div-int/lit8 v28, v9, 0x2

    sub-int v24, v14, v28

    .restart local v24       #t:I
    add-int v28, v23, v26

    add-int v29, v24, v9

    move-object/from16 v0, v25

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget v0, v12, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v28, v0

    add-int v28, v28, v26

    add-int v28, v28, v22

    add-int v23, v23, v28

    goto :goto_6
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .local v4, wasFormatted:Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x4000

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    iput v8, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .local v5, widthSize:I
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    :goto_1
    return-void

    .end local v5           #widthSize:I
    :cond_2
    move v6, v8

    goto :goto_0

    .restart local v5       #widthSize:I
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v1, :cond_6

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .local v3, lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    instance-of v6, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-nez v6, :cond_4

    iget-boolean v6, v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v6, :cond_5

    :cond_4
    iget v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mTWOriginalLeftPadding:I

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuView;->mTWOriginalRightPadding:I

    invoke-virtual {v0, v6, v8, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v0           #child:Landroid/view/View;
    .end local v3           #lp:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .parameter "reserveOverflow"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return-void
.end method

.method public setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .parameter "presenter"

    .prologue
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    return-void
.end method
