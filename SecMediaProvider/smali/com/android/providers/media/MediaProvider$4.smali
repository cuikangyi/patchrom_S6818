.class Lcom/android/providers/media/MediaProvider$4;
.super Ljava/lang/Object;
.source "MediaProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CustomFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback([Ljava/lang/String;)V
    .locals 5
    .parameter "args"

    .prologue
    .line 543
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    iget-object v2, v2, Lcom/android/providers/media/MediaProvider;->mDirectoryCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 546
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mDisableHomeSyncObjectCallbacks:Z
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->access$800(Lcom/android/providers/media/MediaProvider;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 548
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    #calls: Lcom/android/providers/media/MediaProvider;->sendSpcObjectRemoved(J)V
    invoke-static {v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->access$1500(Lcom/android/providers/media/MediaProvider;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mDisableMtpObjectCallbacks:Z
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->access$700(Lcom/android/providers/media/MediaProvider;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 566
    :cond_1
    :goto_1
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NumberFormatException in mObjectRemovedCallback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 558
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    #getter for: Lcom/android/providers/media/MediaProvider;->mMtpService:Lcom/android/providers/media/IMtpService;
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->access$1600(Lcom/android/providers/media/MediaProvider;)Lcom/android/providers/media/IMtpService;

    move-result-object v1

    .line 559
    .local v1, mtpService:Lcom/android/providers/media/IMtpService;
    if-eqz v1, :cond_1

    .line 561
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$4;->this$0:Lcom/android/providers/media/MediaProvider;

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    #calls: Lcom/android/providers/media/MediaProvider;->sendObjectRemoved(J)V
    invoke-static {v2, v3, v4}, Lcom/android/providers/media/MediaProvider;->access$1700(Lcom/android/providers/media/MediaProvider;J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 562
    :catch_1
    move-exception v0

    .line 563
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NumberFormatException in mObjectRemovedCallback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
