.class Lcom/android/settings/accounts/ChooseAccountActivity$2;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/ChooseAccountActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

.field final synthetic val$accountType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ChooseAccountActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountActivity$2;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    iput-object p2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$2;->val$accountType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 348
    const-string v0, "ChooseAccountActivity"

    const-string v1, "onPreferenceTreeClick : OK clicked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity$2;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity$2;->val$accountType:Ljava/lang/String;

    #calls: Lcom/android/settings/accounts/ChooseAccountActivity;->finishWithAccountType(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$200(Lcom/android/settings/accounts/ChooseAccountActivity;Ljava/lang/String;)V

    .line 350
    return-void
.end method