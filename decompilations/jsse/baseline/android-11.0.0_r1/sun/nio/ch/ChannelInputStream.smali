.class public Lsun/nio/ch/ChannelInputStream;
.super Ljava/io/InputStream;
.source "ChannelInputStream.java"


# instance fields
.field private blacklist b1:[B

.field private blacklist bb:Ljava/nio/ByteBuffer;

.field private blacklist bs:[B

.field protected final blacklist ch:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method public constructor blacklist <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .registers 3
    .param p1, "ch"    # Ljava/nio/channels/ReadableByteChannel;

    .line 75
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/nio/ch/ChannelInputStream;->bb:Ljava/nio/ByteBuffer;

    .line 72
    iput-object v0, p0, Lsun/nio/ch/ChannelInputStream;->bs:[B

    .line 73
    iput-object v0, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    .line 76
    iput-object p1, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    .line 77
    return-void
.end method

.method public static blacklist read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;Z)I
    .registers 7
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .param p2, "block"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    instance-of v0, p0, Ljava/nio/channels/SelectableChannel;

    if-eqz v0, :cond_2b

    .line 53
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    .line 54
    .local v0, "sc":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->blockingLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 55
    :try_start_c
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v2

    .line 56
    .local v2, "bm":Z
    if-eqz v2, :cond_22

    .line 58
    if-eq v2, p2, :cond_17

    .line 59
    invoke-virtual {v0, p2}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 60
    :cond_17
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 61
    .local v3, "n":I
    if-eq v2, p2, :cond_20

    .line 62
    invoke-virtual {v0, v2}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 63
    :cond_20
    monitor-exit v1

    return v3

    .line 57
    .end local v3    # "n":I
    :cond_22
    new-instance v3, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v3}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    .end local v0    # "sc":Ljava/nio/channels/SelectableChannel;
    .end local p0    # "ch":Ljava/nio/channels/ReadableByteChannel;
    .end local p1    # "bb":Ljava/nio/ByteBuffer;
    .end local p2    # "block":Z
    throw v3

    .line 64
    .end local v2    # "bm":Z
    .restart local v0    # "sc":Ljava/nio/channels/SelectableChannel;
    .restart local p0    # "ch":Ljava/nio/channels/ReadableByteChannel;
    .restart local p1    # "bb":Ljava/nio/ByteBuffer;
    .restart local p2    # "block":Z
    :catchall_28
    move-exception v2

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_c .. :try_end_2a} :catchall_28

    throw v2

    .line 66
    .end local v0    # "sc":Ljava/nio/channels/SelectableChannel;
    :cond_2b
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api available()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    instance-of v1, v0, Ljava/nio/channels/SeekableByteChannel;

    if-eqz v1, :cond_24

    .line 116
    check-cast v0, Ljava/nio/channels/SeekableByteChannel;

    .line 117
    .local v0, "sbc":Ljava/nio/channels/SeekableByteChannel;
    const-wide/16 v1, 0x0

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v3

    invoke-interface {v0}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 118
    .local v1, "rem":J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_22

    const v3, 0x7fffffff

    goto :goto_23

    :cond_22
    long-to-int v3, v1

    :goto_23
    return v3

    .line 120
    .end local v0    # "sbc":Ljava/nio/channels/SeekableByteChannel;
    .end local v1    # "rem":J
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 125
    return-void
.end method

.method public declared-synchronized whitelist core-platform-api test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_1
    iget-object v0, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 81
    new-array v0, v1, [B

    iput-object v0, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    .line 82
    .end local p0    # "this":Lsun/nio/ch/ChannelInputStream;
    :cond_a
    iget-object v0, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    invoke-virtual {p0, v0}, Lsun/nio/ch/ChannelInputStream;->read([B)I

    move-result v0

    .line 83
    .local v0, "n":I
    if-ne v0, v1, :cond_1b

    .line 84
    iget-object v1, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1e

    and-int/lit16 v1, v1, 0xff

    monitor-exit p0

    return v1

    .line 85
    :cond_1b
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 79
    .end local v0    # "n":I
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected blacklist read(Ljava/nio/ByteBuffer;)I
    .registers 4
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lsun/nio/ch/ChannelInputStream;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;Z)I

    move-result v0

    return v0
.end method

.method public declared-synchronized whitelist core-platform-api test-api read([BII)I
    .registers 7
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 91
    if-ltz p2, :cond_3c

    :try_start_3
    array-length v0, p1

    if-gt p2, v0, :cond_3c

    if-ltz p3, :cond_3c

    add-int v0, p2, p3

    array-length v1, p1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_42

    if-gt v0, v1, :cond_3c

    add-int v0, p2, p3

    if-ltz v0, :cond_3c

    .line 94
    if-nez p3, :cond_16

    .line 95
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 97
    :cond_16
    :try_start_16
    iget-object v0, p0, Lsun/nio/ch/ChannelInputStream;->bs:[B

    if-ne v0, p1, :cond_1d

    .line 98
    iget-object v0, p0, Lsun/nio/ch/ChannelInputStream;->bb:Ljava/nio/ByteBuffer;

    goto :goto_21

    .line 99
    .end local p0    # "this":Lsun/nio/ch/ChannelInputStream;
    :cond_1d
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_21
    nop

    .line 100
    .local v0, "bb":Ljava/nio/ByteBuffer;
    add-int v1, p2, p3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 101
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102
    iput-object v0, p0, Lsun/nio/ch/ChannelInputStream;->bb:Ljava/nio/ByteBuffer;

    .line 103
    iput-object p1, p0, Lsun/nio/ch/ChannelInputStream;->bs:[B

    .line 104
    invoke-virtual {p0, v0}, Lsun/nio/ch/ChannelInputStream;->read(Ljava/nio/ByteBuffer;)I

    move-result v1
    :try_end_3a
    .catchall {:try_start_16 .. :try_end_3a} :catchall_42

    monitor-exit p0

    return v1

    .line 93
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_3c
    :try_start_3c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_42

    .line 90
    .end local p1    # "bs":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method
