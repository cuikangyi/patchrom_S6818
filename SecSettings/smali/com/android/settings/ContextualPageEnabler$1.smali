.class Lcom/android/settings/ContextualPageEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "ContextualPageEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ContextualPageEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ContextualPageEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/ContextualPageEnabler;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/ContextualPageEnabler$1;->this$0:Lcom/android/settings/ContextualPageEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 41
    .local v1, contextualstate:I
    const-string v2, "android.settings.CONTEXTUALPAGE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 42
    const-string v2, "ContextualPageEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.settings.CONTEXTUALPAGE_CHANGED is received state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    if-ne v1, v5, :cond_1

    .line 44
    iget-object v2, p0, Lcom/android/settings/ContextualPageEnabler$1;->this$0:Lcom/android/settings/ContextualPageEnabler;

    #getter for: Lcom/android/settings/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/ContextualPageEnabler;->access$000(Lcom/android/settings/ContextualPageEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ContextualPageEnabler$1;->this$0:Lcom/android/settings/ContextualPageEnabler;

    #getter for: Lcom/android/settings/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/ContextualPageEnabler;->access$000(Lcom/android/settings/ContextualPageEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 48
    :cond_2
    const-string v2, "android.settings.CONTEXTUALPAGE_SWITCH_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const-string v2, "ContextualPageEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.settings.CONTEXTUALPAGE_SWITCH_CHANGED is received state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    if-ne v1, v5, :cond_3

    .line 52
    iget-object v2, p0, Lcom/android/settings/ContextualPageEnabler$1;->this$0:Lcom/android/settings/ContextualPageEnabler;

    #getter for: Lcom/android/settings/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/ContextualPageEnabler;->access$000(Lcom/android/settings/ContextualPageEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    .line 54
    :cond_3
    iget-object v2, p0, Lcom/android/settings/ContextualPageEnabler$1;->this$0:Lcom/android/settings/ContextualPageEnabler;

    #getter for: Lcom/android/settings/ContextualPageEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/settings/ContextualPageEnabler;->access$000(Lcom/android/settings/ContextualPageEnabler;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
