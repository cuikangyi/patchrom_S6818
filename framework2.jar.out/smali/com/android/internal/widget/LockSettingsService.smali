.class public Lcom/android/internal/widget/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockSettingsService$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final COLUMNS_FOR_QUERY:[Ljava/lang/String; = null

.field private static final COLUMN_KEY:Ljava/lang/String; = "name"

.field private static final COLUMN_USERID:Ljava/lang/String; = "user"

.field private static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final LOCK_PARENT_CONTROL_PASSWORD_FILE:Ljava/lang/String; = "parentcontrol.key"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_SIGNATURE_FILE:Ljava/lang/String; = "signature.key"

.field private static final LOCK_SPAREPASSWORD_FILE:Ljava/lang/String; = "sparepassword.key"

.field private static final MIGRATE_SETTINGS_PER_USER:[Ljava/lang/String; = null

.field private static ORIGINAL_PASSWORD_HASH_SIZE:I = 0x0

.field private static final READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String; = null

.field private static final SIGNATURE_SETTINGS_ADDED_INDEX:I = 0x9

.field private static final SIGNATURE_SETTINGS_CURRENT:I = 0x16

.field private static final SIGNATURE_SETTINGS_OLD:I = 0x15

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TABLE:Ljava/lang/String; = "locksettings"

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final VALID_SETTINGS:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mOpenHelper:Lcom/android/internal/widget/LockSettingsService$DatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 60
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "value"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/widget/LockSettingsService;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    .line 82
    const/16 v0, 0x48

    sput v0, Lcom/android/internal/widget/LockSettingsService;->ORIGINAL_PASSWORD_HASH_SIZE:I

    .line 539
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "lockscreen.lockedoutpermanently"

    aput-object v1, v0, v3

    const-string v1, "lockscreen.lockoutattemptdeadline"

    aput-object v1, v0, v4

    const-string v1, "lockscreen.patterneverchosen"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "lockscreen.password_type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lockscreen.password_type_alternate"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lockscreen.password_salt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "lockscreen.disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "lockscreen.options"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "lockscreen.biometric_weak_fallback"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lockscreen.biometricweakeverchosen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lockscreen.power_button_instantly_locks"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "lockscreen.passwordhistory"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "lockscreen.signatureregistered"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "lockscreen.signature_fallback"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "lockscreen.signatureeverchosen"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "lock_pattern_autolock"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "lock_biometric_weak_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "lock_pattern_visible_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "lock_pattern_tactile_feedback_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "lock_signature_autolock"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "lock_signature_visible_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "lock_signature_verification_level"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/widget/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .line 564
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    const-string v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/widget/LockSettingsService;->MIGRATE_SETTINGS_PER_USER:[Ljava/lang/String;

    .line 570
    sget-object v0, Lcom/android/internal/widget/LockSettingsService;->MIGRATE_SETTINGS_PER_USER:[Ljava/lang/String;

    sput-object v0, Lcom/android/internal/widget/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/android/internal/widget/LockSettingsService;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Lcom/android/internal/widget/LockSettingsService$DatabaseHelper;

    iget-object v1, p0, Lcom/android/internal/widget/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/LockSettingsService$DatabaseHelper;-><init>(Lcom/android/internal/widget/LockSettingsService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockSettingsService;->mOpenHelper:Lcom/android/internal/widget/LockSettingsService$DatabaseHelper;

    .line 88
    return-void
.end method

.method private static final checkPasswordReadPermission(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 150
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 151
    .local v0, callingUid:I
    invoke-static {v0}, Landroid/os/UserId;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 152
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not authorized to read lock password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 155
    :cond_0
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 6
    .parameter "requestedKey"
    .parameter "userId"

    .prologue
    .line 158
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 159
    .local v0, callingUid:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v3, Lcom/android/internal/widget/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 160
    sget-object v3, Lcom/android/internal/widget/LockSettingsService;->READ_PROFILE_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 161
    .local v2, key:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PROFILE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.READ_PROFILE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 159
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static final checkWritePermission(I)V
    .locals 4
    .parameter "userId"

    .prologue
    .line 142
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 143
    .local v0, callingUid:I
    invoke-static {v0}, Landroid/os/UserId;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 144
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not authorized to write lock settings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 147
    :cond_0
    return-void
.end method

.method private getLockParentControlPasswordFilename(I)Ljava/lang/String;
    .locals 3
    .parameter "userId"

    .prologue
    .line 628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, dataSystemDirectory:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 633
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "parentcontrol.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 635
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "parentcontrol.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockPasswordFilename(I)Ljava/lang/String;
    .locals 3
    .parameter "userId"

    .prologue
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, dataSystemDirectory:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "password.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "password.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockPatternFilename(I)Ljava/lang/String;
    .locals 3
    .parameter "userId"

    .prologue
    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, dataSystemDirectory:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gesture.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "gesture.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockSignatureFilename(I)Ljava/lang/String;
    .locals 3
    .parameter "userId"

    .prologue
    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, dataSystemDirectory:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "signature.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "signature.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getLockSparePasswordFilename(I)Ljava/lang/String;
    .locals 3
    .parameter "userId"

    .prologue
    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/system/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 579
    .local v0, dataSystemDirectory:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sparepassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 583
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "users/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sparepassword.key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private migrateOldData()V
    .locals 12

    .prologue
    .line 98
    :try_start_0
    const-string v9, "migrated"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/widget/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2

    .line 99
    iget-object v9, p0, Lcom/android/internal/widget/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 100
    .local v1, cr:Landroid/content/ContentResolver;
    sget-object v0, Lcom/android/internal/widget/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v7, v0, v2

    .line 101
    .local v7, validSetting:Ljava/lang/String;
    invoke-static {v1, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 102
    .local v8, value:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 103
    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/internal/widget/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v7           #validSetting:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_1
    const-string v9, "migrated"

    const-string v10, "true"

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/widget/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    const-string v9, "LockSettingsService"

    const-string v10, "Migrated lock settings to new location"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_2
    const-string v9, "migrated_user_specific"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/widget/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    .line 113
    iget-object v9, p0, Lcom/android/internal/widget/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 114
    .restart local v1       #cr:Landroid/content/ContentResolver;
    sget-object v0, Lcom/android/internal/widget/LockSettingsService;->MIGRATE_SETTINGS_PER_USER:[Ljava/lang/String;

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v5, v0, v2

    .line 116
    .local v5, perUserSetting:Ljava/lang/String;
    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 117
    .restart local v8       #value:Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 118
    const/4 v9, 0x0

    invoke-virtual {p0, v5, v8, v9}, Lcom/android/internal/widget/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    const-string v9, ""

    invoke-static {v1, v5, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    :cond_3
    :try_start_1
    invoke-static {v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 126
    .local v3, ivalue:I
    int-to-long v9, v3

    const/4 v11, 0x0

    invoke-virtual {p0, v5, v9, v10, v11}, Lcom/android/internal/widget/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 127
    const/4 v9, 0x0

    invoke-static {v1, v5, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 128
    .end local v3           #ivalue:I
    :catch_0
    move-exception v9

    goto :goto_2

    .line 133
    .end local v5           #perUserSetting:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string v9, "migrated_user_specific"

    const-string v10, "true"

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/widget/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 134
    const-string v9, "LockSettingsService"

    const-string v10, "Migrated per-user lock settings to new location"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 139
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v2           #i$:I
    .end local v4           #len$:I
    :cond_5
    :goto_3
    return-void

    .line 136
    :catch_1
    move-exception v6

    .line 137
    .local v6, re:Landroid/os/RemoteException;
    const-string v9, "LockSettingsService"

    const-string v10, "Unable to migrate old data"

    invoke-static {v9, v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .parameter "key"
    .parameter "defaultValue"
    .parameter "userId"

    .prologue
    .line 489
    const/4 v8, 0x0

    .line 490
    .local v8, cursor:Landroid/database/Cursor;
    move-object v9, p2

    .line 491
    .local v9, result:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/LockSettingsService;->mOpenHelper:Lcom/android/internal/widget/LockSettingsService$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 493
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v1, "locksettings"

    sget-object v2, Lcom/android/internal/widget/LockSettingsService;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    const-string v3, "user=? AND name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 497
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 502
    :cond_0
    if-eqz v8, :cond_1

    .line 503
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 505
    :cond_1
    return-object v9

    .line 502
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_2

    .line 503
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .locals 6
    .parameter "name"
    .parameter "hash"

    .prologue
    .line 452
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .local v1, raf:Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_0

    array-length v2, p2

    if-nez v2, :cond_1

    .line 455
    :cond_0
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 464
    :goto_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 468
    .end local v1           #raf:Ljava/io/RandomAccessFile;
    :goto_1
    return-void

    .line 458
    .restart local v1       #raf:Ljava/io/RandomAccessFile;
    :cond_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    sget v4, Lcom/android/internal/widget/LockSettingsService;->ORIGINAL_PASSWORD_HASH_SIZE:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 459
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 460
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 462
    :cond_2
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 465
    .end local v1           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 466
    .local v0, ioe:Ljava/io/IOException;
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing to file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private writeToDb(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "key"
    .parameter "value"
    .parameter "userId"

    .prologue
    .line 471
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 472
    .local v0, cv:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string v2, "user"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 474
    const-string v2, "value"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v2, p0, Lcom/android/internal/widget/LockSettingsService;->mOpenHelper:Lcom/android/internal/widget/LockSettingsService$DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 477
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 479
    :try_start_0
    const-string v2, "locksettings"

    const-string v3, "name=? AND user=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 481
    const-string v2, "locksettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 482
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 486
    return-void

    .line 484
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method


# virtual methods
.method public checkParentControlPassword([BI)Z
    .locals 9
    .parameter "hash"
    .parameter "userId"

    .prologue
    const/4 v5, 0x1

    .line 649
    invoke-static {p2}, Lcom/android/internal/widget/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 653
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockSettingsService;->getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "r"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v4, v6, [B

    .line 656
    .local v4, stored:[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 657
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 658
    if-gtz v1, :cond_0

    .line 668
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_0
    return v5

    .line 662
    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_0
    invoke-static {v4, p1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_0

    .line 663
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_0
    move-exception v0

    .line 664
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 666
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 667
    .local v2, ioe:Ljava/io/IOException;
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkPassword([BI)Z
    .locals 9
    .parameter "hash"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 311
    invoke-static {p2}, Lcom/android/internal/widget/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 315
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "r"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v4, v6, [B

    .line 317
    .local v4, stored:[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 318
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 319
    if-gtz v1, :cond_0

    .line 329
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_0
    return v5

    .line 323
    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_0
    invoke-static {v4, p1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_0

    .line 324
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_0
    move-exception v0

    .line 325
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 327
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 328
    .local v2, ioe:Ljava/io/IOException;
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkPattern([BI)Z
    .locals 9
    .parameter "hash"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 281
    invoke-static {p2}, Lcom/android/internal/widget/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 284
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "r"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v4, v6, [B

    .line 286
    .local v4, stored:[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 287
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 288
    if-gtz v1, :cond_0

    .line 298
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_0
    return v5

    .line 292
    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_0
    invoke-static {v4, p1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_0

    .line 293
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_0
    move-exception v0

    .line 294
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 297
    .local v2, ioe:Ljava/io/IOException;
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkSparePassword([BI)Z
    .locals 9
    .parameter "hash"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 596
    invoke-static {p2}, Lcom/android/internal/widget/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 600
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockSettingsService;->getLockSparePasswordFilename(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "r"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v6, v6

    new-array v4, v6, [B

    .line 602
    .local v4, stored:[B
    const/4 v6, 0x0

    array-length v7, v4

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 603
    .local v1, got:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 604
    if-gtz v1, :cond_0

    .line 614
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :goto_0
    return v5

    .line 608
    .restart local v1       #got:I
    .restart local v3       #raf:Ljava/io/RandomAccessFile;
    .restart local v4       #stored:[B
    :cond_0
    invoke-static {v4, p1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    goto :goto_0

    .line 609
    .end local v1           #got:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    .end local v4           #stored:[B
    :catch_0
    move-exception v0

    .line 610
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 612
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 613
    .local v2, ioe:Ljava/io/IOException;
    const-string v6, "LockSettingsService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot read file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .parameter "key"
    .parameter "defaultValue"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 195
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p3}, Lcom/android/internal/widget/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2
    :goto_0
    return p2

    .restart local p2
    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getLockPasswordHashSize(I)I
    .locals 8
    .parameter "userId"

    .prologue
    const/4 v4, -0x1

    .line 392
    invoke-static {p1}, Lcom/android/internal/widget/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 395
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v2, v5

    .line 397
    .local v2, length:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 404
    .end local v2           #length:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    :goto_0
    return v2

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    const-string v5, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 401
    goto :goto_0

    .line 402
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 403
    .local v1, ioe:Ljava/io/IOException;
    const-string v5, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 404
    goto :goto_0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 2
    .parameter "key"
    .parameter "defaultValue"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0, p1, p4}, Lcom/android/internal/widget/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 204
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, p4}, Lcom/android/internal/widget/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2
    :goto_0
    return-wide p2

    .restart local p2
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getParentControlPasswordHashSize(I)I
    .locals 8
    .parameter "userId"

    .prologue
    const/4 v4, -0x1

    .line 680
    invoke-static {p1}, Lcom/android/internal/widget/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 683
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockSettingsService;->getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v2, v5

    .line 686
    .local v2, length:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 693
    .end local v2           #length:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    :goto_0
    return v2

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    const-string v5, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 690
    goto :goto_0

    .line 691
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 692
    .local v1, ioe:Ljava/io/IOException;
    const-string v5, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 693
    goto :goto_0
.end method

.method public getSignatureInfo(I)[B
    .locals 12
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x58

    const/4 v8, 0x0

    .line 342
    invoke-static {p1}, Lcom/android/internal/widget/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 345
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockSettingsService;->getLockSignatureFilename(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "r"

    invoke-direct {v5, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .local v5, raf:Ljava/io/RandomAccessFile;
    if-eqz v5, :cond_5

    .line 347
    const/16 v9, 0x58

    new-array v7, v9, [B

    .line 348
    .local v7, settings:[B
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v9

    long-to-int v6, v9

    .line 353
    .local v6, savedSettingsLength:I
    const/16 v9, 0x54

    if-ne v6, v9, :cond_2

    .line 354
    const-string v9, "LockSettingsService"

    const-string v10, "Read old signature lock settings"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-array v4, v6, [B

    .line 357
    .local v4, prev:[B
    const/4 v9, 0x0

    invoke-virtual {v5, v4, v9, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 360
    .local v1, got:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v9, 0x24

    if-ge v2, v9, :cond_0

    .line 361
    aget-byte v9, v4, v2

    aput-byte v9, v7, v2

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    :cond_0
    const/16 v2, 0x24

    :goto_1
    const/16 v9, 0x28

    if-ge v2, v9, :cond_1

    .line 365
    const/4 v9, 0x0

    aput-byte v9, v7, v2

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 367
    :cond_1
    const/16 v2, 0x28

    :goto_2
    if-ge v2, v11, :cond_3

    .line 368
    add-int/lit8 v9, v2, -0x4

    aget-byte v9, v4, v9

    aput-byte v9, v7, v2

    .line 367
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 371
    .end local v1           #got:I
    .end local v2           #i:I
    .end local v4           #prev:[B
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v1

    .line 373
    .restart local v1       #got:I
    :cond_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 374
    if-gtz v1, :cond_4

    move-object v7, v8

    .line 385
    .end local v1           #got:I
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    .end local v6           #savedSettingsLength:I
    .end local v7           #settings:[B
    :cond_4
    :goto_3
    return-object v7

    .restart local v5       #raf:Ljava/io/RandomAccessFile;
    :cond_5
    move-object v7, v8

    .line 379
    goto :goto_3

    .line 380
    .end local v5           #raf:Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v0

    .line 381
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 382
    goto :goto_3

    .line 383
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 384
    .local v3, ioe:Ljava/io/IOException;
    const-string v9, "LockSettingsService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot read file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    .line 385
    goto :goto_3
.end method

.method public getSparePasswordHashSize(I)I
    .locals 8
    .parameter "userId"

    .prologue
    const/4 v4, -0x1

    .line 410
    invoke-static {p1}, Lcom/android/internal/widget/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 413
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockSettingsService;->getLockSparePasswordFilename(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "r"

    invoke-direct {v3, v5, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .local v3, raf:Ljava/io/RandomAccessFile;
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    long-to-int v2, v5

    .line 415
    .local v2, length:I
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 422
    .end local v2           #length:I
    .end local v3           #raf:Ljava/io/RandomAccessFile;
    :goto_0
    return v2

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, fnfe:Ljava/io/FileNotFoundException;
    const-string v5, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 419
    goto :goto_0

    .line 420
    .end local v0           #fnfe:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 421
    .local v1, ioe:Ljava/io/IOException;
    const-string v5, "LockSettingsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 422
    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .parameter "key"
    .parameter "defaultValue"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-direct {p0, p1, p3}, Lcom/android/internal/widget/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 212
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/LockSettingsService;->readFromDb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public haveParentControlPassword(I)Z
    .locals 4
    .parameter "userId"

    .prologue
    .line 675
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockSettingsService;->getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePassword(I)Z
    .locals 4
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public havePattern(I)Z
    .locals 4
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 262
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveSignature(I)Z
    .locals 4
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockSettingsService;->getLockSignatureFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public haveSparePassword(I)Z
    .locals 4
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 622
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockSettingsService;->getLockSparePasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeUser(I)V
    .locals 5
    .parameter "userId"

    .prologue
    .line 428
    invoke-static {p1}, Lcom/android/internal/widget/LockSettingsService;->checkWritePermission(I)V

    .line 430
    iget-object v2, p0, Lcom/android/internal/widget/LockSettingsService;->mOpenHelper:Lcom/android/internal/widget/LockSettingsService$DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 432
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 436
    :cond_0
    new-instance v1, Ljava/io/File;

    .end local v1           #file:Ljava/io/File;
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 437
    .restart local v1       #file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 438
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 441
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 442
    const-string v2, "locksettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 443
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 447
    return-void

    .line 445
    .end local v1           #file:Ljava/io/File;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-static {p3}, Lcom/android/internal/widget/LockSettingsService;->checkWritePermission(I)V

    .line 174
    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/android/internal/widget/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    .line 175
    return-void

    .line 174
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setLockParentControlPassword([BI)V
    .locals 1
    .parameter "hash"
    .parameter "userId"

    .prologue
    .line 642
    invoke-static {p2}, Lcom/android/internal/widget/LockSettingsService;->checkWritePermission(I)V

    .line 644
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockSettingsService;->getLockParentControlPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 645
    return-void
.end method

.method public setLockPassword([BI)V
    .locals 1
    .parameter "hash"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-static {p2}, Lcom/android/internal/widget/LockSettingsService;->checkWritePermission(I)V

    .line 306
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockSettingsService;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 307
    return-void
.end method

.method public setLockPattern([BI)V
    .locals 1
    .parameter "hash"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 274
    invoke-static {p2}, Lcom/android/internal/widget/LockSettingsService;->checkWritePermission(I)V

    .line 276
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockSettingsService;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 277
    return-void
.end method

.method public setLockSparePassword([BI)V
    .locals 1
    .parameter "hash"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 589
    invoke-static {p2}, Lcom/android/internal/widget/LockSettingsService;->checkWritePermission(I)V

    .line 591
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockSettingsService;->getLockSparePasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 592
    return-void
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 1
    .parameter "key"
    .parameter "value"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-static {p4}, Lcom/android/internal/widget/LockSettingsService;->checkWritePermission(I)V

    .line 181
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p4}, Lcom/android/internal/widget/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    return-void
.end method

.method public setSignatureInfo([BI)V
    .locals 1
    .parameter "hash"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-static {p2}, Lcom/android/internal/widget/LockSettingsService;->checkWritePermission(I)V

    .line 337
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockSettingsService;->getLockSignatureFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockSettingsService;->writeFile(Ljava/lang/String;[B)V

    .line 338
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "key"
    .parameter "value"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p3}, Lcom/android/internal/widget/LockSettingsService;->checkWritePermission(I)V

    .line 188
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/LockSettingsService;->writeToDb(Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    return-void
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/android/internal/widget/LockSettingsService;->migrateOldData()V

    .line 92
    return-void
.end method
