.class Lcom/android/internal/policy/impl/sec/TickerWidget$1;
.super Landroid/os/Handler;
.source "TickerWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/TickerWidget;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 109
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 136
    :goto_0
    return-void

    .line 111
    :pswitch_0
    const-string v0, "TickerWidget"

    const-string v1, "handle MSG_SHOW_NEWS_REFRESH_FAILED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/sec/TickerWidget;->showNewsRefreshFailed()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$000(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    goto :goto_0

    .line 115
    :pswitch_1
    const-string v0, "TickerWidget"

    const-string v1, "handle MSG_SHOW_STOCK_REFRESH_FAILED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/sec/TickerWidget;->showStockRefreshFailed()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$100(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    goto :goto_0

    .line 119
    :pswitch_2
    const-string v0, "TickerWidget"

    const-string v1, "handle MSG_SHOW_PREVIOUS_NEWS_DATA"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/sec/TickerWidget;->showPreviousNewsData()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$200(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    goto :goto_0

    .line 123
    :pswitch_3
    const-string v0, "TickerWidget"

    const-string v1, "handle MSG_SHOW_PREVIOUS_STOCK_DATA"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/sec/TickerWidget;->showPreviousStockData()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$300(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    goto :goto_0

    .line 127
    :pswitch_4
    const-string v0, "TickerWidget"

    const-string v1, "handle MSG_SHOW_FACEBOOK_REFRESH_FAILED"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/sec/TickerWidget;->showFacebookRefreshFailed()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$400(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    goto :goto_0

    .line 131
    :pswitch_5
    const-string v0, "TickerWidget"

    const-string v1, "handle MSG_SHOW_PREVIOUS_FACEBOOK_DATA"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$1;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/sec/TickerWidget;->showPreviousFacebookData()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$500(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x12c0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
