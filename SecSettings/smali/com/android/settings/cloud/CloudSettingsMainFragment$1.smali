.class Lcom/android/settings/cloud/CloudSettingsMainFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "CloudSettingsMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cloud/CloudSettingsMainFragment;->registerCloudReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 425
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_CLOUD_STATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 430
    const-string v1, "CloudSettings"

    const-string v2, "Received current cloud settings - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #calls: Lcom/android/settings/cloud/CloudSettingsMainFragment;->dismissProgress()V
    invoke-static {v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    .line 433
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    const-string v2, "cloudSettings"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/cloud/CloudSettings;->getInstance(Landroid/os/Bundle;)Lcom/android/settings/cloud/CloudSettings;

    move-result-object v2

    #setter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v1, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$102(Lcom/android/settings/cloud/CloudSettingsMainFragment;Lcom/android/settings/cloud/CloudSettings;)Lcom/android/settings/cloud/CloudSettings;

    .line 436
    const-string v1, "CloudSettings"

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #calls: Lcom/android/settings/cloud/CloudSettingsMainFragment;->updatePreferences()V
    invoke-static {v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$200(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    .line 438
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #calls: Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudStorageUsage()V
    invoke-static {v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$300(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    .line 462
    .end local v0           #action:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 439
    .restart local v0       #action:Ljava/lang/String;
    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    #calls: Lcom/android/settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z
    invoke-static {v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$500(Lcom/android/settings/cloud/CloudSettingsMainFragment;Landroid/content/Context;)Z

    move-result v2

    #setter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mIsConnected:Z
    invoke-static {v1, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$402(Lcom/android/settings/cloud/CloudSettingsMainFragment;Z)Z

    goto :goto_0

    .line 441
    :cond_2
    const-string v1, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_STORAGE_USAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    const-string v1, "CloudSettings"

    const-string v2, "Received current cloud storage usage - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #calls: Lcom/android/settings/cloud/CloudSettingsMainFragment;->dismissProgress()V
    invoke-static {v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    .line 446
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v2

    #setter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v1, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$102(Lcom/android/settings/cloud/CloudSettingsMainFragment;Lcom/android/settings/cloud/CloudSettings;)Lcom/android/settings/cloud/CloudSettings;

    .line 447
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/cloud/CloudSettings;->isAccountSet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 449
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;

    move-result-object v1

    const-string v2, "cloudSettings"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/cloud/CloudSettings;->setStorageUsage(Landroid/os/Bundle;)V

    .line 452
    :cond_3
    const-string v1, "CloudSettings"

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/cloud/CloudSettings;->getStorageUsage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$600(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->getStorageUsage()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$702(Lcom/android/settings/cloud/CloudSettingsMainFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 456
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$600(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mStorage:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$700(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
