.class Landroid/view/WindowManagerImpl$CompatModeWrapper;
.super Ljava/lang/Object;
.source "WindowManagerImpl.java"

# interfaces
.implements Landroid/view/WindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompatModeWrapper"
.end annotation


# instance fields
.field private final mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

.field private final mDefaultDisplay:Landroid/view/Display;

.field private final mWindowManager:Landroid/view/WindowManagerImpl;


# direct methods
.method constructor <init>(Landroid/view/WindowManager;Landroid/view/CompatibilityInfoHolder;)V
    .locals 1
    .parameter "wm"
    .parameter "ci"

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    instance-of v0, p1, Landroid/view/WindowManagerImpl$CompatModeWrapper;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/WindowManagerImpl$CompatModeWrapper;

    .end local p1
    iget-object p1, p1, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    :goto_0
    iput-object p1, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    .line 140
    if-nez p2, :cond_1

    .line 141
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mDefaultDisplay:Landroid/view/Display;

    .line 148
    :goto_1
    iput-object p2, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    .line 149
    return-void

    .line 133
    .restart local p1
    :cond_0
    check-cast p1, Landroid/view/WindowManagerImpl;

    goto :goto_0

    .line 144
    .end local p1
    :cond_1
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/Display;->createCompatibleDisplay(ILandroid/view/CompatibilityInfoHolder;)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mDefaultDisplay:Landroid/view/Display;

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "view"
    .parameter "params"

    .prologue
    .line 153
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    iget-object v1, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v0, p1, p2, v1}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Landroid/view/CompatibilityInfoHolder;)V

    .line 154
    return-void
.end method

.method public getDefaultDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method public getGlobalSystemUiVisibility()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0}, Landroid/view/WindowManagerImpl;->getGlobalSystemUiVisibility()I

    move-result v0

    return v0
.end method

.method public isHardwareAccelerated()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0}, Landroid/view/WindowManagerImpl;->isHardwareAccelerated()Z

    move-result v0

    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 164
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 165
    return-void
.end method

.method public removeViewImmediate(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 174
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerImpl;->removeViewImmediate(Landroid/view/View;)V

    .line 175
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "view"
    .parameter "params"

    .prologue
    .line 158
    iget-object v0, p0, Landroid/view/WindowManagerImpl$CompatModeWrapper;->mWindowManager:Landroid/view/WindowManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    return-void
.end method
