.class final Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;
.super Ljava/io/OutputStream;
.source "ConscryptEngineSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ConscryptEngineSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SSLOutputStream"
.end annotation


# instance fields
.field private socketChannel:Ljava/nio/channels/SocketChannel;

.field private socketOutputStream:Ljava/io/OutputStream;

.field private target:Ljava/nio/ByteBuffer;

.field final synthetic this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method static synthetic -wrap0(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;)V
    .registers 1
    .param p0, "-this"    # Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;

    .prologue
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->flushInternal()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p0, "-this"    # Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeInternal(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method constructor <init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 454
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    .line 459
    return-void
.end method

.method private flushInternal()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 532
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->init()V

    .line 533
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 534
    return-void
.end method

.method private init()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_2c

    .line 538
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-wrap1(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketOutputStream:Ljava/io/OutputStream;

    .line 539
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-wrap2(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketChannel:Ljava/nio/channels/SocketChannel;

    .line 540
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_2d

    .line 543
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-get0(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    .line 548
    :cond_2c
    :goto_2c
    return-void

    .line 545
    :cond_2d
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-get0(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    goto :goto_2c
.end method

.method private writeInternal(Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 492
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 493
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->init()V

    .line 498
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 501
    .local v1, "len":I
    :cond_f
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 502
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-static {v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-get0(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, v3}, Lcom/android/org/conscrypt/ConscryptEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    .line 503
    .local v0, "engineResult":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v2, v3, :cond_46

    .line 504
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected engine result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 506
    :cond_46
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v3

    if-eq v2, v3, :cond_81

    .line 507
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Engine bytesProduced "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 508
    const-string/jumbo v4, " does not match bytes written "

    .line 507
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 508
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 507
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 510
    :cond_81
    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v2

    sub-int/2addr v1, v2

    .line 511
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eq v1, v2, :cond_95

    .line 512
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string/jumbo v3, "Engine did not read the correct number of bytes"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 515
    :cond_95
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 518
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeToSocket()V

    .line 519
    if-gtz v1, :cond_f

    .line 520
    return-void
.end method

.method private writeToSocket()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketChannel:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_14

    .line 556
    :goto_4
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 557
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketChannel:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_4

    .line 561
    :cond_14
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketOutputStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 563
    :cond_26
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 464
    return-void
.end method

.method public flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 525
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 526
    :try_start_8
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->flushInternal()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_d

    monitor-exit v0

    .line 528
    return-void

    .line 525
    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public write(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 469
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 470
    const/4 v0, 0x1

    :try_start_9
    new-array v0, v0, [B

    int-to-byte v2, p1

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->write([B)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_14

    monitor-exit v1

    .line 472
    return-void

    .line 469
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 477
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 478
    :try_start_8
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeInternal(Ljava/nio/ByteBuffer;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_11

    monitor-exit v1

    .line 480
    return-void

    .line 477
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public write([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 485
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 486
    :try_start_8
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeInternal(Ljava/nio/ByteBuffer;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_11

    monitor-exit v1

    .line 488
    return-void

    .line 485
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method
