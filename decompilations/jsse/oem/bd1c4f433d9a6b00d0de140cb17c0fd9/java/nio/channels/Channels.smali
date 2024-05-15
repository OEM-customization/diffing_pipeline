.class public final Ljava/nio/channels/Channels;
.super Ljava/lang/Object;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/channels/Channels$ReadableByteChannelImpl;,
        Ljava/nio/channels/Channels$WritableByteChannelImpl;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    invoke-static {p0, p1}, Ljava/nio/channels/Channels;->writeFully(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 67
    if-nez p0, :cond_23

    .line 68
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\" is null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_23
    return-void
.end method

.method public static newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 348
    const-string/jumbo v0, "in"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-eqz v0, :cond_1d

    .line 351
    const-class v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 350
    if-eqz v0, :cond_1d

    .line 352
    check-cast p0, Ljava/io/FileInputStream;

    .end local p0    # "in":Ljava/io/InputStream;
    invoke-virtual {p0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    return-object v0

    .line 355
    .restart local p0    # "in":Ljava/io/InputStream;
    :cond_1d
    new-instance v0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;
    .registers 2
    .param p0, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 423
    const-string/jumbo v0, "out"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 424
    new-instance v0, Ljava/nio/channels/Channels$WritableByteChannelImpl;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$WritableByteChannelImpl;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static newInputStream(Ljava/nio/channels/AsynchronousByteChannel;)Ljava/io/InputStream;
    .registers 2
    .param p0, "ch"    # Ljava/nio/channels/AsynchronousByteChannel;

    .prologue
    .line 201
    const-string/jumbo v0, "ch"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    new-instance v0, Ljava/nio/channels/Channels$2;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$2;-><init>(Ljava/nio/channels/AsynchronousByteChannel;)V

    return-object v0
.end method

.method public static newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;
    .registers 2
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;

    .prologue
    .line 125
    const-string/jumbo v0, "ch"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    new-instance v0, Lsun/nio/ch/ChannelInputStream;

    invoke-direct {v0, p0}, Lsun/nio/ch/ChannelInputStream;-><init>(Ljava/nio/channels/ReadableByteChannel;)V

    return-object v0
.end method

.method public static newOutputStream(Ljava/nio/channels/AsynchronousByteChannel;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "ch"    # Ljava/nio/channels/AsynchronousByteChannel;

    .prologue
    .line 275
    const-string/jumbo v0, "ch"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    new-instance v0, Ljava/nio/channels/Channels$3;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$3;-><init>(Ljava/nio/channels/AsynchronousByteChannel;)V

    return-object v0
.end method

.method public static newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;
    .registers 2
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;

    .prologue
    .line 144
    const-string/jumbo v0, "ch"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v0, Ljava/nio/channels/Channels$1;

    invoke-direct {v0, p0}, Ljava/nio/channels/Channels$1;-><init>(Ljava/nio/channels/WritableByteChannel;)V

    return-object v0
.end method

.method public static newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/lang/String;)Ljava/io/Reader;
    .registers 4
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "csName"    # Ljava/lang/String;

    .prologue
    .line 538
    const-string/jumbo v0, "csName"

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

.method public static newReader(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Ljava/io/Reader;
    .registers 4
    .param p0, "ch"    # Ljava/nio/channels/ReadableByteChannel;
    .param p1, "dec"    # Ljava/nio/charset/CharsetDecoder;
    .param p2, "minBufferCap"    # I

    .prologue
    .line 502
    const-string/jumbo v0, "ch"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lsun/nio/cs/StreamDecoder;->forDecoder(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/charset/CharsetDecoder;I)Lsun/nio/cs/StreamDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/lang/String;)Ljava/io/Writer;
    .registers 4
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "csName"    # Ljava/lang/String;

    .prologue
    .line 607
    const-string/jumbo v0, "csName"

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

.method public static newWriter(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Ljava/io/Writer;
    .registers 4
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "enc"    # Ljava/nio/charset/CharsetEncoder;
    .param p2, "minBufferCap"    # I

    .prologue
    .line 571
    const-string/jumbo v0, "ch"

    invoke-static {p0, v0}, Ljava/nio/channels/Channels;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    invoke-virtual {p1}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lsun/nio/cs/StreamEncoder;->forEncoder(Ljava/nio/channels/WritableByteChannel;Ljava/nio/charset/CharsetEncoder;I)Lsun/nio/cs/StreamEncoder;

    move-result-object v0

    return-object v0
.end method

.method private static writeFully(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    instance-of v1, p0, Ljava/nio/channels/SelectableChannel;

    if-eqz v1, :cond_20

    move-object v0, p0

    .line 95
    check-cast v0, Ljava/nio/channels/SelectableChannel;

    .line 96
    .local v0, "sc":Ljava/nio/channels/SelectableChannel;
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->blockingLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 97
    :try_start_c
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isBlocking()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 98
    new-instance v1, Ljava/nio/channels/IllegalBlockingModeException;

    invoke-direct {v1}, Ljava/nio/channels/IllegalBlockingModeException;-><init>()V

    throw v1
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_18

    .line 96
    :catchall_18
    move-exception v1

    monitor-exit v2

    throw v1

    .line 99
    :cond_1b
    :try_start_1b
    invoke-static {p0, p1}, Ljava/nio/channels/Channels;->writeFullyImpl(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    monitor-exit v2

    .line 104
    .end local v0    # "sc":Ljava/nio/channels/SelectableChannel;
    :goto_1f
    return-void

    .line 102
    :cond_20
    invoke-static {p0, p1}, Ljava/nio/channels/Channels;->writeFullyImpl(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V

    goto :goto_1f
.end method

.method private static writeFullyImpl(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p0, "ch"    # Ljava/nio/channels/WritableByteChannel;
    .param p1, "bb"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lez v1, :cond_15

    .line 79
    invoke-interface {p0, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 80
    .local v0, "n":I
    if-gtz v0, :cond_0

    .line 81
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "no bytes written"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    .end local v0    # "n":I
    :cond_15
    return-void
.end method
