.class public final Ljava/nio/channels/Channels;
.super Ljava/lang/Object;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/channels/Channels$WritableByteChannelImpl;,
        Ljava/nio/channels/Channels$ReadableByteChannelImpl;
    }
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic blacklist access$000(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p0, "x0"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    invoke-static {p0, p1}, Ljava/nio/channels/Channels;->writeFully(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static greylist-max-o checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;

    .line 67
    if-eqz p0, :cond_3

    .line 69
    return-void

    .line 68
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" is null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;

    .line 348
    const-string v0, "in"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_1d

    const-class v0, Ljava/io/FileInputStream;

    .line 351
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 352
    move-object v0, p0

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0

    .line 355
    :cond_1d
    new-instance v0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static whitelist test-api newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;
    .registers 2
    .param p0, "out"    # Ljava/io/OutputStream;

    .line 423
    const-string v0, "out"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    new-instance v0, Ljava/nio/channels/Channels$WritableByteChannelImpl;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$WritableByteChannelImpl;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static whitelist test-api newInputStream(Ljava/nio/channels/AsynchronousByteChannel;)Ljava/io/InputStream;
    .registers 2
    .param p0, "ch"    # Ljava/nio/channels/AsynchronousByteChannel;

    .line 201
    const-string v0, "ch"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/nio/channels/Channels$2;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$2;-><init>(Ljava/nio/channels/AsynchronousByteChannel;)V

    return-object v0
.end method

.method public static whitelist test-api newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;
    .registers 2
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;

    .line 125
    const-string v0, "ch"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v0, Lsun/nio/ch/ChannelInputStream;

    invoke-direct {v0, p0}, Lsun/nio/ch/ChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    return-object v0
.end method

.method public static whitelist test-api newOutputStream(Ljava/nio/channels/AsynchronousByteChannel;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "ch"    # Ljava/nio/channels/AsynchronousByteChannel;

    .line 275
    const-string v0, "ch"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/nio/channels/Channels$3;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$3;-><init>(Ljava/nio/channels/AsynchronousByteChannel;)V

    return-object v0
.end method

.method public static whitelist test-api newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;

    .line 144
    const-string v0, "ch"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/nio/channels/Channels$1;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$1;-><init>(Ljava/nio/channels/WritableByteChannel;)V

    return-object v0
.end method

.method public static whitelist test-api newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)Ljava/io/Reader;
    .registers 4
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "csName"    # Ljava/lang/String;

    .line 538
    const-string v0, "csName"

    invoke-static {p1, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/nio/channels/Channels;->newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;
    .registers 4
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "dec"    # Ljava/nio/charset/CharsetDecoder;
    .param p2, "minBufferCap"    # I

    .line 502
    const-string v0, "ch"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lsun/nio/cs/StreamDecoder;->forDecoder(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Lsun/nio/cs/StreamDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/lang/String;)Ljava/io/Writer;
    .registers 4
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "csName"    # Ljava/lang/String;

    .line 607
    const-string v0, "csName"

    invoke-static {p1, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Ljava/nio/channels/Channels;->newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Ljava/io/Writer;
    .registers 4
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "enc"    # Ljava/nio/charset/CharsetEncoder;
    .param p2, "minBufferCap"    # I

    .line 571
    const-string v0, "ch"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lsun/nio/cs/StreamEncoder;->forEncoder(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Lsun/nio/cs/StreamEncoder;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o writeFully(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    instance-of v0, p0, Ljava/nio/channels/SelectableChannel;

    if-eqz v0, :cond_20

    .line 95
    move-object v0, p0

    check-cast v0, Ljava/nio/channels/SelectableChannel;

    .line 96
    .local v0, "sc":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->blockingLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 97
    :try_start_c
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 99
    invoke-static {p0, p1}, Ljava/nio/channels/Channels;->writeFullyImpl(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 100
    monitor-exit v1

    .line 101
    .end local v0    # "sc":Ljava/nio/channels/SelectableChannel;
    goto :goto_23

    .line 98
    .restart local v0    # "sc":Ljava/nio/channels/SelectableChannel;
    :cond_17
    new-instance v2, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v2}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    .end local v0    # "sc":Ljava/nio/channels/SelectableChannel;
    .end local p0    # "ch":Ljava/nio/channels/WritableByteChannel;
    .end local p1    # "bb":Ljava/nio/ByteBuffer;
    throw v2

    .line 100
    .restart local v0    # "sc":Ljava/nio/channels/SelectableChannel;
    .restart local p0    # "ch":Ljava/nio/channels/WritableByteChannel;
    .restart local p1    # "bb":Ljava/nio/ByteBuffer;
    :catchall_1d
    move-exception v2

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_1d

    throw v2

    .line 102
    .end local v0    # "sc":Ljava/nio/channels/SelectableChannel;
    :cond_20
    invoke-static {p0, p1}, Ljava/nio/channels/Channels;->writeFullyImpl(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    .line 104
    :goto_23
    return-void
.end method

.method private static greylist-max-o writeFullyImpl(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_15

    .line 79
    invoke-interface {p0, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 80
    .local v0, "n":I
    if-lez v0, :cond_d

    .line 82
    .end local v0    # "n":I
    goto :goto_0

    .line 81
    .restart local v0    # "n":I
    :cond_d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "no bytes written"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    .end local v0    # "n":I
    :cond_15
    return-void
.end method
