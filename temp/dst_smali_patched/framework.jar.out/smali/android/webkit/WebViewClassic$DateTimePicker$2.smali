.class Landroid/webkit/WebViewClassic$DateTimePicker$2;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic$DateTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebViewClassic$DateTimePicker;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic$DateTimePicker;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/webkit/WebViewClassic$DateTimePicker$2;->this$1:Landroid/webkit/WebViewClassic$DateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 2
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"

    .prologue
    iget-object v0, p0, Landroid/webkit/WebViewClassic$DateTimePicker$2;->this$1:Landroid/webkit/WebViewClassic$DateTimePicker;

    #setter for: Landroid/webkit/WebViewClassic$DateTimePicker;->mhour:I
    invoke-static {v0, p2}, Landroid/webkit/WebViewClassic$DateTimePicker;->access$3702(Landroid/webkit/WebViewClassic$DateTimePicker;I)I

    iget-object v0, p0, Landroid/webkit/WebViewClassic$DateTimePicker$2;->this$1:Landroid/webkit/WebViewClassic$DateTimePicker;

    #setter for: Landroid/webkit/WebViewClassic$DateTimePicker;->mminute:I
    invoke-static {v0, p3}, Landroid/webkit/WebViewClassic$DateTimePicker;->access$3802(Landroid/webkit/WebViewClassic$DateTimePicker;I)I

    iget-object v0, p0, Landroid/webkit/WebViewClassic$DateTimePicker$2;->this$1:Landroid/webkit/WebViewClassic$DateTimePicker;

    #getter for: Landroid/webkit/WebViewClassic$DateTimePicker;->isClear:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic$DateTimePicker;->access$3500(Landroid/webkit/WebViewClassic$DateTimePicker;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$DateTimePicker$2;->this$1:Landroid/webkit/WebViewClassic$DateTimePicker;

    #calls: Landroid/webkit/WebViewClassic$DateTimePicker;->updateTime()V
    invoke-static {v0}, Landroid/webkit/WebViewClassic$DateTimePicker;->access$3900(Landroid/webkit/WebViewClassic$DateTimePicker;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewClassic$DateTimePicker$2;->this$1:Landroid/webkit/WebViewClassic$DateTimePicker;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/WebViewClassic$DateTimePicker;->isClear:Z
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic$DateTimePicker;->access$3502(Landroid/webkit/WebViewClassic$DateTimePicker;Z)Z

    goto :goto_0
.end method