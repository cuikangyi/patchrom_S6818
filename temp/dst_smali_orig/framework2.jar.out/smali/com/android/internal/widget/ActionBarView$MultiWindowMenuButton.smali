.class Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;
.super Landroid/widget/ImageButton;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowMenuButton"
.end annotation


# static fields
.field private static final BACKGROUND_MULTI_WINDOW_MENU:Ljava/lang/String; = "com.sec.android.multiwindow.actionMultiWindowButtonBackground"

.field private static final DRAWABLE_MULTI_WINDOW_MENU:Ljava/lang/String; = "com.sec.android.multiwindow.actionMultiWindowButtonDrawable"


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ActionBarView;Landroid/content/Context;)V
    .locals 15
    .parameter
    .parameter "context"

    .prologue
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->this$0:Lcom/android/internal/widget/ActionBarView;

    const/4 v13, 0x0

    const v14, 0x10103cd

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v13, v14}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object/from16 v0, p2

    instance-of v13, v0, Landroid/app/Activity;

    if-eqz v13, :cond_4

    move-object/from16 v1, p2

    check-cast v1, Landroid/app/Activity;

    .local v1, a:Landroid/app/Activity;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .local v11, pm:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .local v10, mIconDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .local v9, mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    .local v12, resources:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v13

    const/16 v14, 0x80

    invoke-virtual {v11, v13, v14}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .local v6, cpInfo:Landroid/content/pm/ComponentInfo;
    if-eqz v6, :cond_1

    :try_start_1
    iget-object v13, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    iget-object v2, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .local v2, activityMetaData:Landroid/os/Bundle;
    if-eqz v2, :cond_1

    const-string v13, "com.sec.android.multiwindow.actionMultiWindowButtonDrawable"

    const/4 v14, -0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .local v8, iconId:I
    const-string v13, "com.sec.android.multiwindow.actionMultiWindowButtonBackground"

    const/4 v14, -0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .local v5, backcgroundId:I
    :try_start_2
    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {p0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-virtual {p0, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v2           #activityMetaData:Landroid/os/Bundle;
    .end local v5           #backcgroundId:I
    .end local v6           #cpInfo:Landroid/content/pm/ComponentInfo;
    .end local v8           #iconId:I
    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    if-nez v9, :cond_4

    :cond_2
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x80

    invoke-virtual {v11, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .local v3, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_4

    iget-object v4, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .local v4, applicationMetaData:Landroid/os/Bundle;
    if-eqz v4, :cond_4

    const-string v13, "com.sec.android.multiwindow.actionMultiWindowButtonDrawable"

    const/4 v14, -0x1

    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .restart local v8       #iconId:I
    const-string v13, "com.sec.android.multiwindow.actionMultiWindowButtonBackground"

    const/4 v14, -0x1

    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    move-result v5

    .restart local v5       #backcgroundId:I
    if-eqz v12, :cond_4

    if-nez v10, :cond_3

    :try_start_5
    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {p0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_3
    :goto_2
    if-nez v9, :cond_4

    :try_start_6
    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {p0, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    .end local v1           #a:Landroid/app/Activity;
    .end local v3           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #applicationMetaData:Landroid/os/Bundle;
    .end local v5           #backcgroundId:I
    .end local v8           #iconId:I
    .end local v9           #mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    .end local v10           #mIconDrawable:Landroid/graphics/drawable/Drawable;
    .end local v11           #pm:Landroid/content/pm/PackageManager;
    .end local v12           #resources:Landroid/content/res/Resources;
    :cond_4
    :goto_3
    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Landroid/view/View;->setClickable(Z)V

    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Landroid/view/View;->setLongClickable(Z)V

    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Landroid/view/View;->setFocusable(Z)V

    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .restart local v1       #a:Landroid/app/Activity;
    .restart local v2       #activityMetaData:Landroid/os/Bundle;
    .restart local v5       #backcgroundId:I
    .restart local v6       #cpInfo:Landroid/content/pm/ComponentInfo;
    .restart local v8       #iconId:I
    .restart local v9       #mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v10       #mIconDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v11       #pm:Landroid/content/pm/PackageManager;
    .restart local v12       #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v7

    .local v7, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_7
    const-string v13, "ActionBarView"

    const-string v14, "Multi window menu button icon is not provided on activity meta-data. Default icon will be used."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .end local v2           #activityMetaData:Landroid/os/Bundle;
    .end local v5           #backcgroundId:I
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v8           #iconId:I
    :catch_1
    move-exception v7

    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_8
    const-string v13, "ActionBarView"

    const-string v14, "application resource not found!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .end local v6           #cpInfo:Landroid/content/pm/ComponentInfo;
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v7

    .restart local v7       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "ActionBarView"

    const-string v14, "Activity component name not found!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #activityMetaData:Landroid/os/Bundle;
    .restart local v5       #backcgroundId:I
    .restart local v6       #cpInfo:Landroid/content/pm/ComponentInfo;
    .restart local v8       #iconId:I
    :catch_3
    move-exception v7

    .local v7, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_9
    const-string v13, "ActionBarView"

    const-string v14, "Multi window menu button BG is not provided on activity meta-data. Default BG will be used."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    .end local v2           #activityMetaData:Landroid/os/Bundle;
    .end local v6           #cpInfo:Landroid/content/pm/ComponentInfo;
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v3       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v4       #applicationMetaData:Landroid/os/Bundle;
    :catch_4
    move-exception v7

    .restart local v7       #e:Landroid/content/res/Resources$NotFoundException;
    :try_start_a
    const-string v13, "ActionBarView"

    const-string v14, "Multi window menu button icon is not provided on application meta-data. Default icon will be used"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_2

    .end local v3           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #applicationMetaData:Landroid/os/Bundle;
    .end local v5           #backcgroundId:I
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v8           #iconId:I
    :catch_5
    move-exception v7

    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "ActionBarView"

    const-string v14, "application package name not found!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v4       #applicationMetaData:Landroid/os/Bundle;
    .restart local v5       #backcgroundId:I
    .restart local v8       #iconId:I
    :catch_6
    move-exception v7

    .local v7, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_b
    const-string v13, "ActionBarView"

    const-string v14, "Multi window menu button BG is not provided on application meta-data. Default BG will be used"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_3
.end method


# virtual methods
.method public performClick()Z
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0, v6}, Landroid/view/View;->playSoundEffect(I)V

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->this$0:Lcom/android/internal/widget/ActionBarView;

    #calls: Lcom/android/internal/widget/ActionBarView;->getWindowMode()I
    invoke-static {v4}, Lcom/android/internal/widget/ActionBarView;->access$1500(Lcom/android/internal/widget/ActionBarView;)I

    move-result v3

    .local v3, windowMode:I
    const/4 v0, 0x0

    .local v0, arrangeMode:I
    const v4, 0xffffff

    and-int/2addr v3, v4

    const/high16 v4, 0x200

    or-int/2addr v3, v4

    const v4, -0x800001

    and-int/2addr v3, v4

    const v4, -0x200001

    and-int/2addr v3, v4

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->setWindowMode(IZ)V

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v0, v4, -0x401

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v2

    .local v2, winInfo:Landroid/os/Bundle;
    if-ne v0, v7, :cond_2

    const-string v4, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_1
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string v4, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .end local v2           #winInfo:Landroid/os/Bundle;
    :cond_3
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/content/ContextWrapper;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/content/ContextWrapper;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .local v1, ctx:Landroid/content/Context;
    if-eqz v1, :cond_0

    instance-of v4, v1, Landroid/app/Activity;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4, v3, v5}, Landroid/app/Activity;->setWindowMode(IZ)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v0, v4, -0x401

    move-object v4, v1

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v2

    .restart local v2       #winInfo:Landroid/os/Bundle;
    if-ne v0, v7, :cond_4

    const-string v4, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_2
    check-cast v1, Landroid/app/Activity;

    .end local v1           #ctx:Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .restart local v1       #ctx:Landroid/content/Context;
    :cond_4
    const-string v4, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public performLongClick()Z
    .locals 14

    .prologue
    const/16 v13, 0x35

    const/4 v12, 0x0

    const/4 v11, 0x1

    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_0
    return v11

    :cond_0
    const/4 v8, 0x2

    new-array v5, v8, [I

    .local v5, screenPos:[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p0, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    .local v7, width:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .local v3, height:I
    aget v8, v5, v11

    div-int/lit8 v9, v3, 0x2

    add-int v4, v8, v9

    .local v4, midy:I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v6, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v6, screenWidth:I
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v1, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .local v0, cheatSheet:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v9, 0x2d0

    if-lt v8, v9, :cond_1

    aget v8, v5, v12

    sub-int v8, v6, v8

    div-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    aget v9, v5, v11

    add-int/2addr v9, v3

    invoke-virtual {v0, v13, v8, v9}, Landroid/widget/Toast;->setGravity(III)V

    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v12}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_0

    :cond_1
    aget v8, v5, v12

    sub-int v8, v6, v8

    div-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    aget v9, v5, v11

    add-int/2addr v9, v3

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {v0, v13, v8, v9}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method
