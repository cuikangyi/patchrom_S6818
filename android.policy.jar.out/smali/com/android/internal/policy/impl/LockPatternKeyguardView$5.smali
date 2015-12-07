.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/LockPatternKeyguardView$VoiceUnlockViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0

    .prologue
    .line 1716
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addVoiceUnlockView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1721
    return-void
.end method

.method public removeVoiceUnlockView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$5;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1726
    return-void
.end method
