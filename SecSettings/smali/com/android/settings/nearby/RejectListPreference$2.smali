.class Lcom/android/settings/nearby/RejectListPreference$2;
.super Landroid/os/Handler;
.source "RejectListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/RejectListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/RejectListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/RejectListPreference;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/settings/nearby/RejectListPreference$2;->this$0:Lcom/android/settings/nearby/RejectListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    .line 97
    const-string v7, "AllshareSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RejectListPreference: handleMessage() : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_start_0
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 126
    const-string v7, "AllshareSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RejectListPreference: Undefined handler message :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v7, p0, Lcom/android/settings/nearby/RejectListPreference$2;->this$0:Lcom/android/settings/nearby/RejectListPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/settings/nearby/RejectListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 104
    iget-object v7, p0, Lcom/android/settings/nearby/RejectListPreference$2;->this$0:Lcom/android/settings/nearby/RejectListPreference;

    invoke-virtual {v7}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 105
    .local v1, dialog:Landroid/app/AlertDialog;
    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 109
    .local v5, listView:Landroid/widget/ListView;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 110
    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 109
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 113
    :cond_1
    const/4 v7, -0x1

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    .line 114
    .local v6, positiveButton:Landroid/widget/Button;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 116
    new-instance v4, Lcom/android/settings/nearby/ListItemListener;

    invoke-direct {v4, v6}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 117
    .local v4, listItemListener:Lcom/android/settings/nearby/ListItemListener;
    invoke-virtual {v5, v4}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    new-instance v0, Lcom/android/settings/nearby/DeleteButtonListener;

    iget-object v7, p0, Lcom/android/settings/nearby/RejectListPreference$2;->this$0:Lcom/android/settings/nearby/RejectListPreference;

    invoke-virtual {v7}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v0, v4, v1, v7, v8}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 121
    .local v0, deletebuttonlistener:Lcom/android/settings/nearby/DeleteButtonListener;
    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v0           #deletebuttonlistener:Lcom/android/settings/nearby/DeleteButtonListener;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v3           #i:I
    .end local v4           #listItemListener:Lcom/android/settings/nearby/ListItemListener;
    .end local v5           #listView:Landroid/widget/ListView;
    .end local v6           #positiveButton:Landroid/widget/Button;
    :catch_0
    move-exception v2

    .line 130
    .local v2, e:Ljava/lang/Exception;
    const-string v7, "AllshareSetting"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RejectListPreference: handleMessage EXCEPTION"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_0
    .end packed-switch
.end method
