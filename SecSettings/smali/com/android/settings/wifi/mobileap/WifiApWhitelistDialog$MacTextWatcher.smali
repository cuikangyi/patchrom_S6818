.class Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;
.super Ljava/lang/Object;
.source "WifiApWhitelistDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MacTextWatcher"
.end annotation


# instance fields
.field private mIndex:I

.field private mTempMac:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;I)V
    .locals 0
    .parameter
    .parameter "index"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput p2, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    .line 216
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$000(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$100(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 221
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$100(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 223
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #getter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mEtMacArray:[Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$100(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 229
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    #calls: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->validate()V
    invoke-static {v0}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$200(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V

    .line 230
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->this$0:Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->mTextNoChange:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->access$002(Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 235
    if-eqz p1, :cond_0

    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog$MacTextWatcher;->mTempMac:Ljava/lang/String;

    .line 237
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 242
    return-void
.end method
