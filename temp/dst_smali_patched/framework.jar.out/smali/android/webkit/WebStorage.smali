.class public Landroid/webkit/WebStorage;
.super Ljava/lang/Object;
.source "WebStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebStorage$Origin;,
        Landroid/webkit/WebStorage$QuotaUpdater;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/webkit/WebStorage;
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getWebStorage()Landroid/webkit/WebStorage;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAllData()V
    .locals 0

    .prologue
    return-void
.end method

.method public deleteOrigin(Ljava/lang/String;)V
    .locals 0
    .parameter "origin"

    .prologue
    return-void
.end method

.method public getOrigins(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/util/Map;>;"
    return-void
.end method

.method public getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .parameter "origin"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/Long;>;"
    return-void
.end method

.method public getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .parameter "origin"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Ljava/lang/Long;>;"
    return-void
.end method

.method public setQuotaForOrigin(Ljava/lang/String;J)V
    .locals 0
    .parameter "origin"
    .parameter "quota"

    .prologue
    return-void
.end method
