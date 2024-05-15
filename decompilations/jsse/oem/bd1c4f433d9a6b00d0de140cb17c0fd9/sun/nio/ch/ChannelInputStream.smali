.class public Lsun/nio/ch/ChannelInputStream;
.super Ljava/io/InputStream;
.source "ChannelInputStream.java"


# instance fields
.field private b1:[B

.field private bb:Ljava/nio/ByteBuffer;

.field private bs:[B

.field protected final ch:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .registers 3
    .param p1, "ch"    # Ljava/nio/channels/ReadableByteChannel;

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 77
    iput-object v0, p0, Lsun/nio/ch/ChannelInputStream;->bb:Ljava/nio/ByteBuffer;

    .line 78
    iput-object v0, p0, Lsun/nio/ch/ChannelInputStream;->bs:[B

    .line 79
    iput-object v0, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    .line 82
    iput-object p1, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    .line 83
    return-void
.end method

.method public static read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I
    .registers 7
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    instance-of v3, p0, Ljava/nio/channels/SelectableChannel;

    if-eqz v3, :cond_21

    move-object v2, p0

    .line 57
    check-cast v2, Ljava/nio/channels/SelectableChannel;

    .line 58
    .local v2, "sc":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->blockingLock()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 59
    :try_start_c
    invoke-virtual {v2}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v0

    .line 60
    .local v0, "bm":Z
    if-nez v0, :cond_1b

    .line 61
    new-instance v3, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v3}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v3
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_18

    .line 58
    .end local v0    # "bm":Z
    :catchall_18
    move-exception v3

    monitor-exit v4

    throw v3

    .line 65
    .restart local v0    # "bm":Z
    :cond_1b
    :try_start_1b
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    move-result v1

    .local v1, "n":I
    monitor-exit v4

    .line 69
    return v1

    .line 72
    .end local v0    # "bm":Z
    .end local v1    # "n":I
    .end local v2    # "sc":Ljava/nio/channels/SelectableChannel;
    :cond_21
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    return v3
.end method


# virtual methods
.method public available()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v3, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    instance-of v3, v3, Ljava/nio/channels/SeekableByteChannel;

    if-eqz v3, :cond_26

    .line 122
    iget-object v2, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    check-cast v2, Ljava/nio/channels/SeekableByteChannel;

    .line 123
    .local v2, "sbc":Ljava/nio/channels/SeekableByteChannel;
    const-wide/16 v4, 0x0

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->size()J

    move-result-wide v6

    invoke-interface {v2}, Ljava/nio/channels/SeekableByteChannel;->position()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 124
    .local v0, "rem":J
    const-wide/32 v4, 0x7fffffff

    cmp-long v3, v0, v4

    if-lez v3, :cond_24

    const v3, 0x7fffffff

    :goto_23
    return v3

    :cond_24
    long-to-int v3, v0

    goto :goto_23

    .line 126
    .end local v0    # "rem":J
    .end local v2    # "sbc":Ljava/nio/channels/SeekableByteChannel;
    :cond_26
    const/4 v3, 0x0

    return v3
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v0, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 131
    return-void
.end method

.method public declared-synchronized read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    monitor-enter p0

    .line 86
    :try_start_2
    iget-object v1, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    if-nez v1, :cond_b

    .line 87
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    .line 88
    :cond_b
    iget-object v1, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    invoke-virtual {p0, v1}, Lsun/nio/ch/ChannelInputStream;->read([B)I

    move-result v0

    .line 89
    .local v0, "n":I
    if-ne v0, v2, :cond_1c

    .line 90
    iget-object v1, p0, Lsun/nio/ch/ChannelInputStream;->b1:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1f

    and-int/lit16 v1, v1, 0xff

    monitor-exit p0

    return v1

    .line 91
    :cond_1c
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .end local v0    # "n":I
    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected read(Ljava/nio/ByteBuffer;)I
    .registers 3
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lsun/nio/ch/ChannelInputStream;->ch:Ljava/nio/channels/ReadableByteChannel;

    invoke-static {v0, p1}, Lsun/nio/ch/ChannelInputStream;->read(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized read([BII)I
    .registers 8
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    .line 97
    if-ltz p2, :cond_7

    :try_start_4
    array-length v1, p1

    if-le p2, v1, :cond_10

    .line 99
    :cond_7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1

    .line 97
    :cond_10
    if-ltz p3, :cond_7

    .line 98
    add-int v1, p2, p3

    :try_start_14
    array-length v2, p1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_d

    if-gt v1, v2, :cond_7

    add-int v1, p2, p3

    if-ltz v1, :cond_7

    .line 100
    if-nez p3, :cond_1f

    monitor-exit p0

    .line 101
    return v3

    .line 103
    :cond_1f
    :try_start_1f
    iget-object v1, p0, Lsun/nio/ch/ChannelInputStream;->bs:[B

    if-ne v1, p1, :cond_3f

    .line 104
    iget-object v0, p0, Lsun/nio/ch/ChannelInputStream;->bb:Ljava/nio/ByteBuffer;

    .line 106
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :goto_25
    add-int v1, p2, p3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 107
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    iput-object v0, p0, Lsun/nio/ch/ChannelInputStream;->bb:Ljava/nio/ByteBuffer;

    .line 109
    iput-object p1, p0, Lsun/nio/ch/ChannelInputStream;->bs:[B

    .line 110
    invoke-virtual {p0, v0}, Lsun/nio/ch/ChannelInputStream;->read(Ljava/nio/ByteBuffer;)I
    :try_end_3c
    .catchall {:try_start_1f .. :try_end_3c} :catchall_d

    move-result v1

    monitor-exit p0

    return v1

    .line 105
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_3f
    :try_start_3f
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_d

    move-result-object v0

    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    goto :goto_25
.end method
