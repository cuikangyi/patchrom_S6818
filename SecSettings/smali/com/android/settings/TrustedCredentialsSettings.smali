.class public Lcom/android/settings/TrustedCredentialsSettings;
.super Landroid/app/Fragment;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsSettings$5;,
        Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;,
        Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;,
        Lcom/android/settings/TrustedCredentialsSettings$CertHolder;,
        Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;,
        Lcom/android/settings/TrustedCredentialsSettings$Tab;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCertDialog:Landroid/app/Dialog;

.field protected mEdmRefreshUiReceiver:Landroid/content/BroadcastReceiver;

.field private mHasPaused:Z

.field private final mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 62
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;

    .line 63
    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 152
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    .line 444
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mHasPaused:Z

    .line 446
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/TrustedCredentialsSettings$4;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mEdmRefreshUiReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/TrustedCredentialsSettings;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/settings/TrustedCredentialsSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/settings/TrustedCredentialsSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mHasPaused:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/settings/TrustedCredentialsSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mHasPaused:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/settings/TrustedCredentialsSettings;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method private addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V
    .locals 6
    .parameter "tab"

    .prologue
    .line 167
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    #getter for: Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$700(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    #getter for: Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$600(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    #getter for: Lcom/android/settings/TrustedCredentialsSettings$Tab;->mView:I
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$500(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 170
    .local v2, systemSpec:Landroid/widget/TabHost$TabSpec;
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 172
    iget-object v3, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    #getter for: Lcom/android/settings/TrustedCredentialsSettings$Tab;->mList:I
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$800(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 173
    .local v1, lv:Landroid/widget/ListView;
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, v3}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    .line 174
    .local v0, adapter:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 175
    new-instance v3, Lcom/android/settings/TrustedCredentialsSettings$1;

    invoke-direct {v3, p0, v0}, Lcom/android/settings/TrustedCredentialsSettings$1;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 180
    return-void
.end method

.method private showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 10
    .parameter "certHolder"

    .prologue
    const/4 v9, 0x0

    .line 349
    #getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$2600(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Landroid/net/http/SslCertificate;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v6

    .line 350
    .local v6, view:Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v7, 0x10406b8

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 352
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 353
    const v7, 0x104000a

    new-instance v8, Lcom/android/settings/TrustedCredentialsSettings$2;

    invoke-direct {v8, p0}, Lcom/android/settings/TrustedCredentialsSettings$2;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 358
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 360
    .local v2, certDialog:Landroid/app/Dialog;
    const v7, 0x102040c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 361
    .local v0, body:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 362
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f040108

    invoke-virtual {v4, v7, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 365
    .local v5, removeButton:Landroid/widget/Button;
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 368
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v3

    .line 369
    .local v3, cp:Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    #getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    #getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$2700(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->isCaCertificateDisabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 370
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 373
    :cond_0
    #getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v7

    #calls: Lcom/android/settings/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v7, p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$2800(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 374
    new-instance v7, Lcom/android/settings/TrustedCredentialsSettings$3;

    invoke-direct {v7, p0, p1, v2}, Lcom/android/settings/TrustedCredentialsSettings$3;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 402
    iput-object v2, p0, Lcom/android/settings/TrustedCredentialsSettings;->mCertDialog:Landroid/app/Dialog;

    .line 404
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "parent"
    .parameter "savedInstanceState"

    .prologue
    .line 158
    const v0, 0x7f040109

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    .line 159
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 160
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/settings/TrustedCredentialsSettings;->addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    .line 162
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/settings/TrustedCredentialsSettings;->addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 473
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 474
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mEdmRefreshUiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mHasPaused:Z

    .line 476
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 466
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 467
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TrustedCredentialsSettings;->mEdmRefreshUiReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "edm.intent.action.REFRESH_UI"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 469
    return-void
.end method
