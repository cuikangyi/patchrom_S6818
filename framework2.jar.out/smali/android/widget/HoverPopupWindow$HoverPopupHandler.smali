.class Landroid/widget/HoverPopupWindow$HoverPopupHandler;
.super Landroid/os/Handler;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverPopupHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/HoverPopupWindow;)V
    .locals 0

    .prologue
    .line 1186
    iput-object p1, p0, Landroid/widget/HoverPopupWindow$HoverPopupHandler;->this$0:Landroid/widget/HoverPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/HoverPopupWindow;Landroid/widget/HoverPopupWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1186
    invoke-direct {p0, p1}, Landroid/widget/HoverPopupWindow$HoverPopupHandler;-><init>(Landroid/widget/HoverPopupWindow;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1194
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1203
    :goto_0
    return-void

    .line 1196
    :pswitch_0
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupHandler;->this$0:Landroid/widget/HoverPopupWindow;

    #calls: Landroid/widget/HoverPopupWindow;->showPopup()V
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$100(Landroid/widget/HoverPopupWindow;)V

    .line 1197
    const/4 v0, 0x2

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1200
    :pswitch_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$HoverPopupHandler;->this$0:Landroid/widget/HoverPopupWindow;

    #calls: Landroid/widget/HoverPopupWindow;->dismissPopup()V
    invoke-static {v0}, Landroid/widget/HoverPopupWindow;->access$000(Landroid/widget/HoverPopupWindow;)V

    goto :goto_0

    .line 1194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
