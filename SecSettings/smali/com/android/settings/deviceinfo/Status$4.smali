.class Lcom/android/settings/deviceinfo/Status$4;
.super Landroid/os/Handler;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 368
    const-string v2, "Status"

    const-string v3, "handleMessage"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 401
    :goto_0
    return-void

    .line 371
    :pswitch_0
    const-string v2, "Status"

    const-string v3, "USER_NAME_GET response incoming!!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "response"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/android/settings/deviceinfo/Status;->access$802([B)[B

    .line 375
    invoke-static {}, Lcom/android/settings/deviceinfo/Status;->access$800()[B

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/settings/deviceinfo/Status;->access$800()[B

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_1

    .line 376
    :cond_0
    const-string v2, "Status"

    const-string v3, "response is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 380
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    const-string v4, "user_name"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    #setter for: Lcom/android/settings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;
    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/Status;->access$902(Lcom/android/settings/deviceinfo/Status;Landroid/preference/Preference;)Landroid/preference/Preference;

    .line 382
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {}, Lcom/android/settings/deviceinfo/Status;->access$800()[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    #setter for: Lcom/android/settings/deviceinfo/Status;->NAI_length:I
    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/Status;->access$1002(Lcom/android/settings/deviceinfo/Status;I)I

    .line 383
    const/4 v1, 0x1

    .line 386
    .local v1, offset:I
    const-string v2, "Status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NAI_length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->NAI_length:I
    invoke-static {v4}, Lcom/android/settings/deviceinfo/Status;->access$1000(Lcom/android/settings/deviceinfo/Status;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->NAI_length:I
    invoke-static {v2}, Lcom/android/settings/deviceinfo/Status;->access$1000(Lcom/android/settings/deviceinfo/Status;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 388
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {}, Lcom/android/settings/deviceinfo/Status;->access$800()[B

    move-result-object v3

    add-int v4, v0, v1

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/Status;->access$1184(Lcom/android/settings/deviceinfo/Status;Ljava/lang/Object;)Ljava/lang/String;

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 391
    :cond_2
    const-string v2, "Status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user_name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/deviceinfo/Status;->access$1100(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/Status;->access$1100(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/Status;->access$1100(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    .line 393
    :cond_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/Status;->access$900(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, "<Not set>"

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 395
    :cond_4
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/Status;->access$900(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    #getter for: Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/deviceinfo/Status;->access$1100(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 369
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method
