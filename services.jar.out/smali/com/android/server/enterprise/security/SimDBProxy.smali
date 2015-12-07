.class Lcom/android/server/enterprise/security/SimDBProxy;
.super Ljava/lang/Object;
.source "SimDBProxy.java"


# static fields
.field private static mSimDBProxy:Lcom/android/server/enterprise/security/SimDBProxy;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/enterprise/security/SimDBProxy;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/security/SimDBProxy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/security/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 44
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/security/SimDBProxy;
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    sget-object v0, Lcom/android/server/enterprise/security/SimDBProxy;->mSimDBProxy:Lcom/android/server/enterprise/security/SimDBProxy;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/server/enterprise/security/SimDBProxy;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/security/SimDBProxy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/security/SimDBProxy;->mSimDBProxy:Lcom/android/server/enterprise/security/SimDBProxy;

    .line 50
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/security/SimDBProxy;->mSimDBProxy:Lcom/android/server/enterprise/security/SimDBProxy;

    return-object v0
.end method


# virtual methods
.method addSimcard(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "uid"
    .parameter "iccid"
    .parameter "pincode"

    .prologue
    .line 55
    iget-object v2, p0, Lcom/android/server/enterprise/security/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "SimTable"

    const-string v4, "SimIccId"

    invoke-virtual {v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, aUid:I
    if-ne v0, p1, :cond_0

    .line 59
    const/4 v2, 0x1

    .line 68
    :goto_0
    return v2

    .line 61
    :cond_0
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 62
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v1, cv:Landroid/content/ContentValues;
    const-string v2, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v2, "SimIccId"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "SimPinCode"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v2, p0, Lcom/android/server/enterprise/security/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "SimTable"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    goto :goto_0

    .line 68
    .end local v1           #cv:Landroid/content/ContentValues;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method getAdminBySimcard(Ljava/lang/String;)I
    .locals 3
    .parameter "iccId"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/server/enterprise/security/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SimTable"

    const-string v2, "SimIccId"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method getPincode(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "uid"
    .parameter "iccid"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/server/enterprise/security/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SimTable"

    const-string v3, "SimIccId"

    const-string v5, "SimPinCode"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPincode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "iccid"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/enterprise/security/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SimTable"

    const-string v2, "SimIccId"

    const-string v3, "SimPinCode"

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasAnySimcard()Z
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/server/enterprise/security/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SimTable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeSimcard(ILjava/lang/String;)Z
    .locals 3
    .parameter "uid"
    .parameter "iccid"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/enterprise/security/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SimTable"

    const-string v2, "SimIccId"

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method removeSimcardsByAdmin(I)Z
    .locals 2
    .parameter "uid"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/enterprise/security/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SimTable"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdmin(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method setPincode(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "uid"
    .parameter "iccid"
    .parameter "pin"

    .prologue
    .line 82
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 83
    .local v5, cv:Landroid/content/ContentValues;
    const-string v0, "SimPinCode"

    invoke-virtual {v5, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/server/enterprise/security/SimDBProxy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SimTable"

    const-string v3, "SimIccId"

    move v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method
