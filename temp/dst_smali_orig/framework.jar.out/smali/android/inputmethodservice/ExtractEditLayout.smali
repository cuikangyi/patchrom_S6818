.class public Landroid/inputmethodservice/ExtractEditLayout;
.super Landroid/widget/LinearLayout;
.source "ExtractEditLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
    }
.end annotation


# instance fields
.field mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

.field mEditButton:Landroid/widget/Button;

.field mExtractActionButton:Landroid/widget/Button;

.field private mIME:Landroid/inputmethodservice/InputMethodService;

.field mMenuPopupHelper:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Landroid/inputmethodservice/ExtractEditLayout;)Landroid/inputmethodservice/InputMethodService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mIME:Landroid/inputmethodservice/InputMethodService;

    return-object v0
.end method


# virtual methods
.method public finishActionMode()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public isActionModeStarted()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x10202cd

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/ExtractEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mExtractActionButton:Landroid/widget/Button;

    const v0, 0x10202ce

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/ExtractEditLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    new-instance v1, Landroid/inputmethodservice/ExtractEditLayout$1;

    invoke-direct {v1, p0}, Landroid/inputmethodservice/ExtractEditLayout$1;-><init>(Landroid/inputmethodservice/ExtractEditLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setIME(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter "ime"

    .prologue
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditLayout;->mIME:Landroid/inputmethodservice/InputMethodService;

    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .parameter "sourceView"
    .parameter "cb"

    .prologue
    new-instance v0, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    invoke-direct {v0, p0, p2}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;-><init>(Landroid/inputmethodservice/ExtractEditLayout;Landroid/view/ActionMode$Callback;)V

    .local v0, mode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;->invalidate()V

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout;->mExtractActionButton:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Landroid/inputmethodservice/ExtractEditLayout;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->refreshDrawableState()V

    iput-object v0, p0, Landroid/inputmethodservice/ExtractEditLayout;->mActionMode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/ExtractEditLayout;->sendAccessibilityEvent(I)V

    .end local v0           #mode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
    :goto_0
    return-object v0

    .restart local v0       #mode:Landroid/inputmethodservice/ExtractEditLayout$ExtractActionMode;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
