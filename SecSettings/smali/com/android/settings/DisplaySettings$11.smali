.class Lcom/android/settings/DisplaySettings$11;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DisplaySettings;->showSmartRatationGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;

.field final synthetic val$edit:Landroid/content/SharedPreferences$Editor;

.field final synthetic val$mcheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$11;->this$0:Lcom/android/settings/DisplaySettings;

    iput-object p2, p0, Lcom/android/settings/DisplaySettings$11;->val$edit:Landroid/content/SharedPreferences$Editor;

    iput-object p3, p0, Lcom/android/settings/DisplaySettings$11;->val$mcheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$11;->val$edit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pref_smart_rotation_noti"

    iget-object v2, p0, Lcom/android/settings/DisplaySettings$11;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1285
    iget-object v0, p0, Lcom/android/settings/DisplaySettings$11;->val$edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1286
    return-void
.end method
