.class public Lcom/android/settings/AccessibilitySettings$ToggleSwitch;
.super Landroid/widget/Switch;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleSwitch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;
    }
.end annotation


# instance fields
.field private mOnBeforeListener:Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 1742
    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 1743
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;->onBeforeCheckedChanged(Lcom/android/settings/AccessibilitySettings$ToggleSwitch;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1756
    :goto_0
    return-void

    .line 1755
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setCheckedInternal(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 1759
    invoke-super {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1760
    return-void
.end method

.method public setOnBeforeCheckedChangeListener(Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1746
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->mOnBeforeListener:Lcom/android/settings/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;

    .line 1747
    return-void
.end method
