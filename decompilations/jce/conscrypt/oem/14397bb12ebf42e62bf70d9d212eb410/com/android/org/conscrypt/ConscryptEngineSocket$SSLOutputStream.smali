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

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic -wrap1(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p0, "-this"    # Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeInternal(Ljava/nio/ByteBuffer;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/org/conscrypt/ConscryptEngineSocket;

    .prologue
    .line 459
    #disallowed odex opcode
    #iput-object-quick p1, p0, field@0x14
    nop

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 454
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x18
    nop

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
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@80
    nop

    .line 532
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->init()V

    .line 533
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@12
    nop

    .line 534
    #disallowed odex opcode
    #return-void-no-barrier
    nop
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
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    if-nez v0, :cond_2c

    .line 538
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-wrap1(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/io/OutputStream;

    move-result-object v0

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0xc
    nop

    .line 539
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-wrap2(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x8
    nop

    .line 540
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    if-eqz v0, :cond_2d

    .line 543
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-get0(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@24
    nop

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x10
    nop

    .line 548
    :cond_2c
    :goto_2c
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 545
    :cond_2d
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-get0(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@24
    nop

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    #disallowed odex opcode
    #iput-object-quick v0, p0, field@0x10
    nop

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
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@80
    nop

    .line 493
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->init()V

    .line 498
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@34
    nop

    move-result v1

    .line 501
    .local v1, "len":I
    :cond_f
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@16
    nop

    .line 502
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x14
    nop

    invoke-static {v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->-get0(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v2

    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2, p1, v3}, vtable@41
    nop

    move-result-object v0

    .line 503
    .local v0, "engineResult":Ljavax/net/ssl/SSLEngineResult;
    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@14
    nop

    move-result-object v2

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v2, v3, :cond_46

    .line 504
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected engine result "

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@14
    nop

    move-result-object v4

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@76
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 506
    :cond_46
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@32
    nop

    move-result v2

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@12
    nop

    move-result v3

    if-eq v2, v3, :cond_81

    .line 507
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Engine bytesProduced "

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@12
    nop

    move-result v4

    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@72
    nop

    move-result-object v3

    .line 508
    const-string/jumbo v4, " does not match bytes written "

    .line 507
    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@77
    nop

    move-result-object v3

    .line 508
    #disallowed odex opcode
    #iget-object-quick v4, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v4}, vtable@32
    nop

    move-result v4

    .line 507
    #disallowed odex opcode
    #invoke-virtual-quick {v3, v4}, vtable@72
    nop

    move-result-object v3

    #disallowed odex opcode
    #invoke-virtual-quick {v3}, vtable@7
    nop

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 510
    :cond_81
    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@11
    nop

    move-result v2

    sub-int/2addr v1, v2

    .line 511
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@34
    nop

    move-result v2

    if-eq v1, v2, :cond_95

    .line 512
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string/jumbo v3, "Engine did not read the correct number of bytes"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 515
    :cond_95
    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@18
    nop

    .line 518
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->writeToSocket()V

    .line 519
    if-gtz v1, :cond_f

    .line 520
    #disallowed odex opcode
    #return-void-no-barrier
    nop
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
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    if-eqz v0, :cond_14

    .line 556
    :goto_4
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@21
    nop

    move-result v0

    if-eqz v0, :cond_26

    .line 557
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x8
    nop

    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@44
    nop

    goto :goto_4

    .line 561
    :cond_14
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@40
    nop

    move-result-object v1

    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x10
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v2}, vtable@24
    nop

    move-result v2

    const/4 v3, 0x0

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v3, v2}, vtable@15
    nop

    .line 563
    :cond_26
    #disallowed odex opcode
    #return-void-no-barrier
    nop
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
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@12
    nop

    .line 464
    #disallowed odex opcode
    #return-void-no-barrier
    nop
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
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@79
    nop

    .line 525
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x18
    nop

    monitor-enter v0

    .line 526
    :try_start_8
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLOutputStream;->flushInternal()V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_d

    monitor-exit v0

    .line 528
    #disallowed odex opcode
    #return-void-no-barrier
    nop

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
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@79
    nop

    .line 469
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

    monitor-enter v1

    .line 470
    const/4 v0, 0x1

    :try_start_9
    new-array v0, v0, [B

    int-to-byte v2, p1

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    #disallowed odex opcode
    #invoke-virtual-quick {p0, v0}, vtable@14
    nop
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_14

    monitor-exit v1

    .line 472
    #disallowed odex opcode
    #return-void-no-barrier
    nop

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
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@79
    nop

    .line 477
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

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
    #disallowed odex opcode
    #return-void-no-barrier
    nop

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
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x14
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@79
    nop

    .line 485
    #disallowed odex opcode
    #iget-object-quick v1, p0, field@0x18
    nop

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
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 485
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method
