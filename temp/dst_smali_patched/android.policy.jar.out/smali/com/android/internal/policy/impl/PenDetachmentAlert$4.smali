.class Lcom/android/internal/policy/impl/PenDetachmentAlert$4;
.super Ljava/lang/Object;
.source "PenDetachmentAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PenDetachmentAlert;->playSoundOrVibration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

.field final synthetic val$ivt:[B


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;[B)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->val$ivt:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v1, "PenDetachmentAlert"

    const-string v2, "prepare looper"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mLooper:Landroid/os/Looper;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$302(Lcom/android/internal/policy/impl/PenDetachmentAlert;Landroid/os/Looper;)Landroid/os/Looper;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$800(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Landroid/os/SystemVibrator;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$800(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Landroid/os/SystemVibrator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->val$ivt:[B

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$800(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Landroid/os/SystemVibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$200(Lcom/android/internal/policy/impl/PenDetachmentAlert;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mAlertCount:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$202(Lcom/android/internal/policy/impl/PenDetachmentAlert;I)I

    :goto_1
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$4;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #calls: Lcom/android/internal/policy/impl/PenDetachmentAlert;->resetTimer()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$900(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    goto :goto_1
.end method