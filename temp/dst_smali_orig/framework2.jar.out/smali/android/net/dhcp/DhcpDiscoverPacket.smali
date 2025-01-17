.class Landroid/net/dhcp/DhcpDiscoverPacket;
.super Landroid/net/dhcp/DhcpPacket;
.source "DhcpDiscoverPacket.java"


# direct methods
.method constructor <init>(I[BZ)V
    .locals 8
    .parameter "transId"
    .parameter "clientMac"
    .parameter "broadcast"

    .prologue
    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    sget-object v5, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/net/dhcp/DhcpPacket;-><init>(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;Ljava/net/InetAddress;[BZ)V

    return-void
.end method


# virtual methods
.method public buildPacket(ISS)Ljava/nio/ByteBuffer;
    .locals 10
    .parameter "encap"
    .parameter "destUdp"
    .parameter "srcUdp"

    .prologue
    const/4 v7, 0x1

    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .local v6, result:Ljava/nio/ByteBuffer;
    sget-object v9, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    .local v9, destIp:Ljava/net/InetAddress;
    sget-object v2, Ljava/net/Inet4Address;->ALL:Ljava/net/InetAddress;

    sget-object v3, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/net/dhcp/DhcpPacket;->fillInPacket(ILjava/net/InetAddress;Ljava/net/InetAddress;SSLjava/nio/ByteBuffer;BZ)V

    invoke-virtual {v6}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    return-object v6
.end method

.method public doNextOp(Landroid/net/dhcp/DhcpStateMachine;)V
    .locals 4
    .parameter "machine"

    .prologue
    iget-boolean v0, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    iget v1, p0, Landroid/net/dhcp/DhcpPacket;->mTransId:I

    iget-object v2, p0, Landroid/net/dhcp/DhcpPacket;->mClientMac:[B

    iget-object v3, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/net/dhcp/DhcpStateMachine;->onDiscoverReceived(ZI[B[B)V

    return-void
.end method

.method finishPacket(Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "buffer"

    .prologue
    const/16 v0, 0x35

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;BB)V

    const/16 v0, 0x37

    iget-object v1, p0, Landroid/net/dhcp/DhcpPacket;->mRequestedParams:[B

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/dhcp/DhcpPacket;->addTlv(Ljava/nio/ByteBuffer;B[B)V

    invoke-virtual {p0, p1}, Landroid/net/dhcp/DhcpPacket;->addTlvEnd(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/net/dhcp/DhcpPacket;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, s:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DISCOVER "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Landroid/net/dhcp/DhcpPacket;->mBroadcast:Z

    if-eqz v1, :cond_0

    const-string v1, "broadcast "

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "unicast "

    goto :goto_0
.end method
