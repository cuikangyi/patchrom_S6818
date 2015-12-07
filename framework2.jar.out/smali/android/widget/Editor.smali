.class public Landroid/widget/Editor;
.super Ljava/lang/Object;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$InputMethodState;,
        Landroid/widget/Editor$InputContentType;,
        Landroid/widget/Editor$ErrorPopup;,
        Landroid/widget/Editor$CorrectionHighlighter;,
        Landroid/widget/Editor$SelectionModifierCursorController;,
        Landroid/widget/Editor$InsertionPointCursorController;,
        Landroid/widget/Editor$CursorController;,
        Landroid/widget/Editor$SelectionStartTopHandleView;,
        Landroid/widget/Editor$SelectionEndHandleView;,
        Landroid/widget/Editor$SelectionStartHandleView;,
        Landroid/widget/Editor$InsertionHandleView;,
        Landroid/widget/Editor$HandleView;,
        Landroid/widget/Editor$ActionPopupWindow;,
        Landroid/widget/Editor$SelectionActionModeCallback;,
        Landroid/widget/Editor$SuggestionsPopupWindow;,
        Landroid/widget/Editor$PinnedPopupWindow;,
        Landroid/widget/Editor$PositionListener;,
        Landroid/widget/Editor$EasyEditPopupWindow;,
        Landroid/widget/Editor$EasyEditSpanController;,
        Landroid/widget/Editor$DragLocalState;,
        Landroid/widget/Editor$Blink;,
        Landroid/widget/Editor$TextViewPositionListener;
    }
.end annotation


# static fields
.field static final BLINK:I = 0x1f4

.field private static DRAG_SHADOW_MAX_TEXT_LENGTH:I = 0x0

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Editor"

