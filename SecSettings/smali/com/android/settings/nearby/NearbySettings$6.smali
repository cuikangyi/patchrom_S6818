.class Lcom/android/settings/nearby/NearbySettings$6;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nearby/NearbySettings;->requestWelcomePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbySettings;

.field final synthetic val$welcomeCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/nearby/NearbySettings;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 826
    iput-object p1, p0, Lcom/android/settings/nearby/NearbySettings$6;->this$0:Lcom/android/settings/nearby/NearbySettings;

    iput-object p2, p0, Lcom/android/settings/nearby/NearbySettings$6;->val$welcomeCheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "button"
    .parameter "value"

    .prologue
    .line 829
    const-string v0, "AllshareSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllshareSetting: WelcomeCheck - onCheckedChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings$6;->val$welcomeCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 831
    return-void
.end method
