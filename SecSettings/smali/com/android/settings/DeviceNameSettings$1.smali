.class Lcom/android/settings/DeviceNameSettings$1;
.super Ljava/lang/Object;
.source "DeviceNameSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DeviceNameSettings;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DeviceNameSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DeviceNameSettings;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/DeviceNameSettings$1;->this$0:Lcom/android/settings/DeviceNameSettings;

    invoke-virtual {v0}, Lcom/android/settings/DeviceNameSettings;->saveToDb()V

    .line 72
    return-void
.end method