.field private static final TEMP_POSITION:[F

.field private static TOP_LINE:I


# instance fields
.field private mActionModeMenu:Landroid/view/Menu;

.field mBlink:Landroid/widget/Editor$Blink;

.field mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

.field mCreatedWithASelection:Z

.field mCursorCount:I

.field final mCursorDrawable:[Landroid/graphics/drawable/Drawable;

.field mCursorVisible:Z

.field mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

.field private mDeviceDPI:I

.field mDiscardNextActionUp:Z

.field private mEasyEditSpanController:Landroid/widget/Editor$EasyEditSpanController;

.field mError:Ljava/lang/CharSequence;

.field mErrorPopup:Landroid/widget/Editor$ErrorPopup;

.field mErrorWasChanged:Z

.field mFrozenWithFocus:Z

.field mIgnoreActionUpEvent:Z

.field mInBatchEditControllers:Z

.field mInputContentType:Landroid/widget/Editor$InputContentType;

.field mInputMethodState:Landroid/widget/Editor$InputMethodState;

.field mInputType:I

.field mInsertionControllerEnabled:Z

.field mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

.field mKeyListener:Landroid/text/method/KeyListener;

.field mLastDownPositionX:F

.field mLastDownPositionY:F

.field private mPositionListener:Landroid/widget/Editor$PositionListener;

.field mPreserveDetachedSelection:Z

.field mSelectAllOnFocus:Z

.field private mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleLeftTop:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectHandleRightTop:Landroid/graphics/drawable/Drawable;

.field mSelectionActionMode:Landroid/view/ActionMode;

.field mSelectionControllerEnabled:Z

.field mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

.field mSelectionMoved:Z

.field mShowCursor:J

.field mShowErrorAfterAttach:Z

.field mShowSoftInputOnFocus:Z

.field mShowSuggestionRunnable:Ljava/lang/Runnable;

.field mSpellChecker:Landroid/widget/SpellChecker;

.field mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

.field mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

.field private mTempRect:Landroid/graphics/Rect;

.field mTemporaryDetach:Z

.field mTextDisplayLists:[Landroid/view/DisplayList;

.field mTextIsSelectable:Z

.field private mTextView:Landroid/widget/TextView;

.field private mThemeIsDeviceDefault:Z

.field mTouchFocusSelected:Z

.field mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Landroid/widget/Editor;->TEMP_POSITION:[F

    .line 132
    const/16 v0, 0x14

    sput v0, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    .line 4748
    const/4 v0, 0x0

    sput v0, Landroid/widget/Editor;->TOP_LINE:I

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 6
    .parameter "textView"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput v5, p0, Landroid/widget/Editor;->mInputType:I

    .line 162
    iput-boolean v4, p0, Landroid/widget/Editor;->mCursorVisible:Z

    .line 178
    iput-boolean v4, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    .line 186
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    .line 4747
    iput-boolean v5, p0, Landroid/widget/Editor;->mThemeIsDeviceDefault:Z

    .line 225
    iput-object p1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 228
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 229
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v2, p0, Landroid/widget/Editor;->mDeviceDPI:I

    .line 233
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 234
    .local v1, outValue:Landroid/util/TypedValue;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10103ff

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 235
    iget v2, v1, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 236
    iput-boolean v4, p0, Landroid/widget/Editor;->mThemeIsDeviceDefault:Z

    .line 293
    :goto_0
    return-void

    .line 238
    :cond_0
    iput-boolean v5, p0, Landroid/widget/Editor;->mThemeIsDeviceDefault:Z

    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/Editor;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    invoke-direct {p0, p1}, Landroid/widget/Editor;->isOffsetVisible(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/Editor;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$2000(Landroid/widget/Editor;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    return-void
.end method

.method static synthetic access$2100(Landroid/widget/Editor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-boolean v0, p0, Landroid/widget/Editor;->mThemeIsDeviceDefault:Z

    return v0
.end method

.method static synthetic access$2202(Landroid/widget/Editor;Landroid/view/Menu;)Landroid/view/Menu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/widget/Editor;->mActionModeMenu:Landroid/view/Menu;

    return-object p1
.end method

.method static synthetic access$2300(Landroid/widget/Editor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideSuggestionSpan()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/Editor;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionVisible(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/Editor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    return-void
.end method

.method static synthetic access$2700(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2802(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$2900(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3000(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleLeftTop:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3002(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleLeftTop:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3100(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/widget/Editor;->mSelectHandleRightTop:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$3102(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 127
    iput-object p1, p0, Landroid/widget/Editor;->mSelectHandleRightTop:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$3200(Landroid/widget/Editor;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/widget/Editor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/Editor;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/Editor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v0

    return v0
.end method

.method private canSelectText()Z
    .locals 1

    .prologue
    .line 707
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12
    .parameter "pop"
    .parameter "text"
    .parameter "tv"

    .prologue
    .line 672
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 673
    .local v11, wid:I
    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 675
    .local v8, ht:I
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 677
    .local v3, defaultWidthInPixels:I
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 679
    .local v0, l:Landroid/text/Layout;
    const/4 v10, 0x0

    .line 680
    .local v10, max:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_0

    .line 681
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 680
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 688
    :cond_0
    float-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 689
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 690
    return-void
.end method

.method private downgradeEasyCorrectionSpans()V
    .locals 8

    .prologue
    .line 1108
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1109
    .local v4, text:Ljava/lang/CharSequence;
    instance-of v5, v4, Landroid/text/Spannable;

    if-eqz v5, :cond_1

    move-object v2, v4

    .line 1110
    check-cast v2, Landroid/text/Spannable;

    .line 1111
    .local v2, spannable:Landroid/text/Spannable;
    const/4 v5, 0x0

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v5, v6, v7}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/SuggestionSpan;

    .line 1113
    .local v3, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 1114
    aget-object v5, v3, v1

    invoke-virtual {v5}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v0

    .line 1115
    .local v0, flags:I
    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    and-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_0

    .line 1117
    and-int/lit8 v0, v0, -0x2

    .line 1118
    aget-object v5, v3, v1

    invoke-virtual {v5, v0}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 1113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1122
    .end local v0           #flags:I
    .end local v1           #i:I
    .end local v2           #spannable:Landroid/text/Spannable;
    .end local v3           #suggestionSpans:[Landroid/text/style/SuggestionSpan;
    :cond_1
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;I)V
    .locals 4
    .parameter "canvas"
    .parameter "cursorOffsetVertical"

    .prologue
    const/4 v3, 0x0

    .line 1578
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 1579
    .local v1, translate:Z
    :goto_0
    if-eqz v1, :cond_0

    int-to-float v2, p2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1580
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v2, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ge v0, v2, :cond_2

    .line 1581
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1580
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1578
    .end local v0           #i:I
    .end local v1           #translate:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1583
    .restart local v0       #i:I
    .restart local v1       #translate:Z
    :cond_2
    if-eqz v1, :cond_3

    neg-int v2, p2

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1584
    :cond_3
    return-void
.end method

.method private drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 33
    .parameter "canvas"
    .parameter "layout"
    .parameter "highlight"
    .parameter "highlightPaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 1465
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v25

    .line 1466
    .local v25, lineRange:J
    invoke-static/range {v25 .. v26}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v9

    .line 1467
    .local v9, firstLine:I
    invoke-static/range {v25 .. v26}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    .line 1468
    .local v10, lastLine:I
    if-gez v10, :cond_1

    .line 1552
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    .line 1470
    invoke-virtual/range {v4 .. v10}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 1473
    move-object/from16 v0, p2

    instance-of v4, v0, Landroid/text/DynamicLayout;

    if-eqz v4, :cond_a

    .line 1474
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    if-nez v4, :cond_2

    .line 1475
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealObjectArraySize(I)I

    move-result v4

    new-array v4, v4, [Landroid/view/DisplayList;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    :cond_2
    move-object/from16 v19, p2

    .line 1478
    check-cast v19, Landroid/text/DynamicLayout;

    .line 1479
    .local v19, dynamicLayout:Landroid/text/DynamicLayout;
    invoke-virtual/range {v19 .. v19}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v14

    .line 1480
    .local v14, blockEndLines:[I
    invoke-virtual/range {v19 .. v19}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v16

    .line 1481
    .local v16, blockIndices:[I
    invoke-virtual/range {v19 .. v19}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v29

    .line 1483
    .local v29, numberOfBlocks:I
    const/16 v20, -0x1

    .line 1484
    .local v20, endOfPreviousBlock:I
    const/16 v31, 0x0

    .line 1485
    .local v31, searchStartIndex:I
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    .line 1486
    aget v13, v14, v22

    .line 1487
    .local v13, blockEndLine:I
    aget v15, v16, v22

    .line 1489
    .local v15, blockIndex:I
    const/4 v4, -0x1

    if-ne v15, v4, :cond_5

    const/16 v17, 0x1

    .line 1490
    .local v17, blockIsInvalid:Z
    :goto_2
    if-eqz v17, :cond_3

    .line 1491
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v29

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Editor;->getAvailableDisplayListIndex([III)I

    move-result v15

    .line 1494
    aput v15, v16, v22

    .line 1495
    add-int/lit8 v31, v15, 0x1

    .line 1498
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    aget-object v12, v4, v15

    .line 1499
    .local v12, blockDisplayList:Landroid/view/DisplayList;
    if-nez v12, :cond_6

    .line 1500
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getHardwareRenderer()Landroid/view/HardwareRenderer;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Text "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/HardwareRenderer;->createDisplayList(Ljava/lang/String;)Landroid/view/DisplayList;

    move-result-object v12

    .end local v12           #blockDisplayList:Landroid/view/DisplayList;
    aput-object v12, v4, v15

    .line 1506
    .restart local v12       #blockDisplayList:Landroid/view/DisplayList;
    :cond_4
    :goto_3
    invoke-virtual {v12}, Landroid/view/DisplayList;->isValid()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1507
    add-int/lit8 v11, v20, 0x1

    .line 1508
    .local v11, blockBeginLine:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v32

    .line 1509
    .local v32, top:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v18

    .line 1510
    .local v18, bottom:I
    const/16 v23, 0x0

    .line 1511
    .local v23, left:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v30

    .line 1512
    .local v30, right:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1513
    const v28, 0x7f7fffff

    .line 1514
    .local v28, min:F
    const/16 v27, 0x1

    .line 1515
    .local v27, max:F
    move/from16 v24, v11

    .local v24, line:I
    :goto_4
    move/from16 v0, v24

    if-gt v0, v13, :cond_7

    .line 1516
    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v4

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v28

    .line 1517
    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    move/from16 v0, v27

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v27

    .line 1515
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 1489
    .end local v11           #blockBeginLine:I
    .end local v12           #blockDisplayList:Landroid/view/DisplayList;
    .end local v17           #blockIsInvalid:Z
    .end local v18           #bottom:I
    .end local v23           #left:I
    .end local v24           #line:I
    .end local v27           #max:F
    .end local v28           #min:F
    .end local v30           #right:I
    .end local v32           #top:I
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_2

    .line 1503
    .restart local v12       #blockDisplayList:Landroid/view/DisplayList;
    .restart local v17       #blockIsInvalid:Z
    :cond_6
    if-eqz v17, :cond_4

    invoke-virtual {v12}, Landroid/view/DisplayList;->invalidate()V

    goto :goto_3

    .line 1519
    .restart local v11       #blockBeginLine:I
    .restart local v18       #bottom:I
    .restart local v23       #left:I
    .restart local v24       #line:I
    .restart local v27       #max:F
    .restart local v28       #min:F
    .restart local v30       #right:I
    .restart local v32       #top:I
    :cond_7
    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v23, v0

    .line 1520
    const/high16 v4, 0x3f00

    add-float v4, v4, v27

    float-to-int v0, v4

    move/from16 v30, v0

    .line 1523
    .end local v24           #line:I
    .end local v27           #max:F
    .end local v28           #min:F
    :cond_8
    invoke-virtual {v12}, Landroid/view/DisplayList;->start()Landroid/view/HardwareCanvas;

    move-result-object v21

    .line 1526
    .local v21, hardwareCanvas:Landroid/view/HardwareCanvas;
    sub-int v4, v30, v23

    sub-int v5, v18, v32

    :try_start_0
    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->setViewport(II)V

    .line 1528
    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)I

    .line 1531
    move/from16 v0, v23

    neg-int v4, v0

    int-to-float v4, v4

    move/from16 v0, v32

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1532
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11, v13}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1535
    invoke-virtual/range {v21 .. v21}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 1536
    invoke-virtual {v12}, Landroid/view/DisplayList;->end()V

    .line 1537
    move/from16 v0, v23

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v18

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 1539
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Landroid/view/DisplayList;->setClipChildren(Z)V

    .end local v11           #blockBeginLine:I
    .end local v18           #bottom:I
    .end local v21           #hardwareCanvas:Landroid/view/HardwareCanvas;
    .end local v23           #left:I
    .end local v30           #right:I
    .end local v32           #top:I
    :cond_9
    move-object/from16 v4, p1

    .line 1543
    check-cast v4, Landroid/view/HardwareCanvas;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v12, v5, v6}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;Landroid/graphics/Rect;I)I

    .line 1546
    move/from16 v20, v13

    .line 1485
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_1

    .line 1535
    .restart local v11       #blockBeginLine:I
    .restart local v18       #bottom:I
    .restart local v21       #hardwareCanvas:Landroid/view/HardwareCanvas;
    .restart local v23       #left:I
    .restart local v30       #right:I
    .restart local v32       #top:I
    :catchall_0
    move-exception v4

    invoke-virtual/range {v21 .. v21}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 1536
    invoke-virtual {v12}, Landroid/view/DisplayList;->end()V

    .line 1537
    move/from16 v0, v23

    move/from16 v1, v32

    move/from16 v2, v30

    move/from16 v3, v18

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/view/DisplayList;->setLeftTopRightBottom(IIII)V

    .line 1539
    const/4 v5, 0x0

    invoke-virtual {v12, v5}, Landroid/view/DisplayList;->setClipChildren(Z)V

    .line 1535
    throw v4

    .line 1550
    .end local v11           #blockBeginLine:I
    .end local v12           #blockDisplayList:Landroid/view/DisplayList;
    .end local v13           #blockEndLine:I
    .end local v14           #blockEndLines:[I
    .end local v15           #blockIndex:I
    .end local v16           #blockIndices:[I
    .end local v17           #blockIsInvalid:Z
    .end local v18           #bottom:I
    .end local v19           #dynamicLayout:Landroid/text/DynamicLayout;
    .end local v20           #endOfPreviousBlock:I
    .end local v21           #hardwareCanvas:Landroid/view/HardwareCanvas;
    .end local v22           #i:I
    .end local v23           #left:I
    .end local v29           #numberOfBlocks:I
    .end local v30           #right:I
    .end local v31           #searchStartIndex:I
    .end local v32           #top:I
    :cond_a
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v10}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    goto/16 :goto_0
.end method

.method private extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 8
    .parameter "request"
    .parameter "partialStartOffset"
    .parameter "partialEndOffset"
    .parameter "delta"
    .parameter "outText"

    .prologue
    const/4 v6, 0x0

    .line 1280
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1281
    .local v1, content:Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    .line 1282
    const/4 v7, -0x2

    if-eq p2, v7, :cond_c

    .line 1283
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1284
    .local v0, N:I
    if-gez p2, :cond_4

    .line 1285
    const/4 v7, -0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1286
    const/4 p2, 0x0

    .line 1287
    move p3, v0

    .line 1320
    :cond_0
    :goto_0
    iget v7, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_b

    .line 1321
    invoke-interface {v1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1332
    .end local v0           #N:I
    :goto_1
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1333
    const/16 v7, 0x800

    invoke-static {v1, v7}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 1334
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1336
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1337
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1339
    :cond_2
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 1340
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 1341
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 1342
    const/4 v6, 0x1

    .line 1344
    :cond_3
    return v6

    .line 1291
    .restart local v0       #N:I
    :cond_4
    add-int/2addr p3, p4

    .line 1293
    instance-of v7, v1, Landroid/text/Spanned;

    if-eqz v7, :cond_7

    move-object v4, v1

    .line 1294
    check-cast v4, Landroid/text/Spanned;

    .line 1295
    .local v4, spanned:Landroid/text/Spanned;
    const-class v7, Landroid/text/ParcelableSpan;

    invoke-interface {v4, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 1297
    .local v5, spans:[Ljava/lang/Object;
    array-length v2, v5

    .line 1298
    .local v2, i:I
    :cond_5
    :goto_2
    if-lez v2, :cond_7

    .line 1299
    add-int/lit8 v2, v2, -0x1

    .line 1300
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 1301
    .local v3, j:I
    if-ge v3, p2, :cond_6

    move p2, v3

    .line 1302
    :cond_6
    aget-object v7, v5, v2

    invoke-interface {v4, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 1303
    if-le v3, p3, :cond_5

    move p3, v3

    goto :goto_2

    .line 1306
    .end local v2           #i:I
    .end local v3           #j:I
    .end local v4           #spanned:Landroid/text/Spanned;
    .end local v5           #spans:[Ljava/lang/Object;
    :cond_7
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1307
    sub-int v7, p3, p4

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1309
    if-le p2, v0, :cond_9

    .line 1310
    move p2, v0

    .line 1314
    :cond_8
    :goto_3
    if-le p3, v0, :cond_a

    .line 1315
    move p3, v0

    goto :goto_0

    .line 1311
    :cond_9
    if-gez p2, :cond_8

    .line 1312
    const/4 p2, 0x0

    goto :goto_3

    .line 1316
    :cond_a
    if-gez p3, :cond_0

    .line 1317
    const/4 p3, 0x0

    goto :goto_0

    .line 1324
    :cond_b
    invoke-static {v1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1328
    .end local v0           #N:I
    :cond_c
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1329
    iput v6, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 1330
    const-string v7, ""

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private extractedTextModeWillBeStarted()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1715
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v2, v2, Landroid/inputmethodservice/ExtractEditText;

    if-nez v2, :cond_0

    .line 1716
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1717
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 1719
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return v1
.end method

.method private getAvailableDisplayListIndex([III)I
    .locals 8
    .parameter "blockIndices"
    .parameter "numberOfBlocks"
    .parameter "searchStartIndex"

    .prologue
    const/4 v7, 0x0

    .line 1556
    iget-object v6, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    array-length v4, v6

    .line 1557
    .local v4, length:I
    move v2, p3

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 1558
    const/4 v0, 0x0

    .line 1559
    .local v0, blockIndexFound:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, p2, :cond_0

    .line 1560
    aget v6, p1, v3

    if-ne v6, v2, :cond_1

    .line 1561
    const/4 v0, 0x1

    .line 1565
    :cond_0
    if-eqz v0, :cond_3

    .line 1557
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1559
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1570
    .end local v0           #blockIndexFound:Z
    .end local v3           #j:I
    :cond_2
    add-int/lit8 v6, v4, 0x1

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    .line 1571
    .local v5, newSize:I
    new-array v1, v5, [Landroid/view/DisplayList;

    .line 1572
    .local v1, displayLists:[Landroid/view/DisplayList;
    iget-object v6, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    invoke-static {v6, v7, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1573
    iput-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    move v2, v4

    .line 1574
    .end local v1           #displayLists:[Landroid/view/DisplayList;
    .end local v2           #i:I
    .end local v5           #newSize:I
    :cond_3
    return v2
.end method

.method private getCharRange(I)J
    .locals 7
    .parameter "offset"

    .prologue
    .line 820
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 821
    .local v4, textLength:I
    add-int/lit8 v5, p1, 0x1

    if-ge v5, v4, :cond_0

    .line 822
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 823
    .local v0, currentChar:C
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, 0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 824
    .local v1, nextChar:C
    invoke-static {v0, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 825
    add-int/lit8 v5, p1, 0x2

    invoke-static {p1, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    .line 841
    .end local v0           #currentChar:C
    .end local v1           #nextChar:C
    :goto_0
    return-wide v5

    .line 828
    :cond_0
    if-ge p1, v4, :cond_1

    .line 829
    add-int/lit8 v5, p1, 0x1

    invoke-static {p1, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    .line 831
    :cond_1
    add-int/lit8 v5, p1, -0x2

    if-ltz v5, :cond_2

    .line 832
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 833
    .local v2, previousChar:C
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    add-int/lit8 v6, p1, -0x2

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 834
    .local v3, previousPreviousChar:C
    invoke-static {v3, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 835
    add-int/lit8 v5, p1, -0x2

    invoke-static {v5, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    .line 838
    .end local v2           #previousChar:C
    .end local v3           #previousPreviousChar:C
    :cond_2
    add-int/lit8 v5, p1, -0x1

    if-ltz v5, :cond_3

    .line 839
    add-int/lit8 v5, p1, -0x1

    invoke-static {v5, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0

    .line 841
    :cond_3
    invoke-static {p1, p1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    goto :goto_0
.end method

.method private getErrorX()I
    .locals 5

    .prologue
    .line 476
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 478
    .local v1, scale:F
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v2, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 479
    .local v0, dr:Landroid/widget/TextView$Drawables;
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int v3, v2, v3

    if-eqz v0, :cond_0

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :goto_0
    div-int/lit8 v2, v2, 0x2

    sub-int v2, v3, v2

    const/high16 v3, 0x41c8

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getErrorY()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 492
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    .line 493
    .local v0, compoundPaddingTop:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v5, v7

    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v7

    sub-int/2addr v5, v7

    sub-int v4, v5, v0

    .line 496
    .local v4, vspace:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, v5, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 497
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_1

    iget v5, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_0
    sub-int v5, v4, v5

    div-int/lit8 v5, v5, 0x2

    add-int v2, v0, v5

    .line 504
    .local v2, icontop:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v3, v5, Landroid/util/DisplayMetrics;->density:F

    .line 505
    .local v3, scale:F
    if-eqz v1, :cond_0

    iget v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :cond_0
    add-int v5, v2, v6

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    const/high16 v6, 0x4000

    mul-float/2addr v6, v3

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    sub-int/2addr v5, v6

    return v5

    .end local v2           #icontop:I
    .end local v3           #scale:F
    :cond_1
    move v5, v6

    .line 497
    goto :goto_0
.end method

.method private getLastTapPosition()I
    .locals 2

    .prologue
    .line 1135
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_1

    .line 1136
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 1137
    .local v0, lastTapPosition:I
    if-ltz v0, :cond_1

    .line 1139
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1140
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 1146
    .end local v0           #lastTapPosition:I
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getLastTouchOffsets()J
    .locals 5

    .prologue
    .line 989
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 990
    .local v2, selectionController:Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 991
    .local v1, minOffset:I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 992
    .local v0, maxOffset:I
    invoke-static {v1, v0}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v3

    return-wide v3
.end method

.method private getPositionListener()Landroid/widget/Editor$PositionListener;
    .locals 2

    .prologue
    .line 867
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-nez v0, :cond_0

    .line 868
    new-instance v0, Landroid/widget/Editor$PositionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$PositionListener;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    .line 870
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    return-object v0
.end method

.method private getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;I)F
    .locals 1
    .parameter "layout"
    .parameter "hintLayout"
    .parameter "offset"

    .prologue
    .line 1655
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1658
    invoke-virtual {p2, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    .line 1660
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_0
.end method

.method private getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;
    .locals 7
    .parameter "text"

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 1945
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10900f7

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1948
    .local v0, shadowView:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 1949
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unable to inflate text drag thumbnail"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1952
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sget v3, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    if-le v2, v3, :cond_1

    .line 1953
    sget v2, Landroid/widget/Editor;->DRAG_SHADOW_MAX_TEXT_LENGTH:I

    invoke-interface {p1, v5, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1955
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1956
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1958
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1959
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 1961
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1964
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1965
    .local v1, size:I
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1967
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 1968
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1969
    new-instance v2, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v2, v0}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-object v2
.end method

.method private hasPasswordTransformationMethod()Z
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hideCursorControllers()V
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 588
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 590
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 591
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 592
    return-void
.end method

.method private hideError()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 464
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 465
    return-void
.end method

.method private hideInsertionPointCursorController()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->hide()V

    .line 569
    :cond_0
    return-void
.end method

.method private hideSpanControllers()V
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Landroid/widget/Editor;->mEasyEditSpanController:Landroid/widget/Editor$EasyEditSpanController;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Landroid/widget/Editor;->mEasyEditSpanController:Landroid/widget/Editor$EasyEditSpanController;

    invoke-virtual {v0}, Landroid/widget/Editor$EasyEditSpanController;->hide()V

    .line 583
    :cond_0
    return-void
.end method

.method private isCursorInsideEasyCorrectionSpan()Z
    .locals 6

    .prologue
    .line 1739
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 1740
    .local v1, spannable:Landroid/text/Spannable;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/SuggestionSpan;

    .line 1742
    .local v2, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 1743
    aget-object v3, v2, v0

    invoke-virtual {v3}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 1744
    const/4 v3, 0x1

    .line 1747
    :goto_1
    return v3

    .line 1742
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1747
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isCursorInsideSuggestionSpan()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1726
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1727
    .local v1, text:Ljava/lang/CharSequence;
    instance-of v3, v1, Landroid/text/Spannable;

    if-nez v3, :cond_1

    .line 1731
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return v2

    .line 1729
    .restart local v1       #text:Ljava/lang/CharSequence;
    :cond_1
    check-cast v1, Landroid/text/Spannable;

    .end local v1           #text:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    const-class v5, Landroid/text/style/SuggestionSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 1731
    .local v0, suggestionSpans:[Landroid/text/style/SuggestionSpan;
    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isOffsetVisible(I)Z
    .locals 6
    .parameter "offset"

    .prologue
    .line 919
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 921
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_0

    .line 922
    const/4 v4, 0x0

    .line 928
    :goto_0
    return v4

    .line 925
    :cond_0
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 926
    .local v1, line:I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    .line 927
    .local v2, lineBottom:I
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v3, v4

    .line 928
    .local v3, primaryHorizontal:I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v5, v2

    invoke-direct {p0, v4, v5}, Landroid/widget/Editor;->isPositionVisible(II)Z

    move-result v4

    goto :goto_0
.end method

.method private isPositionOnText(FF)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 936
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 937
    .local v0, layout:Landroid/text/Layout;
    if-nez v0, :cond_1

    .line 944
    :cond_0
    :goto_0
    return v2

    .line 939
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v1

    .line 940
    .local v1, line:I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result p1

    .line 942
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_0

    .line 943
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    cmpl-float v3, p1, v3

    if-gtz v3, :cond_0

    .line 944
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isPositionVisible(II)Z
    .locals 11
    .parameter "positionX"
    .parameter "positionY"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 879
    sget-object v6, Landroid/widget/Editor;->TEMP_POSITION:[F

    monitor-enter v6

    .line 880
    :try_start_0
    sget-object v2, Landroid/widget/Editor;->TEMP_POSITION:[F

    .line 881
    .local v2, position:[F
    const/4 v7, 0x0

    int-to-float v8, p1

    aput v8, v2, v7

    .line 882
    const/4 v7, 0x1

    int-to-float v8, p2

    aput v8, v2, v7

    .line 883
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    .line 885
    .local v3, view:Landroid/view/View;
    :goto_0
    if-eqz v3, :cond_5

    .line 886
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    if-eq v3, v7, :cond_0

    .line 888
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 889
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v8, v9

    aput v8, v2, v7

    .line 892
    :cond_0
    const/4 v7, 0x0

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    cmpg-float v7, v7, v10

    if-ltz v7, :cond_1

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_1

    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 894
    :cond_1
    monitor-exit v6

    .line 915
    :goto_1
    return v4

    .line 897
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v7

    if-nez v7, :cond_3

    .line 898
    invoke-virtual {v3}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 901
    :cond_3
    const/4 v7, 0x0

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 902
    const/4 v7, 0x1

    aget v8, v2, v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v2, v7

    .line 904
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 905
    .local v1, parent:Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/View;

    if-eqz v7, :cond_4

    .line 906
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    move-object v3, v0

    goto :goto_0

    .line 909
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 912
    .end local v1           #parent:Landroid/view/ViewParent;
    :cond_5
    monitor-exit v6

    move v4, v5

    .line 915
    goto :goto_1

    .line 912
    .end local v2           #position:[F
    .end local v3           #view:Landroid/view/View;
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private resumeBlink()V
    .locals 1

    .prologue
    .line 642
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 644
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 646
    :cond_0
    return-void
.end method

.method private selectCurrentWord()Z
    .locals 17

    .prologue
    .line 734
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v15

    if-nez v15, :cond_0

    .line 735
    const/4 v15, 0x0

    .line 801
    :goto_0
    return v15

    .line 738
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->hasPasswordTransformationMethod()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 742
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->selectAllText()Z

    move-result v15

    goto :goto_0

    .line 745
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    .line 746
    .local v1, inputType:I
    and-int/lit8 v2, v1, 0xf

    .line 747
    .local v2, klass:I
    and-int/lit16 v13, v1, 0xff0

    .line 750
    .local v13, variation:I
    const/4 v15, 0x2

    if-eq v2, v15, :cond_2

    const/4 v15, 0x3

    if-eq v2, v15, :cond_2

    const/4 v15, 0x4

    if-eq v2, v15, :cond_2

    const/16 v15, 0x10

    if-eq v13, v15, :cond_2

    const/16 v15, 0x20

    if-eq v13, v15, :cond_2

    const/16 v15, 0xd0

    if-eq v13, v15, :cond_2

    const/16 v15, 0xb0

    if-ne v13, v15, :cond_3

    .line 757
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->selectAllText()Z

    move-result v15

    goto :goto_0

    .line 760
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor;->getLastTouchOffsets()J

    move-result-wide v3

    .line 761
    .local v3, lastTouchOffsets:J
    invoke-static {v3, v4}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v6

    .line 762
    .local v6, minOffset:I
    invoke-static {v3, v4}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v5

    .line 765
    .local v5, maxOffset:I
    if-ltz v6, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lt v6, v15, :cond_5

    :cond_4
    const/4 v15, 0x0

    goto :goto_0

    .line 766
    :cond_5
    if-ltz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lt v5, v15, :cond_7

    :cond_6
    const/4 v15, 0x0

    goto :goto_0

    .line 771
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Landroid/text/Spanned;

    const-class v16, Landroid/text/style/URLSpan;

    move-object/from16 v0, v16

    invoke-interface {v15, v6, v5, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/URLSpan;

    .line 773
    .local v12, urlSpans:[Landroid/text/style/URLSpan;
    array-length v15, v12

    const/16 v16, 0x1

    move/from16 v0, v16

    if-lt v15, v0, :cond_9

    .line 774
    const/4 v15, 0x0

    aget-object v11, v12, v15

    .line 775
    .local v11, urlSpan:Landroid/text/style/URLSpan;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Landroid/text/Spanned;

    invoke-interface {v15, v11}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 776
    .local v10, selectionStart:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Landroid/text/Spanned;

    invoke-interface {v15, v11}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 797
    .end local v11           #urlSpan:Landroid/text/style/URLSpan;
    .local v9, selectionEnd:I
    :cond_8
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Landroid/text/Spannable;

    invoke-static {v15, v10, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 799
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->setStartHandle()V

    .line 801
    if-le v9, v10, :cond_b

    const/4 v15, 0x1

    goto/16 :goto_0

    .line 778
    .end local v9           #selectionEnd:I
    .end local v10           #selectionStart:I
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v14

    .line 779
    .local v14, wordIterator:Landroid/text/method/WordIterator;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15, v6, v5}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 783
    invoke-virtual {v14, v6}, Landroid/text/method/WordIterator;->getBeginningSelection(I)I

    move-result v10

    .line 786
    .restart local v10       #selectionStart:I
    invoke-virtual {v14, v5}, Landroid/text/method/WordIterator;->getEndSelection(I)I

    move-result v9

    .line 788
    .restart local v9       #selectionEnd:I
    const/4 v15, -0x1

    if-eq v10, v15, :cond_a

    const/4 v15, -0x1

    if-eq v9, v15, :cond_a

    if-ne v10, v9, :cond_8

    .line 791
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/widget/Editor;->getCharRange(I)J

    move-result-wide v7

    .line 792
    .local v7, range:J
    invoke-static {v7, v8}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v10

    .line 793
    invoke-static {v7, v8}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v9

    goto :goto_1

    .line 801
    .end local v7           #range:J
    .end local v14           #wordIterator:Landroid/text/method/WordIterator;
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method private shouldBlink()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1891
    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->isFocused()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1899
    :cond_0
    :goto_0
    return v2

    .line 1893
    :cond_1
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 1894
    .local v1, start:I
    if-ltz v1, :cond_0

    .line 1896
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 1897
    .local v0, end:I
    if-ltz v0, :cond_0

    .line 1899
    if-ne v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private showError()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f00

    .line 396
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    .line 397
    iput-boolean v8, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 420
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-nez v4, :cond_1

    .line 402
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 403
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x10900ff

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 406
    .local v0, err:Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 407
    .local v2, scale:F
    new-instance v4, Landroid/widget/Editor$ErrorPopup;

    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v6, 0x4248

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/Editor$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 408
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 411
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 414
    .end local v0           #err:Landroid/widget/TextView;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #scale:F
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 415
    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 416
    iget-object v4, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 418
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v6

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 419
    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Editor$ErrorPopup;->fixDirection(Z)V

    goto :goto_0
.end method

.method private suspendBlink()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 639
    :cond_0
    return-void
.end method

.method private touchPositionIsInSelection()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 845
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 846
    .local v4, selectionStart:I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 848
    .local v3, selectionEnd:I
    if-ne v4, v3, :cond_0

    .line 863
    :goto_0
    return v7

    .line 852
    :cond_0
    if-le v4, v3, :cond_1

    .line 853
    move v5, v4

    .line 854
    .local v5, tmp:I
    move v4, v3

    .line 855
    move v3, v5

    .line 856
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 859
    .end local v5           #tmp:I
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 860
    .local v2, selectionController:Landroid/widget/Editor$SelectionModifierCursorController;
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 861
    .local v1, minOffset:I
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .line 863
    .local v0, maxOffset:I
    if-lt v1, v4, :cond_2

    if-ge v0, v3, :cond_2

    const/4 v6, 0x1

    :goto_1
    move v7, v6

    goto :goto_0

    :cond_2
    move v6, v7

    goto :goto_1
.end method

.method private updateCursorPosition(IIIF)V
    .locals 6
    .parameter "cursorIndex"
    .parameter "top"
    .parameter "bottom"
    .parameter "horizontal"

    .prologue
    const/high16 v5, 0x3f00

    .line 1836
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    .line 1837
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v4, v4, Landroid/widget/TextView;->mCursorDrawableRes:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v2, p1

    .line 1840
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    .line 1841
    :cond_1
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1843
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget v2, p0, Landroid/widget/Editor;->mDeviceDPI:I

    const/16 v4, 0x140

    if-lt v2, v4, :cond_2

    const/4 v2, 0x3

    :goto_0
    add-int v1, v3, v2

    .line 1845
    .local v1, width:I
    sub-float v2, p4, v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result p4

    .line 1846
    float-to-int v2, p4

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int v0, v2, v3

    .line 1847
    .local v0, left:I
    iget-object v2, p0, Landroid/widget/Editor;->mCursorDrawable:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, p1

    iget-object v3, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int v3, p2, v3

    add-int v4, v0, v1

    iget-object v5, p0, Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p3

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1849
    return-void

    .line 1843
    .end local v0           #left:I
    .end local v1           #width:I
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateSpellCheckSpans(IIZ)V
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "createSpellChecker"

    .prologue
    .line 598
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isSuggestionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v0, v0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_1

    .line 600
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    .line 601
    new-instance v0, Landroid/widget/SpellChecker;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/SpellChecker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 603
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_1

    .line 604
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0, p1, p2}, Landroid/widget/SpellChecker;->spellCheck(II)V

    .line 607
    :cond_1
    return-void
.end method


# virtual methods
.method public addSpanWatchers(Landroid/text/Spannable;)V
    .locals 4
    .parameter "text"

    .prologue
    const/16 v3, 0x12

    const/4 v2, 0x0

    .line 2154
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 2156
    .local v0, textLength:I
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    if-eqz v1, :cond_0

    .line 2157
    iget-object v1, p0, Landroid/widget/Editor;->mKeyListener:Landroid/text/method/KeyListener;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2160
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mEasyEditSpanController:Landroid/widget/Editor$EasyEditSpanController;

    if-nez v1, :cond_1

    .line 2161
    new-instance v1, Landroid/widget/Editor$EasyEditSpanController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$EasyEditSpanController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mEasyEditSpanController:Landroid/widget/Editor$EasyEditSpanController;

    .line 2163
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mEasyEditSpanController:Landroid/widget/Editor$EasyEditSpanController;

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2164
    return-void
.end method

.method adjustInputType(ZZZZ)V
    .locals 2
    .parameter "password"
    .parameter "passwordInputType"
    .parameter "webPasswordInputType"
    .parameter "numberPasswordInputType"

    .prologue
    .line 653
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 654
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 655
    :cond_0
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 658
    :cond_1
    if-eqz p3, :cond_2

    .line 659
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit16 v0, v0, 0xe0

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    .line 669
    :cond_2
    :goto_0
    return-void

    .line 662
    :cond_3
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 664
    if-nez p1, :cond_4

    if-eqz p4, :cond_2

    .line 665
    :cond_4
    iget v0, p0, Landroid/widget/Editor;->mInputType:I

    and-int/lit16 v0, v0, -0xff1

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/widget/Editor;->mInputType:I

    goto :goto_0
.end method

.method areSuggestionsShown()Z
    .locals 1

    .prologue
    .line 1878
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beginBatchEdit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 1216
    iput-boolean v5, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 1217
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1218
    .local v0, ims:Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    .line 1219
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1220
    .local v1, nesting:I
    if-ne v1, v5, :cond_0

    .line 1221
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    .line 1222
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 1223
    iget-boolean v2, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_1

    .line 1226
    iput v3, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1227
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1233
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 1236
    .end local v1           #nesting:I
    :cond_0
    return-void

    .line 1229
    .restart local v1       #nesting:I
    :cond_1
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1230
    iput v4, v0, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1231
    iput-boolean v3, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    goto :goto_0
.end method

.method createInputContentTypeIfNeeded()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Landroid/widget/Editor$InputContentType;

    invoke-direct {v0}, Landroid/widget/Editor$InputContentType;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    .line 513
    :cond_0
    return-void
.end method

.method createInputMethodStateIfNeeded()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Landroid/widget/Editor$InputMethodState;

    invoke-direct {v0}, Landroid/widget/Editor$InputMethodState;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 519
    :cond_0
    return-void
.end method

.method public endBatchEdit()V
    .locals 3

    .prologue
    .line 1239
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/Editor;->mInBatchEditControllers:Z

    .line 1240
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1241
    .local v0, ims:Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    .line 1242
    iget v2, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, -0x1

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1243
    .local v1, nesting:I
    if-nez v1, :cond_0

    .line 1244
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1247
    .end local v1           #nesting:I
    :cond_0
    return-void
.end method

.method ensureEndedBatchEdit()V
    .locals 2

    .prologue
    .line 1250
    iget-object v0, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1251
    .local v0, ims:Landroid/widget/Editor$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    .line 1252
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    .line 1253
    invoke-virtual {p0, v0}, Landroid/widget/Editor;->finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V

    .line 1255
    :cond_0
    return-void
.end method

.method extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6
    .parameter "request"
    .parameter "outText"

    .prologue
    const/4 v2, -0x1

    .line 1273
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method finishBatchEdit(Landroid/widget/Editor$InputMethodState;)V
    .locals 1
    .parameter "ims"

    .prologue
    .line 1258
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1260
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 1261
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 1262
    invoke-virtual {p0}, Landroid/widget/Editor;->reportExtractedText()Z

    .line 1267
    :cond_1
    :goto_0
    return-void

    .line 1263
    :cond_2
    iget-boolean v0, p1, Landroid/widget/Editor$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_1

    .line 1265
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_0
.end method

.method getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1806
    iget-boolean v2, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v2, :cond_0

    .line 1817
    :goto_0
    return-object v1

    .line 1810
    :cond_0
    iget-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-nez v2, :cond_1

    .line 1811
    new-instance v2, Landroid/widget/Editor$InsertionPointCursorController;

    invoke-direct {v2, p0, v1}, Landroid/widget/Editor$InsertionPointCursorController;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v2, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 1813
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1814
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1817
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    goto :goto_0
.end method

.method getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;
    .locals 2

    .prologue
    .line 1821
    iget-boolean v1, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 1822
    const/4 v1, 0x0

    .line 1832
    :goto_0
    return-object v1

    .line 1825
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-nez v1, :cond_1

    .line 1826
    new-instance v1, Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SelectionModifierCursorController;-><init>(Landroid/widget/Editor;)V

    iput-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 1828
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1829
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1832
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    goto :goto_0
.end method

.method public getWordIterator()Landroid/text/method/WordIterator;
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    if-nez v0, :cond_0

    .line 814
    new-instance v0, Landroid/text/method/WordIterator;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 816
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method hasInsertionController()Z
    .locals 1

    .prologue
    .line 1795
    iget-boolean v0, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    return v0
.end method

.method hasSelectionController()Z
    .locals 1

    .prologue
    .line 1802
    iget-boolean v0, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    return v0
.end method

.method hideControllers()V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 576
    invoke-direct {p0}, Landroid/widget/Editor;->hideSpanControllers()V

    .line 577
    return-void
.end method

.method public initSelectControllersPosition()V
    .locals 1

    .prologue
    .line 4771
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4772
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->initPreviousOffset()V

    .line 4774
    :cond_0
    return-void
.end method

.method invalidateTextDisplayList()V
    .locals 2

    .prologue
    .line 1619
    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    if-eqz v1, :cond_1

    .line 1620
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1621
    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/DisplayList;->invalidate()V

    .line 1620
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1624
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method invalidateTextDisplayList(Landroid/text/Layout;II)V
    .locals 9
    .parameter "layout"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1590
    iget-object v8, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    if-eqz v8, :cond_2

    instance-of v8, p1, Landroid/text/DynamicLayout;

    if-eqz v8, :cond_2

    .line 1591
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 1592
    .local v4, firstLine:I
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .local v6, lastLine:I
    move-object v3, p1

    .line 1594
    check-cast v3, Landroid/text/DynamicLayout;

    .line 1595
    .local v3, dynamicLayout:Landroid/text/DynamicLayout;
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockEndLines()[I

    move-result-object v0

    .line 1596
    .local v0, blockEndLines:[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getBlockIndices()[I

    move-result-object v2

    .line 1597
    .local v2, blockIndices:[I
    invoke-virtual {v3}, Landroid/text/DynamicLayout;->getNumberOfBlocks()I

    move-result v7

    .line 1599
    .local v7, numberOfBlocks:I
    const/4 v5, 0x0

    .line 1601
    .local v5, i:I
    :goto_0
    if-ge v5, v7, :cond_0

    .line 1602
    aget v8, v0, v5

    if-lt v8, v4, :cond_3

    .line 1607
    :cond_0
    :goto_1
    if-ge v5, v7, :cond_2

    .line 1608
    aget v1, v2, v5

    .line 1609
    .local v1, blockIndex:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 1610
    iget-object v8, p0, Landroid/widget/Editor;->mTextDisplayLists:[Landroid/view/DisplayList;

    aget-object v8, v8, v1

    invoke-virtual {v8}, Landroid/view/DisplayList;->invalidate()V

    .line 1612
    :cond_1
    aget v8, v0, v5

    if-lt v8, v6, :cond_4

    .line 1616
    .end local v0           #blockEndLines:[I
    .end local v1           #blockIndex:I
    .end local v2           #blockIndices:[I
    .end local v3           #dynamicLayout:Landroid/text/DynamicLayout;
    .end local v4           #firstLine:I
    .end local v5           #i:I
    .end local v6           #lastLine:I
    .end local v7           #numberOfBlocks:I
    :cond_2
    return-void

    .line 1603
    .restart local v0       #blockEndLines:[I
    .restart local v2       #blockIndices:[I
    .restart local v3       #dynamicLayout:Landroid/text/DynamicLayout;
    .restart local v4       #firstLine:I
    .restart local v5       #i:I
    .restart local v6       #lastLine:I
    .restart local v7       #numberOfBlocks:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1613
    .restart local v1       #blockIndex:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    .line 1614
    goto :goto_1
.end method

.method isCursorVisible()Z
    .locals 1

    .prologue
    .line 523
    iget-boolean v0, p0, Landroid/widget/Editor;->mCursorVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeBlink()V
    .locals 6

    .prologue
    .line 1903
    invoke-direct {p0}, Landroid/widget/Editor;->shouldBlink()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1904
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 1905
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Editor$Blink;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$Blink;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    iput-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    .line 1906
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1907
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-wide v2, p0, Landroid/widget/Editor;->mShowCursor:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 1911
    :cond_1
    :goto_0
    return-void

    .line 1909
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 306
    iget-boolean v1, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    if-eqz v1, :cond_0

    .line 307
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 308
    iput-boolean v3, p0, Landroid/widget/Editor;->mShowErrorAfterAttach:Z

    .line 310
    :cond_0
    iput-boolean v3, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 312
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 315
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v1, :cond_1

    .line 316
    iget-object v1, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 318
    :cond_1
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v1, :cond_2

    .line 319
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    .line 320
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 322
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v3, v1, v2}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 325
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->hasTransientState()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 330
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setHasTransientState(Z)V

    .line 333
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    .line 343
    :cond_3
    return-void
.end method

.method public onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 1860
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-nez v0, :cond_0

    .line 1861
    new-instance v0, Landroid/widget/Editor$CorrectionHighlighter;

    invoke-direct {v0, p0}, Landroid/widget/Editor$CorrectionHighlighter;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    .line 1866
    :goto_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    invoke-virtual {v0, p1}, Landroid/widget/Editor$CorrectionHighlighter;->highlight(Landroid/view/inputmethod/CorrectionInfo;)V

    .line 1867
    return-void

    .line 1863
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    const/4 v1, 0x0

    #calls: Landroid/widget/Editor$CorrectionHighlighter;->invalidate(Z)V
    invoke-static {v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->access$300(Landroid/widget/Editor$CorrectionHighlighter;Z)V

    goto :goto_0
.end method

.method onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 347
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 351
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->isShowingUp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->hide()V

    .line 356
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_2

    .line 357
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    iget-object v1, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 360
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 364
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_4

    .line 365
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 368
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    .line 369
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 372
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->invalidateTextDisplayList()V

    .line 374
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v0, :cond_6

    .line 375
    iget-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    .line 381
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 382
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 383
    iput-boolean v2, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 384
    iput-boolean v2, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    .line 393
    return-void
.end method

.method onDraw(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 22
    .parameter "canvas"
    .parameter "layout"
    .parameter "highlight"
    .parameter "highlightPaint"
    .parameter "cursorOffsetVertical"

    .prologue
    .line 1389
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 1390
    .local v7, selectionStart:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 1392
    .local v8, selectionEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    move-object/from16 v17, v0

    .line 1393
    .local v17, ims:Landroid/widget/Editor$InputMethodState;
    if-eqz v17, :cond_4

    move-object/from16 v0, v17

    iget v6, v0, Landroid/widget/Editor$InputMethodState;->mBatchEditNesting:I

    if-nez v6, :cond_4

    .line 1394
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 1395
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_4

    .line 1396
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1397
    const/16 v18, 0x0

    .line 1398
    .local v18, reported:Z
    move-object/from16 v0, v17

    iget-boolean v6, v0, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    if-nez v6, :cond_0

    move-object/from16 v0, v17

    iget-boolean v6, v0, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v6, :cond_1

    .line 1402
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->reportExtractedText()Z

    move-result v18

    .line 1404
    :cond_1
    if-nez v18, :cond_3

    if-eqz p3, :cond_3

    .line 1405
    const/4 v9, -0x1

    .line 1406
    .local v9, candStart:I
    const/4 v10, -0x1

    .line 1407
    .local v10, candEnd:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    instance-of v6, v6, Landroid/text/Spannable;

    if-eqz v6, :cond_2

    .line 1408
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    check-cast v19, Landroid/text/Spannable;

    .line 1409
    .local v19, sp:Landroid/text/Spannable;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v9

    .line 1410
    invoke-static/range {v19 .. v19}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v10

    .line 1412
    .end local v19           #sp:Landroid/text/Spannable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 1417
    .end local v9           #candStart:I
    .end local v10           #candEnd:I
    .end local v18           #reported:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz p3, :cond_4

    .line 1418
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6, v11}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1419
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    const/4 v11, 0x0

    move-object/from16 v0, v17

    iget-object v12, v0, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v14, v12, v13

    aput v14, v6, v11

    .line 1421
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    invoke-virtual {v6, v11}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1422
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, v17

    iget-object v12, v0, Landroid/widget/Editor$InputMethodState;->mTmpOffset:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-virtual {v6, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 1424
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    const/4 v11, 0x0

    move/from16 v0, p5

    int-to-float v12, v0

    invoke-virtual {v6, v11, v12}, Landroid/graphics/RectF;->offset(FF)V

    .line 1426
    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object/from16 v0, v17

    iget-object v11, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->left:F

    float-to-double v11, v11

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v11, v11

    move-object/from16 v0, v17

    iget-object v12, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v12, v12, Landroid/graphics/RectF;->top:F

    float-to-double v12, v12

    const-wide/high16 v14, 0x3fe0

    add-double/2addr v12, v14

    double-to-int v12, v12

    move-object/from16 v0, v17

    iget-object v13, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    float-to-double v13, v13

    const-wide/high16 v15, 0x3fe0

    add-double/2addr v13, v15

    double-to-int v13, v13

    move-object/from16 v0, v17

    iget-object v14, v0, Landroid/widget/Editor$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    iget v14, v14, Landroid/graphics/RectF;->bottom:F

    float-to-double v14, v14

    const-wide/high16 v20, 0x3fe0

    add-double v14, v14, v20

    double-to-int v14, v14

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v13, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v14, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v15, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/widget/Editor$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object v11, v5

    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 1438
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    if-eqz v6, :cond_5

    .line 1439
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mCorrectionHighlighter:Landroid/widget/Editor$CorrectionHighlighter;

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v6, v0, v1}, Landroid/widget/Editor$CorrectionHighlighter;->draw(Landroid/graphics/Canvas;I)V

    .line 1442
    :cond_5
    if-eqz p3, :cond_7

    if-ne v7, v8, :cond_7

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/Editor;->mCursorCount:I

    if-lez v6, :cond_7

    .line 1444
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_6

    .line 1445
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 1449
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor;->drawCursor(Landroid/graphics/Canvas;I)V

    .line 1452
    const/16 p3, 0x0

    .line 1455
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1456
    invoke-direct/range {p0 .. p5}, Landroid/widget/Editor;->drawHardwareAccelerated(Landroid/graphics/Canvas;Landroid/text/Layout;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 1461
    :goto_0
    return-void

    .line 1459
    :cond_8
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method onDrop(Landroid/view/DragEvent;)V
    .locals 28
    .parameter "event"

    .prologue
    .line 1984
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v25, ""

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1985
    .local v4, content:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    .line 1987
    .local v3, clipData:Landroid/content/ClipData;
    if-nez v3, :cond_1

    .line 2150
    :cond_0
    :goto_0
    return-void

    .line 1991
    :cond_1
    invoke-virtual {v3}, Landroid/content/ClipData;->getItemCount()I

    move-result v13

    .line 1992
    .local v13, itemCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v13, :cond_2

    .line 1993
    invoke-virtual {v3, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v12

    .line 1994
    .local v12, item:Landroid/content/ClipData$Item;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1992
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1997
    .end local v12           #item:Landroid/content/ClipData$Item;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v26

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v27

    invoke-virtual/range {v25 .. v27}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v19

    .line 1998
    .local v19, offset:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v14

    .line 1999
    .local v14, localState:Ljava/lang/Object;
    const/4 v6, 0x0

    .line 2000
    .local v6, dragLocalState:Landroid/widget/Editor$DragLocalState;
    instance-of v0, v14, Landroid/widget/Editor$DragLocalState;

    move/from16 v25, v0

    if-eqz v25, :cond_3

    move-object v6, v14

    .line 2001
    check-cast v6, Landroid/widget/Editor$DragLocalState;

    .line 2003
    :cond_3
    if-eqz v6, :cond_7

    iget-object v0, v6, Landroid/widget/Editor$DragLocalState;->sourceTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_7

    const/4 v5, 0x1

    .line 2006
    .local v5, dragDropIntoItself:Z
    :goto_2
    if-eqz v5, :cond_4

    .line 2008
    iget v0, v6, Landroid/widget/Editor$DragLocalState;->start:I

    move/from16 v25, v0

    move/from16 v0, v19

    move/from16 v1, v25

    if-lt v0, v1, :cond_4

    iget v0, v6, Landroid/widget/Editor$DragLocalState;->end:I

    move/from16 v25, v0

    move/from16 v0, v19

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 2014
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .line 2015
    .local v20, originalLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    instance-of v11, v0, Landroid/inputmethodservice/ExtractEditText;

    .line 2016
    .local v11, isExtractEditText:Z
    if-nez v11, :cond_a

    .line 2017
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v4}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v17

    .line 2018
    .local v17, minMax:J
    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v16

    .line 2019
    .local v16, min:I
    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v15

    .line 2021
    .local v15, max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    check-cast v25, Landroid/text/Spannable;

    move-object/from16 v0, v25

    invoke-static {v0, v15}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2022
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 2025
    if-eqz v5, :cond_0

    if-eqz v20, :cond_0

    .line 2026
    iget v8, v6, Landroid/widget/Editor$DragLocalState;->start:I

    .line 2027
    .local v8, dragSourceStart:I
    iget v7, v6, Landroid/widget/Editor$DragLocalState;->end:I

    .line 2028
    .local v7, dragSourceEnd:I
    if-gt v15, v8, :cond_5

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->length()I

    move-result v25

    sub-int v22, v25, v20

    .line 2031
    .local v22, shift:I
    add-int v8, v8, v22

    .line 2032
    add-int v7, v7, v22

    .line 2058
    .end local v22           #shift:I
    :cond_5
    if-lez v8, :cond_9

    .line 2059
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    add-int/lit8 v26, v8, -0x1

    add-int/lit8 v27, v8, 0x1

    invoke-virtual/range {v25 .. v27}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v23

    .line 2063
    .local v23, t:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 2066
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v25

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->length()I

    move-result v25

    move/from16 v0, v25

    if-eq v8, v0, :cond_6

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 2069
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->length()I

    move-result v25

    move/from16 v0, v25

    if-ne v8, v0, :cond_8

    add-int/lit8 v21, v8, -0x1

    .line 2072
    .local v21, pos:I
    :goto_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    add-int/lit8 v26, v21, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2073
    :catch_0
    move-exception v9

    .line 2074
    .local v9, e:Ljava/lang/IndexOutOfBoundsException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 2003
    .end local v5           #dragDropIntoItself:Z
    .end local v7           #dragSourceEnd:I
    .end local v8           #dragSourceStart:I
    .end local v9           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v11           #isExtractEditText:Z
    .end local v15           #max:I
    .end local v16           #min:I
    .end local v17           #minMax:J
    .end local v20           #originalLength:I
    .end local v21           #pos:I
    .end local v23           #t:Ljava/lang/CharSequence;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_2

    .restart local v5       #dragDropIntoItself:Z
    .restart local v7       #dragSourceEnd:I
    .restart local v8       #dragSourceStart:I
    .restart local v11       #isExtractEditText:Z
    .restart local v15       #max:I
    .restart local v16       #min:I
    .restart local v17       #minMax:J
    .restart local v20       #originalLength:I
    .restart local v23       #t:Ljava/lang/CharSequence;
    :cond_8
    move/from16 v21, v8

    .line 2069
    goto :goto_3

    .line 2083
    .end local v23           #t:Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto/16 :goto_0

    .line 2090
    .end local v7           #dragSourceEnd:I
    .end local v8           #dragSourceStart:I
    .end local v15           #max:I
    .end local v16           #min:I
    .end local v17           #minMax:J
    :cond_a
    new-instance v24, Ljava/lang/StringBuilder;

    const-string v25, " "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2091
    .local v24, text:Ljava/lang/StringBuilder;
    const/16 v21, 0x0

    .line 2094
    .restart local v21       #pos:I
    if-nez v19, :cond_e

    .line 2095
    const-string v25, " "

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2096
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    add-int v25, v25, v19

    add-int/lit8 v21, v25, -0x1

    .line 2114
    :cond_b
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v17

    .line 2115
    .restart local v17       #minMax:J
    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v16

    .line 2116
    .restart local v16       #min:I
    invoke-static/range {v17 .. v18}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v15

    .line 2117
    .restart local v15       #max:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    check-cast v25, Landroid/text/Spannable;

    move-object/from16 v0, v25

    invoke-static {v0, v15}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2119
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15, v4}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 2121
    if-eqz v5, :cond_0

    .line 2122
    iget v8, v6, Landroid/widget/Editor$DragLocalState;->start:I

    .line 2123
    .restart local v8       #dragSourceStart:I
    iget v7, v6, Landroid/widget/Editor$DragLocalState;->end:I

    .line 2124
    .restart local v7       #dragSourceEnd:I
    if-gt v15, v8, :cond_d

    .line 2126
    if-eqz v19, :cond_c

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 2127
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v22

    .line 2128
    .restart local v22       #shift:I
    add-int v8, v8, v22

    .line 2129
    add-int/lit8 v25, v22, 0x1

    add-int v7, v7, v25

    .line 2136
    .end local v22           #shift:I
    :cond_d
    :goto_5
    if-lez v8, :cond_14

    .line 2138
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 2144
    :goto_6
    add-int/lit8 v25, v20, 0x1

    move/from16 v0, v21

    move/from16 v1, v25

    if-gt v0, v1, :cond_15

    .line 2145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v21

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    goto/16 :goto_0

    .line 2097
    .end local v7           #dragSourceEnd:I
    .end local v8           #dragSourceStart:I
    .end local v15           #max:I
    .end local v16           #min:I
    .end local v17           #minMax:J
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    add-int/lit8 v26, v19, -0x1

    invoke-interface/range {v25 .. v26}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v25

    const/16 v26, 0x20

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_f

    .line 2098
    const-string v25, " "

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2099
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    add-int v25, v25, v19

    add-int/lit8 v21, v25, -0x1

    goto/16 :goto_4

    .line 2100
    :cond_f
    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 2101
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2102
    add-int/lit8 v21, v19, 0x1

    goto/16 :goto_4

    .line 2103
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v25

    const/16 v26, 0x20

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_11

    .line 2104
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2105
    add-int/lit8 v21, v19, 0x1

    goto/16 :goto_4

    .line 2106
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v25

    const/16 v26, 0x20

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v25

    add-int/lit8 v26, v19, 0x1

    invoke-interface/range {v25 .. v26}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v25

    const/16 v26, 0x20

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_b

    .line 2109
    :cond_12
    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2110
    const-string v25, " "

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2111
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    add-int v25, v25, v19

    add-int/lit8 v21, v25, -0x1

    goto/16 :goto_4

    .line 2131
    .restart local v7       #dragSourceEnd:I
    .restart local v8       #dragSourceStart:I
    .restart local v15       #max:I
    .restart local v16       #min:I
    .restart local v17       #minMax:J
    :cond_13
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v25

    add-int/lit8 v22, v25, -0x1

    .line 2132
    .restart local v22       #shift:I
    add-int/lit8 v25, v22, 0x1

    add-int v8, v8, v25

    .line 2133
    add-int/lit8 v25, v22, 0x1

    add-int v7, v7, v25

    goto/16 :goto_5

    .line 2140
    .end local v22           #shift:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v7}, Landroid/widget/TextView;->deleteText_internal(II)V

    goto/16 :goto_6

    .line 2147
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    move-object/from16 v25, v0

    add-int/lit8 v26, v20, 0x1

    add-int/lit8 v27, v20, 0x1

    invoke-virtual/range {v25 .. v27}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    goto/16 :goto_0
.end method

.method onFocusChanged(ZI)V
    .locals 10
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 996
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/Editor;->mShowCursor:J

    .line 997
    invoke-virtual {p0}, Landroid/widget/Editor;->ensureEndedBatchEdit()V

    .line 999
    if-eqz p1, :cond_b

    .line 1000
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1001
    .local v4, selStart:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1005
    .local v3, selEnd:I
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_9

    if-nez v4, :cond_9

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ne v3, v5, :cond_9

    move v0, v6

    .line 1008
    .local v0, isFocusHighlighted:Z
    :goto_0
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-eqz v5, :cond_a

    if-nez v0, :cond_a

    move v5, v6

    :goto_1
    iput-boolean v5, p0, Landroid/widget/Editor;->mCreatedWithASelection:Z

    .line 1011
    iget-boolean v5, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    if-eqz v5, :cond_0

    if-ltz v4, :cond_0

    if-gez v3, :cond_6

    .line 1014
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->getLastTapPosition()I

    move-result v1

    .line 1015
    .local v1, lastTapPosition:I
    if-ltz v1, :cond_1

    .line 1016
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1020
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v2

    .line 1021
    .local v2, mMovement:Landroid/text/method/MovementMethod;
    if-eqz v2, :cond_2

    .line 1022
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v2, v8, v5, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 1030
    :cond_2
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v5, v5, Landroid/inputmethodservice/ExtractEditText;

    if-nez v5, :cond_3

    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    if-eqz v5, :cond_4

    :cond_3
    if-ltz v4, :cond_4

    if-ltz v3, :cond_4

    .line 1041
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1044
    :cond_4
    iget-boolean v5, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v5, :cond_5

    .line 1045
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->selectAllText()Z

    .line 1048
    :cond_5
    iput-boolean v6, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1051
    .end local v1           #lastTapPosition:I
    .end local v2           #mMovement:Landroid/text/method/MovementMethod;
    :cond_6
    iput-boolean v7, p0, Landroid/widget/Editor;->mFrozenWithFocus:Z

    .line 1052
    iput-boolean v7, p0, Landroid/widget/Editor;->mSelectionMoved:Z

    .line 1054
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_7

    .line 1055
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    .line 1058
    :cond_7
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1101
    .end local v0           #isFocusHighlighted:Z
    .end local v3           #selEnd:I
    .end local v4           #selStart:I
    :cond_8
    :goto_2
    return-void

    .restart local v3       #selEnd:I
    .restart local v4       #selStart:I
    :cond_9
    move v0, v7

    .line 1005
    goto :goto_0

    .restart local v0       #isFocusHighlighted:Z
    :cond_a
    move v5, v7

    .line 1008
    goto :goto_1

    .line 1068
    .end local v0           #isFocusHighlighted:Z
    .end local v3           #selEnd:I
    .end local v4           #selStart:I
    :cond_b
    iget-object v5, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-eqz v5, :cond_c

    .line 1069
    invoke-direct {p0}, Landroid/widget/Editor;->hideError()V

    .line 1072
    :cond_c
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 1074
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v5, v5, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v5, :cond_d

    .line 1077
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1078
    .restart local v4       #selStart:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1079
    .restart local v3       #selEnd:I
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1080
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    invoke-static {v5, v4, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1089
    .end local v3           #selEnd:I
    .end local v4           #selStart:I
    :goto_3
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v5, :cond_8

    .line 1090
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->resetTouchOffsets()V

    goto :goto_2

    .line 1082
    :cond_d
    iget-boolean v5, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    if-eqz v5, :cond_e

    iput-boolean v6, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 1083
    :cond_e
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1084
    iget-boolean v5, p0, Landroid/widget/Editor;->mTemporaryDetach:Z

    if-eqz v5, :cond_f

    iput-boolean v7, p0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    .line 1085
    :cond_f
    invoke-direct {p0}, Landroid/widget/Editor;->downgradeEasyCorrectionSpans()V

    goto :goto_3
.end method

.method onLocaleChanged()V
    .locals 1

    .prologue
    .line 806
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mWordIterator:Landroid/text/method/WordIterator;

    .line 807
    return-void
.end method

.method onScreenStateChanged(I)V
    .locals 0
    .parameter "screenState"

    .prologue
    .line 610
    packed-switch p1, :pswitch_data_0

    .line 633
    :goto_0
    return-void

    .line 612
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/Editor;->resumeBlink()V

    goto :goto_0

    .line 623
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/Editor;->suspendBlink()V

    goto :goto_0

    .line 610
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onScrollChanged()V
    .locals 1

    .prologue
    .line 1882
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    if-eqz v0, :cond_0

    .line 1883
    iget-object v0, p0, Landroid/widget/Editor;->mPositionListener:Landroid/widget/Editor$PositionListener;

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->onScrollChanged()V

    .line 1885
    :cond_0
    return-void
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 1195
    invoke-virtual {p0}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Editor$SelectionModifierCursorController;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1199
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 1200
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1201
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 1204
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 1205
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    .line 1206
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    .line 1210
    iput-boolean v2, p0, Landroid/widget/Editor;->mTouchFocusSelected:Z

    .line 1211
    iput-boolean v2, p0, Landroid/widget/Editor;->mIgnoreActionUpEvent:Z

    .line 1213
    :cond_2
    return-void
.end method

.method onTouchUpEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    .line 1751
    iget-boolean v3, p0, Landroid/widget/Editor;->mSelectAllOnFocus:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 1752
    .local v1, selectAllGotFocus:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1753
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1754
    .local v2, text:Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1756
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 1757
    .local v0, offset:I
    check-cast v2, Landroid/text/Spannable;

    .end local v2           #text:Ljava/lang/CharSequence;
    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1758
    iget-object v3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    if-eqz v3, :cond_0

    .line 1760
    iget-object v3, p0, Landroid/widget/Editor;->mSpellChecker:Landroid/widget/SpellChecker;

    invoke-virtual {v3}, Landroid/widget/SpellChecker;->onSelectionChanged()V

    .line 1762
    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1763
    invoke-direct {p0}, Landroid/widget/Editor;->isCursorInsideEasyCorrectionSpan()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1764
    new-instance v3, Landroid/widget/Editor$1;

    invoke-direct {v3, p0}, Landroid/widget/Editor$1;-><init>(Landroid/widget/Editor;)V

    iput-object v3, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    .line 1770
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/widget/Editor;->mShowSuggestionRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1777
    .end local v0           #offset:I
    :cond_1
    :goto_1
    return-void

    .line 1751
    .end local v1           #selectAllGotFocus:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1772
    .restart local v0       #offset:I
    .restart local v1       #selectAllGotFocus:Z
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->hasInsertionController()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1773
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Editor$InsertionPointCursorController;->show()V

    goto :goto_1
.end method

.method onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 1150
    if-eqz p1, :cond_1

    .line 1151
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->uncancel()V

    .line 1153
    invoke-virtual {p0}, Landroid/widget/Editor;->makeBlink()V

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    if-eqz v0, :cond_2

    .line 1165
    iget-object v0, p0, Landroid/widget/Editor;->mBlink:Landroid/widget/Editor$Blink;

    invoke-virtual {v0}, Landroid/widget/Editor$Blink;->cancel()V

    .line 1167
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    if-eqz v0, :cond_3

    .line 1168
    iget-object v0, p0, Landroid/widget/Editor;->mInputContentType:Landroid/widget/Editor$InputContentType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/Editor$InputContentType;->enterDown:Z

    .line 1172
    :cond_3
    iget-object v0, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_4

    .line 1176
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1177
    :cond_4
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-eqz v0, :cond_5

    .line 1178
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->onParentLostFocus()V

    .line 1182
    :cond_5
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onEndBatchEdit()V

    goto :goto_0
.end method

.method public performLongClick(Z)Z
    .locals 9
    .parameter "handled"

    .prologue
    .line 949
    if-nez p1, :cond_0

    iget v6, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v7, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-direct {p0, v6, v7}, Landroid/widget/Editor;->isPositionOnText(FF)Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-eqz v6, :cond_0

    .line 951
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v7, p0, Landroid/widget/Editor;->mLastDownPositionX:F

    iget v8, p0, Landroid/widget/Editor;->mLastDownPositionY:F

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v3

    .line 953
    .local v3, offset:I
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 954
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 955
    invoke-virtual {p0}, Landroid/widget/Editor;->getInsertionController()Landroid/widget/Editor$InsertionPointCursorController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Editor$InsertionPointCursorController;->showWithActionPopup()V

    .line 956
    const/4 p1, 0x1

    .line 962
    .end local v3           #offset:I
    :cond_0
    if-nez p1, :cond_1

    iget-object v6, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v6, :cond_1

    .line 963
    invoke-direct {p0}, Landroid/widget/Editor;->touchPositionIsInSelection()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 965
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 966
    .local v5, start:I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 967
    .local v1, end:I
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5, v1}, Landroid/widget/TextView;->getTransformedText(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 968
    .local v4, selectedText:Ljava/lang/CharSequence;
    const/4 v6, 0x0

    invoke-static {v6, v4}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 969
    .local v0, data:Landroid/content/ClipData;
    new-instance v2, Landroid/widget/Editor$DragLocalState;

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {v2, v6, v5, v1}, Landroid/widget/Editor$DragLocalState;-><init>(Landroid/widget/TextView;II)V

    .line 970
    .local v2, localState:Landroid/widget/Editor$DragLocalState;
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Landroid/widget/Editor;->getTextThumbnailBuilder(Ljava/lang/CharSequence;)Landroid/view/View$DragShadowBuilder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v7, v2, v8}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 971
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 977
    .end local v0           #data:Landroid/content/ClipData;
    .end local v1           #end:I
    .end local v2           #localState:Landroid/widget/Editor$DragLocalState;
    .end local v4           #selectedText:Ljava/lang/CharSequence;
    .end local v5           #start:I
    :goto_0
    const/4 p1, 0x1

    .line 981
    :cond_1
    if-nez p1, :cond_2

    .line 982
    invoke-virtual {p0}, Landroid/widget/Editor;->startSelectionActionMode()Z

    move-result p1

    .line 985
    :cond_2
    return p1

    .line 973
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 974
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    .line 975
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    goto :goto_0
.end method

.method prepareCursorControllers()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 527
    const/4 v3, 0x0

    .line 529
    .local v3, windowSupportsHandles:Z
    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 530
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v6, :cond_1

    move-object v2, v1

    .line 531
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 532
    .local v2, windowParams:Landroid/view/WindowManager$LayoutParams;
    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v6, v7, :cond_0

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7cf

    if-le v6, v7, :cond_5

    :cond_0
    move v3, v5

    .line 537
    .end local v2           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    instance-of v6, v1, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 539
    const-string v6, "Editor"

    const-string v7, "setup window support handles"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v3, 0x1

    .line 544
    :cond_2
    if-eqz v3, :cond_6

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-eqz v6, :cond_6

    move v0, v5

    .line 545
    .local v0, enabled:Z
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/widget/Editor;->isCursorVisible()Z

    move-result v6

    if-eqz v6, :cond_7

    move v6, v5

    :goto_2
    iput-boolean v6, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    .line 546
    if-eqz v0, :cond_8

    iget-object v6, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_3
    iput-boolean v5, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    .line 548
    iget-boolean v4, p0, Landroid/widget/Editor;->mInsertionControllerEnabled:Z

    if-nez v4, :cond_3

    .line 549
    invoke-direct {p0}, Landroid/widget/Editor;->hideInsertionPointCursorController()V

    .line 550
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    if-eqz v4, :cond_3

    .line 551
    iget-object v4, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$InsertionPointCursorController;->onDetached()V

    .line 552
    iput-object v8, p0, Landroid/widget/Editor;->mInsertionPointCursorController:Landroid/widget/Editor$InsertionPointCursorController;

    .line 556
    :cond_3
    iget-boolean v4, p0, Landroid/widget/Editor;->mSelectionControllerEnabled:Z

    if-nez v4, :cond_4

    .line 557
    invoke-virtual {p0}, Landroid/widget/Editor;->stopSelectionActionMode()V

    .line 558
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v4, :cond_4

    .line 559
    iget-object v4, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionModifierCursorController;->onDetached()V

    .line 560
    iput-object v8, p0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    .line 563
    :cond_4
    return-void

    .end local v0           #enabled:Z
    .restart local v2       #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_5
    move v3, v4

    .line 532
    goto :goto_0

    .end local v2           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_6
    move v0, v4

    .line 544
    goto :goto_1

    .restart local v0       #enabled:Z
    :cond_7
    move v6, v4

    .line 545
    goto :goto_2

    :cond_8
    move v5, v4

    .line 546
    goto :goto_3
.end method

.method reportExtractedText()Z
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 1348
    iget-object v8, p0, Landroid/widget/Editor;->mInputMethodState:Landroid/widget/Editor$InputMethodState;

    .line 1349
    .local v8, ims:Landroid/widget/Editor$InputMethodState;
    if-eqz v8, :cond_2

    .line 1350
    iget-boolean v6, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1351
    .local v6, contentChanged:Z
    if-nez v6, :cond_0

    iget-boolean v0, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 1352
    :cond_0
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1353
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mSelectionModeChanged:Z

    .line 1354
    iget-object v1, v8, Landroid/widget/Editor$InputMethodState;->mExtractedTextRequest:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 1355
    .local v1, req:Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_2

    .line 1356
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 1357
    .local v7, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_2

    .line 1362
    iget v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_1

    if-nez v6, :cond_1

    .line 1363
    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1365
    :cond_1
    iget v2, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    iget v4, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1373
    iget-object v0, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v2, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v3, v8, Landroid/widget/Editor$InputMethodState;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 1374
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedStart:I

    .line 1375
    iput v10, v8, Landroid/widget/Editor$InputMethodState;->mChangedEnd:I

    .line 1376
    iput v9, v8, Landroid/widget/Editor$InputMethodState;->mChangedDelta:I

    .line 1377
    iput-boolean v9, v8, Landroid/widget/Editor$InputMethodState;->mContentChanged:Z

    .line 1378
    const/4 v0, 0x1

    .line 1384
    .end local v1           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6           #contentChanged:Z
    .end local v7           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v0

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method sendOnTextChanged(II)V
    .locals 2
    .parameter "start"
    .parameter "after"

    .prologue
    .line 1125
    add-int v0, p1, p2

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V

    .line 1130
    invoke-direct {p0}, Landroid/widget/Editor;->hideCursorControllers()V

    .line 1131
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "error"
    .parameter "icon"

    .prologue
    const/4 v5, 0x0

    .line 423
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    .line 424
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/Editor;->mErrorWasChanged:Z

    .line 425
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v0, v1, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 426
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_2

    .line 427
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getResolvedLayoutDirection()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 430
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3, p2, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 442
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    .line 443
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v1, :cond_1

    .line 444
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 445
    iget-object v1, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 448
    :cond_0
    iput-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    .line 455
    :cond_1
    :goto_1
    return-void

    .line 434
    :pswitch_0
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    iget-object v4, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 439
    :cond_2
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v5, p2, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 451
    :cond_3
    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    invoke-direct {p0}, Landroid/widget/Editor;->showError()V

    goto :goto_1

    .line 427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method setFrame()V
    .locals 7

    .prologue
    .line 693
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 695
    .local v6, tv:Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/Editor;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 696
    iget-object v0, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    iget-object v1, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/Editor;->getErrorY()I

    move-result v3

    iget-object v4, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor;->mErrorPopup:Landroid/widget/Editor$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 699
    .end local v6           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public setStartHandle()V
    .locals 5

    .prologue
    .line 4778
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4779
    .local v0, layout:Landroid/text/Layout;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4780
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 4781
    .local v2, selectionStart:I
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 4783
    .local v1, line:I
    iget-object v3, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v3

    if-nez v3, :cond_0

    sget v3, Landroid/widget/Editor;->TOP_LINE:I

    if-ne v1, v3, :cond_2

    .line 4784
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Editor$SelectionModifierCursorController;->setStartHandleToTop(Z)V

    .line 4789
    .end local v1           #line:I
    .end local v2           #selectionStart:I
    :cond_1
    :goto_0
    return-void

    .line 4786
    .restart local v1       #line:I
    .restart local v2       #selectionStart:I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Editor$SelectionModifierCursorController;->setStartHandleToTop(Z)V

    goto :goto_0
.end method

.method showSuggestions()V
    .locals 1

    .prologue
    .line 1870
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    if-nez v0, :cond_0

    .line 1871
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SuggestionsPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 1873
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->hideControllers()V

    .line 1874
    iget-object v0, p0, Landroid/widget/Editor;->mSuggestionsPopupWindow:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$SuggestionsPopupWindow;->show()V

    .line 1875
    return-void
.end method

.method startSelectionActionMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 1668
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_1

    move v2, v4

    .line 1711
    :cond_0
    :goto_0
    return v2

    .line 1673
    :cond_1
    invoke-direct {p0}, Landroid/widget/Editor;->canSelectText()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1674
    :cond_2
    const-string v5, "TextView"

    const-string v6, "TextView does not support text selection. Action mode cancelled."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1676
    goto :goto_0

    .line 1679
    :cond_3
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->hasSelection()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1681
    invoke-direct {p0}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v5

    if-nez v5, :cond_4

    move v2, v4

    .line 1683
    goto :goto_0

    .line 1687
    :cond_4
    invoke-direct {p0}, Landroid/widget/Editor;->extractedTextModeWillBeStarted()Z

    move-result v3

    .line 1689
    .local v3, willExtract:Z
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    instance-of v5, v5, Landroid/inputmethodservice/ExtractEditText;

    if-nez v5, :cond_5

    .line 1690
    const/4 v3, 0x0

    .line 1696
    :cond_5
    if-nez v3, :cond_6

    .line 1697
    new-instance v0, Landroid/widget/Editor$SelectionActionModeCallback;

    invoke-direct {v0, p0, v6}, Landroid/widget/Editor$SelectionActionModeCallback;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V

    .line 1698
    .local v0, actionModeCallback:Landroid/view/ActionMode$Callback;
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    .line 1701
    .end local v0           #actionModeCallback:Landroid/view/ActionMode$Callback;
    :cond_6
    iget-object v5, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-nez v5, :cond_7

    if-eqz v3, :cond_8

    :cond_7
    const/4 v2, 0x1

    .line 1703
    .local v2, selectionStarted:Z
    :goto_1
    if-eqz v2, :cond_0

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Landroid/widget/Editor;->mShowSoftInputOnFocus:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getHideSoftInput()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1705
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1706
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 1707
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    goto :goto_0

    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #selectionStarted:Z
    :cond_8
    move v2, v4

    .line 1701
    goto :goto_1
.end method

.method protected stopSelectionActionMode()V
    .locals 2

    .prologue
    .line 1780
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_0

    .line 1784
    :try_start_0
    iget-object v1, p0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1789
    :cond_0
    :goto_0
    return-void

    .line 1785
    :catch_0
    move-exception v0

    .line 1786
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public swapSelectionControllers()V
    .locals 6

    .prologue
    .line 4751
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    .line 4752
    .local v3, selectionStart:I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 4754
    .local v2, selectionEnd:I
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 4755
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionModifierCursorController;->unvisibleAllHandle()V

    .line 4756
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    invoke-static {v4, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4757
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4758
    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 4760
    .local v1, line:I
    iget-object v4, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v4

    if-nez v4, :cond_0

    sget v4, Landroid/widget/Editor;->TOP_LINE:I

    if-ne v1, v4, :cond_2

    .line 4761
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Editor$SelectionModifierCursorController;->setStartHandleToTop(Z)V

    .line 4766
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Editor$SelectionModifierCursorController;->visibleAllHandle()V

    .line 4768
    .end local v0           #layout:Landroid/text/Layout;
    .end local v1           #line:I
    :cond_1
    return-void

    .line 4763
    .restart local v0       #layout:Landroid/text/Layout;
    .restart local v1       #line:I
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Editor$SelectionModifierCursorController;->setStartHandleToTop(Z)V

    goto :goto_0
.end method

.method public switchStartHandle()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4792
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 4793
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 4794
    .local v2, selectionStart:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 4795
    .local v0, layout:Landroid/text/Layout;
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 4798
    .local v1, line:I
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v5

    if-nez v5, :cond_0

    sget v5, Landroid/widget/Editor;->TOP_LINE:I

    if-ne v1, v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->getStartHandleToTop()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->isSingleLine()Z

    move-result v5

    if-nez v5, :cond_3

    sget v5, Landroid/widget/Editor;->TOP_LINE:I

    if-eq v1, v5, :cond_3

    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->getStartHandleToTop()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4821
    .end local v0           #layout:Landroid/text/Layout;
    .end local v1           #line:I
    .end local v2           #selectionStart:I
    :cond_2
    :goto_0
    return v3

    .line 4802
    .restart local v0       #layout:Landroid/text/Layout;
    .restart local v1       #line:I
    .restart local v2       #selectionStart:I
    :cond_3
    sget v5, Landroid/widget/Editor;->TOP_LINE:I

    if-ne v1, v5, :cond_5

    .line 4803
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->getStartHandleToTop()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4804
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/Editor$SelectionModifierCursorController;->setStartHandleToTop(Z)V

    .line 4805
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    #calls: Landroid/widget/Editor$SelectionModifierCursorController;->switchStartHandle()V
    invoke-static {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->access$3300(Landroid/widget/Editor$SelectionModifierCursorController;)V

    .end local v0           #layout:Landroid/text/Layout;
    .end local v1           #line:I
    .end local v2           #selectionStart:I
    :cond_4
    :goto_1
    move v3, v4

    .line 4821
    goto :goto_0

    .line 4811
    .restart local v0       #layout:Landroid/text/Layout;
    .restart local v1       #line:I
    .restart local v2       #selectionStart:I
    :cond_5
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->getStartHandleToTop()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4815
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/Editor$SelectionModifierCursorController;->setStartHandleToTop(Z)V

    .line 4816
    invoke-virtual {p0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v3

    #calls: Landroid/widget/Editor$SelectionModifierCursorController;->switchStartHandle()V
    invoke-static {v3}, Landroid/widget/Editor$SelectionModifierCursorController;->access$3300(Landroid/widget/Editor$SelectionModifierCursorController;)V

    goto :goto_1
.end method

.method updateCursorsPositions()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x2

    .line 1627
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    iget v7, v7, Landroid/widget/TextView;->mCursorDrawableRes:I

    if-nez v7, :cond_1

    .line 1628
    iput v10, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 1652
    :cond_0
    :goto_0
    return-void

    .line 1632
    :cond_1
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 1633
    .local v2, layout:Landroid/text/Layout;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getHintLayout()Landroid/text/Layout;

    move-result-object v1

    .line 1634
    .local v1, hintLayout:Landroid/text/Layout;
    iget-object v7, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 1635
    .local v5, offset:I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1636
    .local v3, line:I
    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1637
    .local v6, top:I
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 1639
    .local v0, bottom:I
    invoke-virtual {v2, v5}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v8

    :goto_1
    iput v7, p0, Landroid/widget/Editor;->mCursorCount:I

    .line 1641
    move v4, v0

    .line 1642
    .local v4, middle:I
    iget v7, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v7, v8, :cond_2

    .line 1644
    add-int v7, v6, v0

    shr-int/lit8 v4, v7, 0x1

    .line 1647
    :cond_2
    invoke-direct {p0, v2, v1, v5}, Landroid/widget/Editor;->getPrimaryHorizontal(Landroid/text/Layout;Landroid/text/Layout;I)F

    move-result v7

    invoke-direct {p0, v10, v6, v4, v7}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    .line 1649
    iget v7, p0, Landroid/widget/Editor;->mCursorCount:I

    if-ne v7, v8, :cond_0

    .line 1650
    invoke-virtual {v2, v5}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v7

    invoke-direct {p0, v9, v4, v0, v7}, Landroid/widget/Editor;->updateCursorPosition(IIIF)V

    goto :goto_0

    .end local v4           #middle:I
    :cond_3
    move v7, v9

    .line 1639
    goto :goto_1
.end method

.method public updateShowAsAction(Landroid/content/res/Configuration;)V
    .locals 14
    .parameter "config"

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x0

    .line 4829
    iget-object v8, p0, Landroid/widget/Editor;->mActionModeMenu:Landroid/view/Menu;

    if-nez v8, :cond_1

    .line 4865
    :cond_0
    return-void

    .line 4831
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor;->mActionModeMenu:Landroid/view/Menu;

    .line 4833
    .local v5, menu:Landroid/view/Menu;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lcom/android/internal/R$styleable;->ActionMenuItemView:[I

    const v11, 0x10102d8

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4836
    .local v0, a:Landroid/content/res/TypedArray;
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v7, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 4838
    .local v7, smallestScreenWidthDp:I
    const/16 v8, 0x258

    if-ge v7, v8, :cond_2

    iget v8, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 4840
    :cond_2
    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 4841
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 4842
    invoke-interface {v5, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4841
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4847
    .end local v2           #i:I
    :cond_3
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v1, v8, Landroid/util/DisplayMetrics;->density:F

    .line 4848
    .local v1, density:F
    iget-object v8, p0, Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x105004f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v0, v12, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 4850
    .local v4, mMinCellSize:I
    const/16 v6, 0x10

    .line 4852
    .local v6, rightMarginOfClose:I
    add-int/lit8 v8, v7, -0x10

    int-to-float v8, v8

    mul-float/2addr v8, v1

    float-to-int v8, v8

    div-int/2addr v8, v4

    add-int/lit8 v3, v8, -0x1

    .line 4854
    .local v3, mMaxActionModeItems:I
    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 4855
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 4856
    invoke-interface {v5, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    const/4 v9, 0x6

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4855
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4859
    .end local v2           #i:I
    :cond_4
    if-lez v3, :cond_0

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v8

    if-lt v8, v3, :cond_0

    .line 4860
    add-int/lit8 v2, v3, -0x1

    .restart local v2       #i:I
    :goto_2
    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 4861
    invoke-interface {v5, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v13}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 4860
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
