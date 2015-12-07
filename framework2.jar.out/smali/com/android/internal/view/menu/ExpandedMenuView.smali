.class public final Lcom/android/internal/view/menu/ExpandedMenuView;
.super Landroid/widget/ListView;
.source "ExpandedMenuView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# instance fields
.field private isDeviceDefault:I

.field private mAnimations:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mVisibleMaxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    sget-object v2, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mAnimations:I

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 57
    .local v1, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103ff

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 58
    iget v2, v1, Landroid/util/TypedValue;->data:I

    iput v2, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->isDeviceDefault:I

    .line 60
    invoke-virtual {p0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mAnimations:I

    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 66
    iget v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->isDeviceDefault:I

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setOptionalIconsVisible(Z)V

    .line 70
    :cond_0
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/AbsListView;->onDetachedFromWindow()V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 78
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 85
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ExpandedMenuView;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 86
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 98
    iget v2, p0, Lcom/android/internal/view/menu/ExpandedMenuView;->isDeviceDefault:I

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 101
    .local v0, mMeasuredHeight:I
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 103
    .local v1, mVisibleMaxHeight:I
    if-le v0, v1, :cond_0

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 108
    .end local v0           #mMeasuredHeight:I
    .end local v1           #mVisibleMaxHeight:I
    :cond_0
    return-void
.end method
