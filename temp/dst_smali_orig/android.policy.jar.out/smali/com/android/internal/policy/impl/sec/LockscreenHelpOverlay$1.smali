.class Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$1;
.super Landroid/os/Handler;
.source "LockscreenHelpOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$1;->this$0:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay$1;->this$0:Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;

    #calls: Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->handleMissedEventUpdate()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;->access$000(Lcom/android/internal/policy/impl/sec/LockscreenHelpOverlay;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12c2
        :pswitch_0
    .end packed-switch
.end method
