.class public Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
.super Ljava/lang/Object;
.source "VpnInfoPolicy.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/VpnInfoPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VpnProfile"
.end annotation


# static fields
.field static final TYPE_IPSEC_HYBRID_RSA:I = 0x5

.field static final TYPE_IPSEC_XAUTH_PSK:I = 0x3

.field static final TYPE_IPSEC_XAUTH_RSA:I = 0x4

.field static final TYPE_L2TP_IPSEC_PSK:I = 0x1

.field static final TYPE_L2TP_IPSEC_RSA:I = 0x2

.field static final TYPE_MAX:I = 0x5

.field static final TYPE_PPTP:I


# instance fields
.field dnsServers:Ljava/lang/String;

.field ipsecCaCert:Ljava/lang/String;

.field ipsecIdentifier:Ljava/lang/String;

.field ipsecSecret:Ljava/lang/String;

.field ipsecUserCert:Ljava/lang/String;

.field key:Ljava/lang/String;

.field l2tpSecret:Ljava/lang/String;

.field mppe:Z

.field name:Ljava/lang/String;

.field password:Ljava/lang/String;

.field routes:Ljava/lang/String;

.field saveLogin:Z

.field searchDomains:Ljava/lang/String;

.field server:Ljava/lang/String;

.field type:I

.field username:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->server:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->routes:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->mppe:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->key:Ljava/lang/String;

    return-void
.end method

.method static decode(Ljava/lang/String;[B)Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .locals 9
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v8, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, p1, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v6, "\u0000"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .local v1, values:[Ljava/lang/String;
    array-length v5, v1

    const/16 v6, 0xe

    if-ge v5, v6, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;-><init>(Ljava/lang/String;)V

    .local v0, profile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    iget v5, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    if-ltz v5, :cond_2

    iget v5, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    if-le v5, v8, :cond_3

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    const/4 v5, 0x2

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->server:Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->dnsServers:Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->searchDomains:Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->routes:Ljava/lang/String;

    const/16 v5, 0x8

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->mppe:Z

    const/16 v5, 0x9

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;

    const/16 v5, 0xa

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    const/16 v5, 0xb

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;

    const/16 v5, 0xc

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;

    const/16 v5, 0xd

    aget-object v5, v1, v5

    iput-object v5, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    iput-boolean v3, v0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->saveLogin:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v0           #profile:Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;
    .end local v1           #values:[Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v2

    goto/16 :goto_0
.end method


# virtual methods
.method encode()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->username:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->saveLogin:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->password:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->mppe:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/VpnInfoPolicy$VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_1
.end method
