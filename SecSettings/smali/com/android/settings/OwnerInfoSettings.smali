.class public Lcom/android/settings/OwnerInfoSettings;
.super Landroid/app/DialogFragment;
.source "OwnerInfoSettings.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mEditText:Landroid/widget/EditText;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/OwnerInfoSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/OwnerInfoSettings;->showInputMethod()V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/16 v4, 0x41

    .line 83
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 84
    .local v2, res:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, info:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_0

    .line 86
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 88
    :cond_0
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v0

    .line 89
    .local v0, enabled:Z
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v4, 0x7f0b01bf

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    .line 90
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    const v4, 0x7f0b01be

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    .line 91
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 93
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 94
    :cond_1
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 95
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 96
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/settings/OwnerInfoSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/OwnerInfoSettings$2;-><init>(Lcom/android/settings/OwnerInfoSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/OwnerInfoSettings;->showInputMethod()V

    .line 103
    return-void
.end method

.method static newInstance(I)Lcom/android/settings/OwnerInfoSettings;
    .locals 3
    .parameter "title"

    .prologue
    .line 48
    new-instance v1, Lcom/android/settings/OwnerInfoSettings;

    invoke-direct {v1}, Lcom/android/settings/OwnerInfoSettings;-><init>()V

    .line 49
    .local v1, frag:Lcom/android/settings/OwnerInfoSettings;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 50
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 52
    return-object v1
.end method

.method private showInputMethod()V
    .locals 5

    .prologue
    .line 106
    const/4 v0, 0x1

    .line 107
    .local v0, delayOffset:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    const/16 v1, 0x78

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    if-ne v1, v2, :cond_0

    .line 108
    const-string v1, "OwnerInfoSettings"

    const-string v2, "now ldpi model multiple delay *5 Because of slow attach view"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v0, 0x5

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 114
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/OwnerInfoSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/OwnerInfoSettings$3;-><init>(Lcom/android/settings/OwnerInfoSettings;)V

    mul-int/lit8 v3, v0, 0x64

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/android/settings/OwnerInfoSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/OwnerInfoSettings$4;-><init>(Lcom/android/settings/OwnerInfoSettings;)V

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400a3

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    .line 65
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 66
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/OwnerInfoSettings;->initView(Landroid/view/View;)V

    .line 68
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/OwnerInfoSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/OwnerInfoSettings$1;-><init>(Lcom/android/settings/OwnerInfoSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 79
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 157
    const-string v1, "OwnerInfoSettings"

    const-string v2, "onDestroyView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 159
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 160
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    .line 161
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 146
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 150
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 151
    invoke-direct {p0}, Lcom/android/settings/OwnerInfoSettings;->showInputMethod()V

    .line 152
    return-void
.end method

.method saveToDb()V
    .locals 4

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 166
    .local v2, res:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, info:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    .line 168
    .local v1, isChecked:Z
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfo(Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/android/settings/OwnerInfoSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(Z)V

    .line 170
    return-void
.end method
