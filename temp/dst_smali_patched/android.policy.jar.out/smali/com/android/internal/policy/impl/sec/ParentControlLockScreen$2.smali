.class Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$2;
.super Ljava/lang/Object;
.source "ParentControlLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$2;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    iput-object p2, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$2;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$2;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->access$200(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method
