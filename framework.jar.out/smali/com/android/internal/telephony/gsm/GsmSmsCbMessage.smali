.class public Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;
.super Ljava/lang/Object;
.source "GsmSmsCbMessage.java"


# static fields
.field private static final CARRIAGE_RETURN:C = '\r'

.field private static final LANGUAGE_CODES_GROUP_0:[Ljava/lang/String; = null

.field private static final LANGUAGE_CODES_GROUP_2:[Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "GSMCB"

.field private static final PDU_BODY_PAGE_LENGTH:I = 0x52


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 40
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "de"

    aput-object v1, v0, v4

    const-string v1, "en"

    aput-object v1, v0, v5

    const-string v1, "it"

    aput-object v1, v0, v6

    const-string v1, "fr"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "es"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "nl"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "sv"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "da"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "pt"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "no"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "el"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "tr"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hu"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "pl"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cs"

    aput-object v1, v0, v4

    const-string v1, "he"

    aput-object v1, v0, v5

    const-string v1, "ar"

    aput-object v1, v0, v6

    const-string/jumbo v1, "ru"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "is"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSmsCbMessage(Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    .locals 2
    .parameter "location"
    .parameter "pdus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 101
    .local v0, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;

    move-result-object v1

    return-object v1
.end method

.method static createSmsCbMessage(Lcom/android/internal/telephony/gsm/SmsCbHeader;Landroid/telephony/SmsCbLocation;[[B)Landroid/telephony/SmsCbMessage;
    .locals 19
    .parameter "header"
    .parameter "location"
    .parameter "pdus"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEtwsPrimaryNotification()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    new-instance v2, Landroid/telephony/SmsCbMessage;

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v7

    const/4 v8, 0x0

    const-string v9, "ETWS"

    const/4 v10, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v12

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v12}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    .line 84
    :goto_0
    return-object v2

    .line 74
    :cond_0
    const/4 v8, 0x0

    .line 75
    .local v8, language:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v18, sb:Ljava/lang/StringBuilder;
    move-object/from16 v13, p2

    .local v13, arr$:[[B
    array-length v15, v13

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_1
    if-ge v14, v15, :cond_1

    aget-object v17, v13, v14

    .line 77
    .local v17, pdu:[B
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->parseBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;

    move-result-object v16

    .line 78
    .local v16, p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v8           #language:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 79
    .restart local v8       #language:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 81
    .end local v16           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17           #pdu:[B
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v10, 0x3

    .line 84
    .local v10, priority:I
    :goto_2
    new-instance v2, Landroid/telephony/SmsCbMessage;

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getGeographicalScope()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getSerialNumber()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getServiceCategory()I

    move-result v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getEtwsInfo()Landroid/telephony/SmsCbEtwsInfo;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getCmasInfo()Landroid/telephony/SmsCbCmasInfo;

    move-result-object v12

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v12}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    goto :goto_0

    .line 81
    .end local v10           #priority:I
    :cond_2
    const/4 v10, 0x0

    goto :goto_2
.end method

.method private static parseBody(Lcom/android/internal/telephony/gsm/SmsCbHeader;[B)Landroid/util/Pair;
    .locals 14
    .parameter "header"
    .parameter "pdu"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SmsCbHeader;",
            "[B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v13, 0x52

    const/4 v11, 0x1

    .line 115
    const/4 v5, 0x0

    .line 116
    .local v5, language:Ljava/lang/String;
    const/4 v4, 0x0

    .line 117
    .local v4, hasLanguageIndicator:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getDataCodingScheme()I

    move-result v6

    .line 121
    .local v6, dataCodingScheme:I
    and-int/lit16 v0, v6, 0xf0

    shr-int/lit8 v0, v0, 0x4

    packed-switch v0, :pswitch_data_0

    .line 183
    :pswitch_0
    const/4 v1, 0x1

    .line 187
    .local v1, encoding:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isUmtsFormat()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 189
    const/4 v0, 0x6

    aget-byte v8, p1, v0

    .line 191
    .local v8, nrPages:I
    array-length v0, p1

    mul-int/lit8 v11, v8, 0x53

    add-int/lit8 v11, v11, 0x7

    if-ge v0, v11, :cond_2

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Pdu length "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, p1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " does not match "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " pages"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    .end local v1           #encoding:I
    .end local v8           #nrPages:I
    :pswitch_1
    const/4 v1, 0x1

    .line 124
    .restart local v1       #encoding:I
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_0:[Ljava/lang/String;

    and-int/lit8 v11, v6, 0xf

    aget-object v5, v0, v11

    .line 125
    goto :goto_0

    .line 128
    .end local v1           #encoding:I
    :pswitch_2
    const/4 v4, 0x1

    .line 129
    and-int/lit8 v0, v6, 0xf

    if-ne v0, v11, :cond_0

    .line 130
    const/4 v1, 0x3

    .restart local v1       #encoding:I
    goto :goto_0

    .line 132
    .end local v1           #encoding:I
    :cond_0
    const/4 v1, 0x1

    .line 134
    .restart local v1       #encoding:I
    goto :goto_0

    .line 137
    .end local v1           #encoding:I
    :pswitch_3
    const/4 v1, 0x1

    .line 138
    .restart local v1       #encoding:I
    sget-object v0, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->LANGUAGE_CODES_GROUP_2:[Ljava/lang/String;

    and-int/lit8 v11, v6, 0xf

    aget-object v5, v0, v11

    .line 139
    goto :goto_0

    .line 142
    .end local v1           #encoding:I
    :pswitch_4
    const/4 v1, 0x1

    .line 143
    .restart local v1       #encoding:I
    goto :goto_0

    .line 147
    .end local v1           #encoding:I
    :pswitch_5
    and-int/lit8 v0, v6, 0xc

    shr-int/lit8 v0, v0, 0x2

    packed-switch v0, :pswitch_data_1

    .line 158
    const/4 v1, 0x1

    .line 159
    .restart local v1       #encoding:I
    goto :goto_0

    .line 149
    .end local v1           #encoding:I
    :pswitch_6
    const/4 v1, 0x2

    .line 150
    .restart local v1       #encoding:I
    goto :goto_0

    .line 153
    .end local v1           #encoding:I
    :pswitch_7
    const/4 v1, 0x3

    .line 154
    .restart local v1       #encoding:I
    goto :goto_0

    .line 170
    .end local v1           #encoding:I
    :pswitch_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unsupported GSM dataCodingScheme "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :pswitch_9
    and-int/lit8 v0, v6, 0x4

    shr-int/lit8 v0, v0, 0x2

    if-ne v0, v11, :cond_1

    .line 175
    const/4 v1, 0x2

    .restart local v1       #encoding:I
    goto/16 :goto_0

    .line 177
    .end local v1           #encoding:I
    :cond_1
    const/4 v1, 0x1

    .line 179
    .restart local v1       #encoding:I
    goto/16 :goto_0

    .line 197
    .restart local v8       #nrPages:I
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v10, sb:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_4

    .line 202
    mul-int/lit8 v0, v7, 0x53

    add-int/lit8 v2, v0, 0x7

    .line 203
    .local v2, offset:I
    add-int/lit8 v0, v2, 0x52

    aget-byte v3, p1, v0

    .line 205
    .local v3, length:I
    if-le v3, v13, :cond_3

    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Page length "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " exceeds maximum value "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object v0, p1

    .line 210
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v9

    .line 212
    .local v9, p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v5           #language:Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 213
    .restart local v5       #language:Ljava/lang/String;
    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 215
    .end local v2           #offset:I
    .end local v3           #length:I
    .end local v9           #p:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v5, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 221
    .end local v7           #i:I
    .end local v8           #nrPages:I
    .end local v10           #sb:Ljava/lang/StringBuilder;
    :goto_2
    return-object v0

    .line 218
    :cond_5
    const/4 v2, 0x6

    .line 219
    .restart local v2       #offset:I
    array-length v0, p1

    sub-int v3, v0, v2

    .restart local v3       #length:I
    move-object v0, p1

    .line 221
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSmsCbMessage;->unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_2

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 147
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static unpackBody([BIIIZLjava/lang/String;)Landroid/util/Pair;
    .locals 10
    .parameter "pdu"
    .parameter "encoding"
    .parameter "offset"
    .parameter "length"
    .parameter "hasLanguageIndicator"
    .parameter "language"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIIIZ",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 241
    const/4 v0, 0x0

    .line 243
    .local v0, body:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 276
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_4

    .line 277
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 280
    .local v2, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getNumberOfPages()I

    move-result v4

    .line 281
    .local v4, nrOfPages:I
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->getPageIndex()I

    move-result v5

    .line 283
    .local v5, pageIndex:I
    const-string v6, "GSMCB"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "nrOfPages : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v6, "GSMCB"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pageIndex : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, i:I
    :goto_1
    if-ltz v3, :cond_1

    .line 299
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0xd

    if-eq v6, v7, :cond_3

    .line 300
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 309
    .end local v2           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v3           #i:I
    .end local v4           #nrOfPages:I
    .end local v5           #pageIndex:I
    :cond_1
    :goto_2
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, p5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 245
    :pswitch_1
    mul-int/lit8 v6, p3, 0x8

    div-int/lit8 v6, v6, 0x7

    invoke-static {p0, p2, v6}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 247
    if-eqz p4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_0

    .line 250
    invoke-virtual {v0, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    .line 251
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 256
    :pswitch_2
    if-eqz p4, :cond_2

    array-length v6, p0

    add-int/lit8 v7, p2, 0x2

    if-lt v6, v7, :cond_2

    .line 259
    invoke-static {p0, p2, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object p5

    .line 260
    add-int/lit8 p2, p2, 0x2

    .line 261
    add-int/lit8 p3, p3, -0x2

    .line 265
    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    .end local v0           #body:Ljava/lang/String;
    const v6, 0xfffe

    and-int/2addr v6, p3

    const-string/jumbo v7, "utf-16"

    invoke-direct {v0, p0, p2, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0       #body:Ljava/lang/String;
    goto/16 :goto_0

    .line 266
    .end local v0           #body:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 268
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Error decoding UTF-16 message"

    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 298
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #body:Ljava/lang/String;
    .restart local v2       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v3       #i:I
    .restart local v4       #nrOfPages:I
    .restart local v5       #pageIndex:I
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 306
    .end local v2           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v3           #i:I
    .end local v4           #nrOfPages:I
    .end local v5           #pageIndex:I
    :cond_4
    const-string v0, ""

    goto :goto_2

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
