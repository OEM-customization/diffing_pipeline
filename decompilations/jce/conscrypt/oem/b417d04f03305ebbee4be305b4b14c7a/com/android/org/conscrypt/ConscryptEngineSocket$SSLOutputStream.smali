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
.field private blacklist socketOutputStream:Ljava/io/OutputStream;

.field private final blacklist target:Ljava/nio/ByteBuffer;

.field private final blacklist targetArrayOffset:I

.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

.field private final blacklist writeLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V
    .registers 3

    .line 622
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 617
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    .line 623
    # getter for: Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;
    invoke-static {p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->access$400(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    .line 624
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    iput p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->targetArrayOffset:I

    .line 625
    return-void
.end method

.method static synthetic blacklist access$200(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 616
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeInternal(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 616
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->flushInternal()V

    return-void
.end method

.method private blacklist flushInternal()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 703
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->init()V

    .line 704
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 705
    return-void
.end method

.method private blacklist init()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 708
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketOutputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_c

    .line 709
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    # invokes: Lcom/android/org/conscrypt/ConscryptEngineSocket;->getUnderlyingOutputStream()Ljava/io/OutputStream;
    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->access$500(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketOutputStream:Ljava/io/OutputStream;

    .line 711
    :cond_c
    return-void
.end method

.method private blacklist writeInternal(Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 657
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 658
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 659
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->init()V

    .line 663
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 666
    .local v0, "len":I
    :cond_f
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 667
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    # getter for: Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;
    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->access$400(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v2}, Lcom/android/org/conscrypt/ConscryptEngine;->wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v1

    .line 668
    .local v1, "engineResult":Ljavax/net/ssl/SSLEngineResult;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v2, v3, :cond_4c

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v2, v3, :cond_31

    goto :goto_4c

    .line 669
    :cond_31
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected engine result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 671
    :cond_4c
    :goto_4c
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v3

    if-ne v2, v3, :cond_8f

    .line 675
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesConsumed()I

    move-result v2

    sub-int/2addr v0, v2

    .line 676
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ne v0, v2, :cond_87

    .line 679
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    if-ne v2, v3, :cond_7c

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v2

    if-nez v2, :cond_7c

    .line 680
    if-gtz v0, :cond_74

    goto :goto_86

    .line 681
    :cond_74
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "Socket closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 686
    :cond_7c
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 689
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeToSocket()V

    .line 690
    if-gtz v0, :cond_f

    .line 691
    :goto_86
    return-void

    .line 677
    :cond_87
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "Engine did not read the correct number of bytes"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 672
    :cond_8f
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Engine bytesProduced "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " does not match bytes written "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    .line 673
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist writeToSocket()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 715
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->socketOutputStream:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->targetArrayOffset:I

    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->target:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 716
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 630
    return-void
.end method

.method public whitelist core-platform-api test-api flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 695
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 696
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    :try_start_8
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->flushInternal()V

    .line 698
    monitor-exit v0

    .line 699
    return-void

    .line 698
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public whitelist core-platform-api test-api write(I)V
    .registers 6
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 635
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 636
    const/4 v1, 0x1

    :try_start_9
    new-array v1, v1, [B

    const/4 v2, 0x0

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->write([B)V

    .line 637
    monitor-exit v0

    .line 638
    return-void

    .line 637
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public whitelist core-platform-api test-api write([B)V
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 642
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 643
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_8
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeInternal(Ljava/nio/ByteBuffer;)V

    .line 645
    monitor-exit v0

    .line 646
    return-void

    .line 645
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public whitelist core-platform-api test-api write([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 651
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 652
    :try_start_8
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeInternal(Ljava/nio/ByteBuffer;)V

    .line 653
    monitor-exit v0

    .line 654
    return-void

    .line 653
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_11

    throw v1
.end method
