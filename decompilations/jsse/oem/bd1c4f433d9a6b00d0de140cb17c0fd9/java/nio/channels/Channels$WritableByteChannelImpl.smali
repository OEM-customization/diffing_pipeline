.class Ljava/nio/channels/Channels$WritableByteChannelImpl;
.super Ljava/nio/channels/spi/AbstractInterruptibleChannel;
.source "Channels.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/nio/channels/Channels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WritableByteChannelImpl"
.end annotation


# static fields
.field private static final TRANSFER_SIZE:I = 0x2000


# instance fields
.field private buf:[B

.field private open:Z

.field out:Ljava/io/OutputStream;

.field private writeLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 437
    invoke-direct {p0}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;-><init>()V

    .line 433
    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->buf:[B

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->open:Z

    .line 435
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->writeLock:Ljava/lang/Object;

    .line 438
    iput-object p1, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->out:Ljava/io/OutputStream;

    .line 439
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
    .line 464
    iget-object v0, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 465
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->open:Z

    .line 466
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 11
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 442
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 443
    .local v1, "len":I
    const/4 v2, 0x0

    .line 444
    .local v2, "totalWritten":I
    iget-object v6, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 445
    :goto_a
    if-ge v2, v1, :cond_44

    .line 446
    sub-int v3, v1, v2

    .line 447
    const/16 v7, 0x2000

    .line 446
    :try_start_10
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 448
    .local v0, "bytesToWrite":I
    iget-object v3, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->buf:[B

    array-length v3, v3

    if-ge v3, v0, :cond_1d

    .line 449
    new-array v3, v0, [B

    iput-object v3, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->buf:[B

    .line 450
    :cond_1d
    iget-object v3, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->buf:[B

    const/4 v7, 0x0

    invoke-virtual {p1, v3, v7, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_23
    .catchall {:try_start_10 .. :try_end_23} :catchall_3f

    .line 452
    :try_start_23
    invoke-virtual {p0}, Ljava/nio/channels/Channels$WritableByteChannelImpl;->begin()V

    .line 453
    iget-object v3, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->out:Ljava/io/OutputStream;

    iget-object v7, p0, Ljava/nio/channels/Channels$WritableByteChannelImpl;->buf:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v0}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_38

    .line 455
    if-lez v0, :cond_36

    move v3, v4

    :goto_31
    :try_start_31
    invoke-virtual {p0, v3}, Ljava/nio/channels/Channels$WritableByteChannelImpl;->end(Z)V

    .line 457
    add-int/2addr v2, v0

    goto :goto_a

    :cond_36
    move v3, v5

    .line 455
    goto :goto_31

    .line 454
    :catchall_38
    move-exception v3

    .line 455
    if-lez v0, :cond_42

    :goto_3b
    invoke-virtual {p0, v4}, Ljava/nio/channels/Channels$WritableByteChannelImpl;->end(Z)V

    .line 454
    throw v3
    :try_end_3f
    .catchall {:try_start_31 .. :try_end_3f} :catchall_3f

    .line 444
    .end local v0    # "bytesToWrite":I
    :catchall_3f
    move-exception v3

    monitor-exit v6

    throw v3

    .restart local v0    # "bytesToWrite":I
    :cond_42
    move v4, v5

    .line 455
    goto :goto_3b

    .end local v0    # "bytesToWrite":I
    :cond_44
    monitor-exit v6

    .line 459
    return v2
.end method
