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
.field private static final greylist-max-o TRANSFER_SIZE:I = 0x2000


# instance fields
.field private greylist-max-o buf:[B

.field greylist-max-o in:Ljava/io/InputStream;

.field private greylist-max-o open:Z

.field private greylist-max-o readLock:Ljava/lang/Object;


# direct methods
.method constructor greylist-max-o <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

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
.method protected whitelist test-api implCloseChannel()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->open:Z

    .line 406
    return-void
.end method

.method public whitelist test-api read(Ljava/nio/ByteBuffer;)I
    .registers 11
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 374
    .local v0, "len":I
    const/4 v1, 0x0

    .line 375
    .local v1, "totalRead":I
    const/4 v2, 0x0

    .line 376
    .local v2, "bytesRead":I
    iget-object v3, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v3

    .line 377
    :goto_9
    if-ge v1, v0, :cond_54

    .line 378
    sub-int v4, v0, v1

    const/16 v5, 0x2000

    :try_start_f
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 380
    .local v4, "bytesToRead":I
    iget-object v5, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    array-length v5, v5

    if-ge v5, v4, :cond_1c

    .line 381
    new-array v5, v4, [B

    iput-object v5, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    .line 382
    :cond_1c
    if-lez v1, :cond_27

    iget-object v5, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v5
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_52

    if-gtz v5, :cond_27

    .line 383
    goto :goto_54

    .line 385
    :cond_27
    const/4 v5, 0x1

    const/4 v6, 0x0

    :try_start_29
    invoke-virtual {p0}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->begin()V

    .line 386
    iget-object v7, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->in:Ljava/io/InputStream;

    iget-object v8, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    invoke-virtual {v7, v8, v6, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v7
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_48

    move v2, v7

    .line 388
    if-lez v2, :cond_38

    goto :goto_39

    :cond_38
    move v5, v6

    :goto_39
    :try_start_39
    invoke-virtual {p0, v5}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->end(Z)V

    .line 389
    nop

    .line 390
    if-gez v2, :cond_40

    .line 391
    goto :goto_54

    .line 393
    :cond_40
    add-int/2addr v1, v2

    .line 394
    iget-object v5, p0, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->buf:[B

    invoke-virtual {p1, v5, v6, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 395
    nop

    .end local v4    # "bytesToRead":I
    goto :goto_9

    .line 388
    .restart local v4    # "bytesToRead":I
    :catchall_48
    move-exception v7

    if-lez v2, :cond_4c

    goto :goto_4d

    :cond_4c
    move v5, v6

    :goto_4d
    invoke-virtual {p0, v5}, Ljava/nio/channels/Channels$ReadableByteChannelImpl;->end(Z)V

    .line 389
    nop

    .end local v0    # "len":I
    .end local v1    # "totalRead":I
    .end local v2    # "bytesRead":I
    .end local p0    # "this":Ljava/nio/channels/Channels$ReadableByteChannelImpl;
    .end local p1    # "dst":Ljava/nio/ByteBuffer;
    throw v7

    .line 400
    .end local v4    # "bytesToRead":I
    .restart local v0    # "len":I
    .restart local v1    # "totalRead":I
    .restart local v2    # "bytesRead":I
    .restart local p0    # "this":Ljava/nio/channels/Channels$ReadableByteChannelImpl;
    .restart local p1    # "dst":Ljava/nio/ByteBuffer;
    :catchall_52
    move-exception v4

    goto :goto_5d

    .line 396
    :cond_54
    :goto_54
    if-gez v2, :cond_5b

    if-nez v1, :cond_5b

    .line 397
    const/4 v4, -0x1

    monitor-exit v3

    return v4

    .line 399
    :cond_5b
    monitor-exit v3

    return v1

    .line 400
    :goto_5d
    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_39 .. :try_end_5e} :catchall_52

    throw v4
.end method
