.class Lcom/android/settings/InformationTicker$6;
.super Ljava/lang/Object;
.source "InformationTicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/InformationTicker;->showNotiOfChargesDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/InformationTicker;


# direct methods
.method constructor <init>(Lcom/android/settings/InformationTicker;)V
    .locals 0

    .prologue
    .line 729
    iput-object p1, p0, Lcom/android/settings/InformationTicker$6;->this$0:Lcom/android/settings/InformationTicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/android/settings/InformationTicker$6;->this$0:Lcom/android/settings/InformationTicker;

    #calls: Lcom/android/settings/InformationTicker;->updateFacebookState()V
    invoke-static {v0}, Lcom/android/settings/InformationTicker;->access$100(Lcom/android/settings/InformationTicker;)V

    .line 732
    return-void
.end method
