.class public final enum Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;
.super Ljava/lang/Enum;
.source "TwHelpDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/helphub/dialog/TwHelpDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

.field public static final enum OPAQUE:Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

.field public static final enum OPAQUE_NO_MOVE:Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

.field public static final enum TRANSPARENT:Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    const-string v1, "OPAQUE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    .line 21
    new-instance v0, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    const-string v1, "TRANSPARENT"

    invoke-direct {v0, v1, v3}, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    .line 23
    new-instance v0, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    const-string v1, "OPAQUE_NO_MOVE"

    invoke-direct {v0, v1, v4}, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    sget-object v1, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;->OPAQUE:Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;->TRANSPARENT:Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;->OPAQUE_NO_MOVE:Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;->$VALUES:[Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    return-object v0
.end method

.method public static values()[Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;->$VALUES:[Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/helphub/dialog/TwHelpDialog$TouchMode;

    return-object v0
.end method
