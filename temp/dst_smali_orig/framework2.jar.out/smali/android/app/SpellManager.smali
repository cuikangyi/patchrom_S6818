.class public Landroid/app/SpellManager;
.super Ljava/lang/Object;
.source "SpellManager.java"


# static fields
.field private static final DEBUG:Z = true

.field public static final INTENT_ACTION_SPELLSCROLL_CHANGED:Ljava/lang/String; = "android.spell.action.SPELLSCROLL_CHANGED"

.field private static final TAG:Ljava/lang/String; = "SpellManager"

.field private static mService:Landroid/app/ISpellManager;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/SpellManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/SpellManager;->mHandler:Landroid/os/Handler;

    const-string v0, "spell"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ISpellManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ISpellManager;

    move-result-object v0

    sput-object v0, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    return-void
.end method


# virtual methods
.method public cast(JLandroid/os/Bundle;)Z
    .locals 6
    .parameter "spellId"
    .parameter "userInput"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v3, p1, p2}, Landroid/app/ISpellManager;->getSpellById(J)Landroid/app/SpellScroll;

    move-result-object v1

    .local v1, info:Landroid/app/SpellScroll;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SpellScroll;->getSpell()Landroid/app/SpellScroll$Spell;

    move-result-object v3

    if-nez v3, :cond_1

    .end local v1           #info:Landroid/app/SpellScroll;
    :cond_0
    :goto_0
    return v2

    .restart local v1       #info:Landroid/app/SpellScroll;
    :cond_1
    invoke-virtual {v1}, Landroid/app/SpellScroll;->getSpell()Landroid/app/SpellScroll$Spell;

    move-result-object v3

    iget-object v4, p0, Landroid/app/SpellManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p3}, Landroid/app/SpellScroll$Spell;->cast(Landroid/content/Context;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .end local v1           #info:Landroid/app/SpellScroll;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SpellManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cast() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "spellScrollName"
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v8

    :cond_1
    :try_start_0
    sget-object v7, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v7, p1}, Landroid/app/ISpellManager;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v5

    .local v5, info:Landroid/app/SpellScroll;
    if-eqz v5, :cond_0

    iget-object v7, p0, Landroid/app/SpellManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/app/SpellScroll;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    .local v6, packageContext:Landroid/content/Context;
    invoke-virtual {v5}, Landroid/app/SpellScroll;->getIconId()I

    move-result v7

    if-ne v7, p2, :cond_3

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .local v3, cscAppIcon:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_3

    instance-of v7, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_2

    move-object v0, v3

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    move-object v8, v1

    goto :goto_0

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v2, canvas:Landroid/graphics/Canvas;
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    invoke-virtual {v3, v7, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v8, v1

    goto :goto_0

    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #cscAppIcon:Landroid/graphics/drawable/Drawable;
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_1
    move-object v8, v7

    goto :goto_0

    :cond_4
    move-object v7, v8

    goto :goto_1

    .end local v5           #info:Landroid/app/SpellScroll;
    .end local v6           #packageContext:Landroid/content/Context;
    :catch_0
    move-exception v4

    .local v4, e:Landroid/os/RemoteException;
    const-string v7, "SpellManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getBitmap() failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getInformationHash()I
    .locals 4

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1}, Landroid/app/ISpellManager;->getInformationHash()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInformationHash() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstantSpell(Ljava/lang/String;)J
    .locals 7
    .parameter "spellText"

    .prologue
    const-wide/16 v2, 0x0

    :try_start_0
    sget-object v4, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v4, p1}, Landroid/app/ISpellManager;->getInstantSpell(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v1

    .local v1, info:Landroid/app/SpellScroll;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SpellScroll;->getSpell()Landroid/app/SpellScroll$Spell;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/SpellScroll$Spell;->getId()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .end local v1           #info:Landroid/app/SpellScroll;
    :cond_0
    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SpellManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getInstantSpell() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getShallowSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 4
    .parameter "spellScrollName"

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1}, Landroid/app/ISpellManager;->getShallowSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShallowSpellScroll() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpell(J)Landroid/app/SpellScroll$Spell;
    .locals 6
    .parameter "spellId"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v3, p1, p2}, Landroid/app/ISpellManager;->getSpellById(J)Landroid/app/SpellScroll;

    move-result-object v1

    .local v1, info:Landroid/app/SpellScroll;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SpellScroll;->getSpell()Landroid/app/SpellScroll$Spell;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1           #info:Landroid/app/SpellScroll;
    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SpellManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpell() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSpell(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SpellScroll$Spell;
    .locals 6
    .parameter "spellScrollName"
    .parameter "spellName"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v3, p1, p2}, Landroid/app/ISpellManager;->getSpellMatchOnly(Ljava/lang/String;Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v1

    .local v1, info:Landroid/app/SpellScroll;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/app/SpellScroll;->getSpell(Ljava/lang/String;)Landroid/app/SpellScroll$Spell;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1           #info:Landroid/app/SpellScroll;
    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SpellManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSpell() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSpellName(J)Ljava/lang/String;
    .locals 4
    .parameter "spellId"

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1, p2}, Landroid/app/ISpellManager;->getSpellNameById(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellName() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellNames(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .parameter "spellScrollName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1}, Landroid/app/ISpellManager;->getSpellNames(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellNames() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    .locals 4
    .parameter "spellScrollName"

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1}, Landroid/app/ISpellManager;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellScroll() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellScrollName(J)Ljava/lang/String;
    .locals 4
    .parameter "spellId"

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1, p2}, Landroid/app/ISpellManager;->getSpellScrollNameById(J)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellScrollName() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellScrollNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1}, Landroid/app/ISpellManager;->getSpellScrollNames()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellScrolls() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpellScrollNamesByPriority(I)Ljava/util/List;
    .locals 4
    .parameter "priority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1}, Landroid/app/ISpellManager;->getSpellScrollNamesByPriority(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellScrollNamesByPriority() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpells(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "spellScrollName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/SpellScroll$Spell;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v3, p1}, Landroid/app/ISpellManager;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v1

    .local v1, scroll:Landroid/app/SpellScroll;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SpellScroll;->getSpells()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1           #scroll:Landroid/app/SpellScroll;
    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SpellManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getShallowSpellScroll() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .parameter "spellScrollName"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    :try_start_0
    sget-object v5, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v5, p1}, Landroid/app/ISpellManager;->getSpellScroll(Ljava/lang/String;)Landroid/app/SpellScroll;

    move-result-object v2

    .local v2, info:Landroid/app/SpellScroll;
    if-eqz v2, :cond_0

    iget-object v5, p0, Landroid/app/SpellManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/app/SpellScroll;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    .local v3, packageContext:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/app/SpellScroll;->getLabelId()I

    move-result v5

    if-ne v5, p2, :cond_2

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2}, Landroid/app/SpellScroll;->getTargetPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_2
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .end local v2           #info:Landroid/app/SpellScroll;
    .end local v3           #packageContext:Landroid/content/Context;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "SpellManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getString() failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isValidSpell(J)Z
    .locals 7
    .parameter "spellId"

    .prologue
    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v4, p1, p2}, Landroid/app/ISpellManager;->getSpellScrollNameById(J)Ljava/lang/String;

    move-result-object v2

    .local v2, spellScrollName:Ljava/lang/String;
    sget-object v4, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v4, p1, p2}, Landroid/app/ISpellManager;->getSpellNameById(J)Ljava/lang/String;

    move-result-object v1

    .local v1, spellName:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2, v1}, Landroid/app/SpellManager;->isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v1           #spellName:Ljava/lang/String;
    .end local v2           #spellScrollName:Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "SpellManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isValidSpell() failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "spellScrollName"
    .parameter "spellName"

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1, p2}, Landroid/app/ISpellManager;->isValidSpell(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isValidSpell() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isValidSpellScroll(Ljava/lang/String;)Z
    .locals 4
    .parameter "spellScrollName"

    .prologue
    :try_start_0
    sget-object v1, Landroid/app/SpellManager;->mService:Landroid/app/ISpellManager;

    invoke-interface {v1, p1}, Landroid/app/ISpellManager;->isValidSpellScroll(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SpellManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSpellScrolls() failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method
