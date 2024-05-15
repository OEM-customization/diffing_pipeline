.class public final Ljava/net/DatagramPacket;
.super Ljava/lang/Object;
.source "DatagramPacket.java"


# instance fields
.field address:Ljava/net/InetAddress;

.field buf:[B

.field bufLength:I

.field length:I

.field offset:I

.field port:I


# direct methods
.method public constructor <init>([BI)V
    .registers 4
    .param p1, "buf"    # [B
    .param p2, "length"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 96
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramPacket;->port:I

    .line 82
    return-void
.end method

.method public constructor <init>([BIILjava/net/InetAddress;I)V
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "address"    # Ljava/net/InetAddress;
    .param p5, "port"    # I

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 117
    invoke-virtual {p0, p4}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 118
    invoke-virtual {p0, p5}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 119
    return-void
.end method

.method public constructor <init>([BIILjava/net/SocketAddress;)V
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "address"    # Ljava/net/SocketAddress;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 145
    invoke-virtual {p0, p4}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 146
    return-void
.end method

.method public constructor <init>([BILjava/net/InetAddress;I)V
    .registers 11
    .param p1, "buf"    # [B
    .param p2, "length"    # I
    .param p3, "address"    # Ljava/net/InetAddress;
    .param p4, "port"    # I

    .prologue
    .line 168
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 169
    return-void
.end method

.method public constructor <init>([BILjava/net/SocketAddress;)V
    .registers 5
    .param p1, "buf"    # [B
    .param p2, "length"    # I
    .param p3, "address"    # Ljava/net/SocketAddress;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/SocketAddress;)V

    .line 186
    return-void
.end method


# virtual methods
.method public declared-synchronized getAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    monitor-enter p0

    .line 198
    :try_start_1
    iget-object v0, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getData()[B
    .registers 2

    .prologue
    monitor-enter p0

    .line 222
    :try_start_1
    iget-object v0, p0, Ljava/net/DatagramPacket;->buf:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLength()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 247
    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->length:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOffset()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 235
    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPort()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 210
    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->port:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    monitor-enter p0

    .line 347
    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAddress(Ljava/net/InetAddress;)V
    .registers 3
    .param p1, "iaddr"    # Ljava/net/InetAddress;

    .prologue
    monitor-enter p0

    .line 290
    :try_start_1
    iput-object p1, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    .line 291
    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setData([B)V
    .registers 4
    .param p1, "buf"    # [B

    .prologue
    monitor-enter p0

    .line 365
    if-nez p1, :cond_f

    .line 366
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null packet buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 368
    :cond_f
    :try_start_f
    iput-object p1, p0, Ljava/net/DatagramPacket;->buf:[B

    .line 369
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/DatagramPacket;->offset:I

    .line 370
    array-length v0, p1

    iput v0, p0, Ljava/net/DatagramPacket;->length:I

    .line 371
    array-length v0, p1

    iput v0, p0, Ljava/net/DatagramPacket;->bufLength:I
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_c

    monitor-exit p0

    .line 372
    return-void
.end method

.method public declared-synchronized setData([BII)V
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    monitor-enter p0

    .line 271
    if-ltz p3, :cond_5

    if-gez p2, :cond_11

    .line 274
    :cond_5
    :try_start_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "illegal length or offset"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 272
    :cond_11
    add-int v0, p3, p2

    if-ltz v0, :cond_5

    .line 273
    add-int v0, p3, p2

    :try_start_17
    array-length v1, p1

    if-gt v0, v1, :cond_5

    .line 276
    iput-object p1, p0, Ljava/net/DatagramPacket;->buf:[B

    .line 277
    iput p3, p0, Ljava/net/DatagramPacket;->length:I

    .line 278
    iput p3, p0, Ljava/net/DatagramPacket;->bufLength:I

    .line 279
    iput p2, p0, Ljava/net/DatagramPacket;->offset:I
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_e

    monitor-exit p0

    .line 280
    return-void
.end method

.method public declared-synchronized setLength(I)V
    .registers 4
    .param p1, "length"    # I

    .prologue
    monitor-enter p0

    .line 393
    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I

    add-int/2addr v0, p1

    iget-object v1, p0, Ljava/net/DatagramPacket;->buf:[B

    array-length v1, v1

    if-gt v0, v1, :cond_b

    if-gez p1, :cond_17

    .line 395
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "illegal length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 394
    :cond_17
    :try_start_17
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I

    add-int/2addr v0, p1

    if-ltz v0, :cond_b

    .line 397
    iput p1, p0, Ljava/net/DatagramPacket;->length:I

    .line 398
    iget v0, p0, Ljava/net/DatagramPacket;->length:I

    iput v0, p0, Ljava/net/DatagramPacket;->bufLength:I
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_14

    monitor-exit p0

    .line 399
    return-void
.end method

.method public declared-synchronized setPort(I)V
    .registers 5
    .param p1, "iport"    # I

    .prologue
    monitor-enter p0

    .line 311
    if-ltz p1, :cond_8

    const v0, 0xffff

    if-le p1, v0, :cond_25

    .line 312
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Port out of range:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    .line 314
    :cond_25
    :try_start_25
    iput p1, p0, Ljava/net/DatagramPacket;->port:I
    :try_end_27
    .catchall {:try_start_25 .. :try_end_27} :catchall_22

    monitor-exit p0

    .line 315
    return-void
.end method

.method public setReceivedLength(I)V
    .registers 2
    .param p1, "length"    # I

    .prologue
    .line 299
    iput p1, p0, Ljava/net/DatagramPacket;->length:I

    .line 300
    return-void
.end method

.method public declared-synchronized setSocketAddress(Ljava/net/SocketAddress;)V
    .registers 6
    .param p1, "address"    # Ljava/net/SocketAddress;

    .prologue
    monitor-enter p0

    .line 329
    if-eqz p1, :cond_9

    :try_start_3
    instance-of v2, p1, Ljava/net/InetSocketAddress;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_15

    .line 330
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unsupported address type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v2

    monitor-exit p0

    throw v2

    .line 331
    :cond_15
    :try_start_15
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    .line 332
    .local v1, "addr":Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 333
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unresolved address"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 334
    :cond_28
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    .line 335
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/net/DatagramPacket;->setPort(I)V
    :try_end_36
    .catchall {:try_start_15 .. :try_end_36} :catchall_12

    monitor-exit p0

    .line 336
    return-void
.end method
