.class Lcom/android/settings/SatelliteViewLog$1;
.super Ljava/lang/Object;
.source "SatelliteViewLog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SatelliteViewLog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SatelliteViewLog;


# direct methods
.method constructor <init>(Lcom/android/settings/SatelliteViewLog;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/settings/SatelliteViewLog$1;->this$0:Lcom/android/settings/SatelliteViewLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/SatelliteViewLog$1;->this$0:Lcom/android/settings/SatelliteViewLog;

    #calls: Lcom/android/settings/SatelliteViewLog;->clearFile()V
    invoke-static {v0}, Lcom/android/settings/SatelliteViewLog;->access$000(Lcom/android/settings/SatelliteViewLog;)V

    .line 70
    return-void
.end method
