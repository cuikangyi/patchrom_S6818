.class final enum Lcom/android/settings/guide/GuideFragment$SettingsHeader;
.super Ljava/lang/Enum;
.source "GuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/guide/GuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SettingsHeader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/guide/GuideFragment$SettingsHeader;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/guide/GuideFragment$SettingsHeader;

.field public static final enum BLUETOOTH:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

.field public static final enum NONE:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

.field public static final enum WIFI:Lcom/android/settings/guide/GuideFragment$SettingsHeader;


# instance fields
.field private final mGuideMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

.field private final mHeaderId:J


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    const-string v1, "NONE"

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/guide/GuideFragment$SettingsHeader;-><init>(Ljava/lang/String;IJLcom/android/settings/guide/GuideFragment$GuideModes;)V

    sput-object v0, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->NONE:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    .line 103
    new-instance v3, Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    const-string v4, "WIFI"

    const-wide/32 v6, 0x7f0b042e

    sget-object v8, Lcom/android/settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/android/settings/guide/GuideFragment$GuideModes;

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/guide/GuideFragment$SettingsHeader;-><init>(Ljava/lang/String;IJLcom/android/settings/guide/GuideFragment$GuideModes;)V

    sput-object v3, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->WIFI:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    .line 105
    new-instance v3, Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    const-string v4, "BLUETOOTH"

    const-wide/32 v6, 0x7f0b0431

    sget-object v8, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/android/settings/guide/GuideFragment$GuideModes;

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/guide/GuideFragment$SettingsHeader;-><init>(Ljava/lang/String;IJLcom/android/settings/guide/GuideFragment$GuideModes;)V

    sput-object v3, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->BLUETOOTH:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    sget-object v1, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->NONE:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->WIFI:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->BLUETOOTH:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->$VALUES:[Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJLcom/android/settings/guide/GuideFragment$GuideModes;)V
    .locals 0
    .parameter
    .parameter
    .parameter "headerId"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/settings/guide/GuideFragment$GuideModes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 119
    iput-wide p3, p0, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->mHeaderId:J

    .line 120
    iput-object p5, p0, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->mGuideMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    .line 121
    return-void
.end method

.method static fromId(J)Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    .locals 7
    .parameter "id"

    .prologue
    .line 132
    sget-object v4, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->NONE:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    .line 134
    .local v4, retval:Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    invoke-static {}, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->values()[Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    move-result-object v0

    .local v0, arr$:[Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 135
    .local v2, item:Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    iget-wide v5, v2, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->mHeaderId:J

    cmp-long v5, v5, p0

    if-nez v5, :cond_1

    .line 136
    move-object v4, v2

    .line 141
    .end local v2           #item:Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    :cond_0
    return-object v4

    .line 134
    .restart local v2       #item:Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    .locals 1

    .prologue
    .line 99
    const-class v0, Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->$VALUES:[Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    return-object v0
.end method
