.class Ljava/nio/channels/Channels$ReadableByteChannelImpl;
.super Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.source "Channels.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadableByteChannelImpl"
.end annotation


# static fields
.field private static final TRANSFER_SIZE:I = 0x2000


# instance fields
.field private buf:[B

.field in:Ljava/io/InputStream;

.field private open:Z

.field private readLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;-><init>()V

    .line 364
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->open:Z

    .line 366
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->readLock:Ljava/lang/Object;

    .line 369
    iput-object p1, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    .line 370
    return-void
.end method


# virtual methods
.method protected implCloseChannel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->open:Z

    .line 406
    return-void
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 12
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 373
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 374
    .local v2, "len":I
    const/4 v3, 0x0

    .line 375
    .local v3, "totalRead":I
    const/4 v0, 0x0

    .line 376
    .local v0, "bytesRead":I
    iget-object v7, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v7

    .line 377
    :goto_b
    if-ge v3, v2, :cond_28

    .line 378
    sub-int v4, v2, v3

    .line 379
    const/16 v8, 0x2000

    .line 378
    :try_start_11
    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 380
    .local v1, "bytesToRead":I
    iget-object v4, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    array-length v4, v4

    if-ge v4, v1, :cond_1e

    .line 381
    new-array v4, v1, [B

    iput-object v4, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    .line 382
    :cond_1e
    if-lez v3, :cond_2f

    iget-object v4, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_4b

    move-result v4

    if-gtz v4, :cond_2f

    .line 396
    .end local v1    # "bytesToRead":I
    :cond_28
    if-gez v0, :cond_59

    if-nez v3, :cond_59

    .line 397
    const/4 v4, -0x1

    monitor-exit v7

    return v4

    .line 385
    .restart local v1    # "bytesToRead":I
    :cond_2f
    :try_start_2f
    invoke-virtual {p0}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->begin()V

    .line 386
    iget-object v4, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    iget-object v8, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_50

    move-result v0

    .line 388
    if-lez v0, :cond_4e

    move v4, v5

    :goto_3e
    :try_start_3e
    invoke-virtual {p0, v4}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->end(Z)V

    .line 390
    if-ltz v0, :cond_28

    .line 393
    add-int/2addr v3, v0

    .line 394
    iget-object v4, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    const/4 v8, 0x0

    invoke-virtual {p1, v4, v8, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
    :try_end_4a
    .catchall {:try_start_3e .. :try_end_4a} :catchall_4b

    goto :goto_b

    .line 376
    .end local v1    # "bytesToRead":I
    :catchall_4b
    move-exception v4

    monitor-exit v7

    throw v4

    .restart local v1    # "bytesToRead":I
    :cond_4e
    move v4, v6

    .line 388
    goto :goto_3e

    .line 387
    :catchall_50
    move-exception v4

    .line 388
    if-lez v0, :cond_57

    :goto_53
    :try_start_53
    invoke-virtual {p0, v5}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->end(Z)V

    .line 387
    throw v4
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_4b

    :cond_57
    move v5, v6

    .line 388
    goto :goto_53

    .end local v1    # "bytesToRead":I
    :cond_59
    monitor-exit v7

    .line 399
    return v3
.end method
