.class Lcom/android/settings/LockScreenWallpaper$ItemLongClickListener;
.super Ljava/lang/Object;
.source "LockScreenWallpaper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LockScreenWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockScreenWallpaper;


# direct methods
.method constructor <init>(Lcom/android/settings/LockScreenWallpaper;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/android/settings/LockScreenWallpaper$ItemLongClickListener;->this$0:Lcom/android/settings/LockScreenWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 301
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/LockScreenWallpaper$ItemLongClickListener;->this$0:Lcom/android/settings/LockScreenWallpaper;

    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper$ItemLongClickListener;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/settings/LockScreenWallpaper;->access$000(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v0}, Lcom/android/settings/LockScreenWallpaper;->showAppDetails(Landroid/content/pm/ResolveInfo;)V

    .line 302
    const/4 v0, 0x1

    return v0
.end method
