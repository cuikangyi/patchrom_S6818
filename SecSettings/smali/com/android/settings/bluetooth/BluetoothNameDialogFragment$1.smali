.class Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothNameDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/high16 v4, -0x8000

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->updateDeviceName()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 104
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    if-nez v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->updateDeviceName()V

    goto :goto_0

    .line 109
    :cond_2
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    .line 114
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 115
    .local v1, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;->mDeviceNameView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 117
    .end local v1           #inputManager:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNameDialogFragment$1;->this$0:Lcom/android/settings/bluetooth/BluetoothNameDialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0
.end method
