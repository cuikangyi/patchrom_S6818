.class Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;
.super Ljava/lang/Object;
.source "CDMAPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CDMAPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CscChameleonParser"
.end annotation


# static fields
.field private static final CSC_CHAMELEON_FILE:Ljava/lang/String; = "/carrier/chameleon.xml"


# instance fields
.field private final PATH_OPERATORS_BRANDALPHA:Ljava/lang/String;

.field private final PATH_OPERATORS_NETWORKCODE:Ljava/lang/String;

.field private isFileExist:Z

.field private mDoc:Lorg/w3c/dom/Document;

.field private mRoot:Lorg/w3c/dom/Node;

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 3

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "Operators.BrandAlpha"

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->PATH_OPERATORS_BRANDALPHA:Ljava/lang/String;

    const-string v1, "Operators.AndroidOperatorNetworkCode"

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->PATH_OPERATORS_NETWORKCODE:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->isFileExist:Z

    const-string v1, "CDMA"

    const-string v2, "[CscChameleonParser] "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "/carrier/chameleon.xml"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isFileExists()Z
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFileExists : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->isFileExist:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->isFileExist:Z

    return v0
.end method

.method private update(Ljava/lang/String;)V
    .locals 5
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .local v1, factory:Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .local v0, builder:Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, fe:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->this$0:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v4, "CscChameleonParser : update"

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->mDoc:Lorg/w3c/dom/Document;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->mRoot:Lorg/w3c/dom/Node;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->isFileExist:Z

    :goto_0
    return-void

    :cond_0
    const-string v3, "CDMA"

    const-string v4, "[CscChameleonParser] update(): file not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->isFileExist:Z

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, node:Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOperatorAlpha()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CscChameleonParser alpha] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Operators.BrandAlpha"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Operators.BrandAlpha"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CscChameleonParser numeric] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Operators.AndroidOperatorNetworkCode"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Operators.AndroidOperatorNetworkCode"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    if-nez p1, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->mRoot:Lorg/w3c/dom/Node;

    .local v0, node:Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v2, tokenizer:Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .local v1, token:Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone$CscChameleonParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_1
.end method

.method public search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6
    .parameter "parent"
    .parameter "name"

    .prologue
    const/4 v4, 0x0

    if-nez p1, :cond_1

    move-object v0, v4

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .local v1, children:Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .local v3, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, child:Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #child:Lorg/w3c/dom/Node;
    .end local v2           #i:I
    .end local v3           #n:I
    :cond_2
    move-object v0, v4

    goto :goto_0
.end method
