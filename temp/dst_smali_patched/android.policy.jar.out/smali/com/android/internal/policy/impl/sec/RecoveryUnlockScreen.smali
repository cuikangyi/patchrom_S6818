.class public Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;
.super Landroid/widget/LinearLayout;
.source "RecoveryUnlockScreen.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/internal/policy/impl/KeyguardScreen;


# static fields
.field private static final TAG:Ljava/lang/String; = "RecoveryUnlockScreen"


# instance fields
.field private final RECOVERY_PASSWORD_ATTEMPTS:I

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancelButton:Landroid/widget/Button;

.field private final mCreationHardKeyboardHidden:I

.field private final mCreationOrientation:I

.field mImeButtonVisible:Z

.field private final mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private final mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mPasswordEntry:Landroid/widget/EditText;

.field private mRecoverButton:Landroid/widget/Button;

.field private mResuming:Z

.field private final mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private final mUseSystemIME:Z

.field private recoveryAttempt:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v5, 0x1

    const/4 v9, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mUseSystemIME:Z

    iput v5, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->RECOVERY_PASSWORD_ATTEMPTS:I

    iput v9, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->recoveryAttempt:I

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mImeButtonVisible:Z

    iget v0, p2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCreationHardKeyboardHidden:I

    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCreationOrientation:I

    iput-object p4, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .local v7, layoutInflater:Landroid/view/LayoutInflater;
    iget v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCreationOrientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const v0, 0x1090084

    invoke-virtual {v7, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_0
    new-instance v0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;-><init>(Landroid/view/View;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const v0, 0x1020234

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const v0, 0x1020381

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-direct {v0, p1, v1, p0, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x1070026

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setVibratePattern(I)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    new-instance v1, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x1020390

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mRecoverButton:Landroid/widget/Button;

    const v0, 0x1020387

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCancelButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mRecoverButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$4;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$4;-><init>(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x1020384

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .local v8, switchImeButton:Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .local v6, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mImeButtonVisible:Z

    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    invoke-direct {p0, v6, v9}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$5;

    invoke-direct {v0, p0, v6}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$5;-><init>(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const/high16 v0, 0x4c00

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .end local v6           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v8           #switchImeButton:Landroid/view/View;
    :cond_1
    const v0, 0x1090083

    invoke-virtual {v7, v0, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    :cond_2
    move v0, v9

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mResuming:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->verifyPasswordAndUnlock()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->recoveryAttempt:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardView;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    return-object v0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$6;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$6;-><init>(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;JJ)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .local v2, filteredImisCount:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .local v0, auxCount:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .local v7, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v7           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .local v6, nonAuxCount:I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #auxCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #nonAuxCount:I
    .end local v8           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private verifyPasswordAndUnlock()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, entry:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lock_Recovery_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .local v0, bRecovery:Z
    if-eqz v0, :cond_1

    const-string v2, "RecoveryUnlockScreen"

    const-string v3, "Success to set LOCK_RECOVERY_ENABLED"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .end local v0           #bRecovery:Z
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .restart local v0       #bRecovery:Z
    :cond_1
    const-string v2, "RecoveryUnlockScreen"

    const-string v3, "Failed to set LOCK_RECOVERY_ENABLED"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #bRecovery:Z
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->recoveryAttempt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->recoveryAttempt:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->recoveryAttempt:I

    rem-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v2, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportDeviceWipe(I)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCreationOrientation:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCreationOrientation:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCreationOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "RecoveryUnlockScreen"

    const-string v2, "Layout issue break out condition, but execute workaround code"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCreationOrientation:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v1, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCreationHardKeyboardHidden:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->recreateMe(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->verifyPasswordAndUnlock()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyboardChange(Z)V
    .locals 2
    .parameter "isKeyboardOpen"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onPause()V

    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mResuming:Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->onResume()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .local v0, deadline:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->handleAttemptLockout(J)V

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mResuming:Z

    return-void
.end method
