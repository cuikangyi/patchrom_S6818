.class Lcom/android/settings/PenHelpFragment$PenHelpItem$1;
.super Ljava/lang/Object;
.source "PenHelpFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PenHelpFragment$PenHelpItem;->usePlayButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/PenHelpFragment$PenHelpItem;


# direct methods
.method constructor <init>(Lcom/android/settings/PenHelpFragment$PenHelpItem;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem$1;->this$1:Lcom/android/settings/PenHelpFragment$PenHelpItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem$1;->this$1:Lcom/android/settings/PenHelpFragment$PenHelpItem;

    iget-object v1, v1, Lcom/android/settings/PenHelpFragment$PenHelpItem;->contentPlayBtn:Landroid/widget/ImageButton;

    const v2, 0x7f020410

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    iget-object v1, p0, Lcom/android/settings/PenHelpFragment$PenHelpItem$1;->this$1:Lcom/android/settings/PenHelpFragment$PenHelpItem;

    iget-object v1, v1, Lcom/android/settings/PenHelpFragment$PenHelpItem;->contentImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 243
    .local v0, ani:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 244
    return-void
.end method
