.class Lcom/android/settings/fmm/SimChangeAlert$5;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/SimChangeAlert;->showNotificationChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/SimChangeAlert;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/SimChangeAlert;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert$5;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    iput-object p2, p0, Lcom/android/settings/fmm/SimChangeAlert$5;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 265
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$5;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_alert"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 266
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$5;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    invoke-virtual {v0}, Lcom/android/settings/fmm/SimChangeAlert;->DoSave()Z

    .line 267
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$5;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    sput-boolean v2, Lcom/android/settings/fmm/SimChangeAlert;->chkboxFlag:Z

    .line 270
    :cond_0
    return-void
.end method
