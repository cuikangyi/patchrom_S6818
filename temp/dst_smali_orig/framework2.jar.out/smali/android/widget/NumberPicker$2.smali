.class Landroid/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #calls: Landroid/widget/NumberPicker;->hideSoftInput()V
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)V

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    .local v1, mKeyboard:I
    and-int/lit8 v2, v1, 0x1

    if-eq v2, v5, :cond_0

    and-int/lit8 v2, v1, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .end local v1           #mKeyboard:I
    :cond_1
    iget-object v2, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #getter for: Landroid/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x10203f9

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #calls: Landroid/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v2, v5}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #calls: Landroid/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v2, v4}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;Z)V

    goto :goto_0
.end method
