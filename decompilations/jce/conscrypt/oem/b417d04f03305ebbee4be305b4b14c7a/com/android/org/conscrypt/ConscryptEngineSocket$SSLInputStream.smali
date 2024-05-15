.class final Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;
.super Ljava/io/InputStream;
.source "ConscryptEngineSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ConscryptEngineSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SSLInputStream"
.end annotation


# instance fields
.field private final blacklist allocatedBuffer:Lcom/android/org/conscrypt/AllocatedBuffer;

.field private final blacklist fromEngine:Ljava/nio/ByteBuffer;

.field private final blacklist fromSocket:Ljava/nio/ByteBuffer;

.field private final blacklist fromSocketArrayOffset:I

.field private final blacklist readLock:Ljava/lang/Object;

.field private final blacklist singleByte:[B

.field private blacklist socketInputStream:Ljava/io/InputStream;

.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V
    .registers 4

    .line 731
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 723
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    .line 724
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->singleByte:[B

    .line 732
    # getter for: Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;
    invoke-static {p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->access$600(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 733
    # getter for: Lcom/android/org/conscrypt/ConscryptEngineSocket;->bufferAllocator:Lcom/android/org/conscrypt/BufferAllocator;
    invoke-static {p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->access$600(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/BufferAllocator;

    move-result-object v0

    .line 734
    # getter for: Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;
    invoke-static {p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->access$400(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v1

    .line 733
    invoke-virtual {v0, v1}, Lcom/android/org/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lcom/android/org/conscrypt/AllocatedBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->allocatedBuffer:Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 735
    invoke-virtual {v0}, Lcom/android/org/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    goto :goto_49

    .line 737
    :cond_34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->allocatedBuffer:Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 738
    # getter for: Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;
    invoke-static {p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->access$400(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    .line 741
    :goto_49
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 742
    # getter for: Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;
    invoke-static {p1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->access$400(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/org/conscrypt/ConscryptEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    .line 743
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    iput p1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocketArrayOffset:I

    .line 744
    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;[BII)I
    .registers 5
    .param p0, "x0"    # Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 722
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->processDataFromSocket([BII)I

    move-result v0

    return v0
.end method

.method private blacklist init()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 925
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->socketInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_c

    .line 926
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    # invokes: Lcom/android/org/conscrypt/ConscryptEngineSocket;->getUnderlyingInputStream()Ljava/io/InputStream;
    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->access$1100(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->socketInputStream:Ljava/io/InputStream;

    .line 928
    :cond_c
    return-void
.end method

.method private blacklist isHandshakeFinished()Z
    .registers 4

    .line 910
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    # getter for: Lcom/android/org/conscrypt/ConscryptEngineSocket;->stateLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->access$700(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 911
    :try_start_7
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    # getter for: Lcom/android/org/conscrypt/ConscryptEngineSocket;->state:I
    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->access$800(Lcom/android/org/conscrypt/ConscryptEngineSocket;)I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    return v1

    .line 912
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private blacklist isHandshaking(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z
    .registers 5
    .param p1, "status"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 802
    sget-object v0, Lcom/android/org/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    invoke-virtual {p1}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_13

    const/4 v2, 0x2

    if-eq v0, v2, :cond_13

    const/4 v2, 0x3

    if-eq v0, v2, :cond_13

    .line 808
    const/4 v0, 0x0

    return v0

    .line 806
    :cond_13
    return v1
.end method

.method private blacklist processDataFromSocket([BII)I
    .registers 11
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 827
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 828
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->checkOpen()V

    .line 831
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->init()V

    .line 835
    :goto_b
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_23

    .line 836
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 837
    .local v0, "readFromEngine":I
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 838
    return v0

    .line 842
    .end local v0    # "readFromEngine":I
    :cond_23
    const/4 v0, 0x1

    .line 845
    .local v0, "needMoreDataFromSocket":Z
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 846
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 848
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    # getter for: Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;
    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->access$400(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->isHandshaking(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z

    move-result v1

    .line 849
    .local v1, "engineHandshaking":Z
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    # getter for: Lcom/android/org/conscrypt/ConscryptEngineSocket;->engine:Lcom/android/org/conscrypt/ConscryptEngine;
    invoke-static {v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->access$400(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Lcom/android/org/conscrypt/ConscryptEngine;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3, v4}, Lcom/android/org/conscrypt/ConscryptEngine;->unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v2

    .line 855
    .local v2, "engineResult":Ljavax/net/ssl/SSLEngineResult;
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 856
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 858
    sget-object v3, Lcom/android/org/conscrypt/ConscryptEngineSocket$3;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v3, v4, :cond_9f

    const/4 v4, 0x2

    if-eq v3, v4, :cond_87

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6c

    .line 884
    return v6

    .line 888
    :cond_6c
    new-instance v3, Ljavax/net/ssl/SSLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected engine result "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 871
    :cond_87
    if-nez v1, :cond_9d

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->isHandshaking(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 872
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->isHandshakeFinished()Z

    move-result v3

    if-eqz v3, :cond_9d

    .line 875
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->renegotiate()V

    .line 876
    return v5

    .line 879
    :cond_9d
    const/4 v0, 0x0

    .line 880
    goto :goto_a8

    .line 860
    :cond_9f
    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v3

    if-nez v3, :cond_a6

    .line 862
    goto :goto_a8

    .line 865
    :cond_a6
    const/4 v0, 0x0

    .line 866
    nop

    .line 893
    :goto_a8
    if-nez v0, :cond_b1

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v3

    if-nez v3, :cond_b1

    .line 896
    return v5

    .line 900
    :cond_b1
    if-eqz v0, :cond_ba

    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readFromSocket()I

    move-result v3

    if-ne v3, v6, :cond_ba

    .line 902
    return v6

    .line 906
    .end local v0    # "needMoreDataFromSocket":Z
    .end local v1    # "engineHandshaking":Z
    .end local v2    # "engineResult":Ljavax/net/ssl/SSLEngineResult;
    :cond_ba
    goto/16 :goto_b
.end method

.method private blacklist readFromSocket()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 934
    :try_start_0
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 935
    .local v0, "pos":I
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 936
    .local v1, "lim":I
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->socketInputStream:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    .line 937
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    iget v4, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocketArrayOffset:I

    add-int/2addr v4, v0

    sub-int v5, v1, v0

    .line 936
    invoke-virtual {v2, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 939
    .local v2, "read":I
    if-lez v2, :cond_26

    .line 940
    iget-object v3, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromSocket:Ljava/nio/ByteBuffer;

    add-int v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_26
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_26} :catch_27

    .line 942
    :cond_26
    return v2

    .line 943
    .end local v0    # "pos":I
    .end local v1    # "lim":I
    .end local v2    # "read":I
    :catch_27
    move-exception v0

    .line 944
    .local v0, "e":Ljava/io/EOFException;
    const/4 v1, -0x1

    return v1
.end method

.method private blacklist readUntilDataAvailable([BII)I
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 815
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->processDataFromSocket([BII)I

    move-result v0

    .line 816
    .local v0, "count":I
    if-eqz v0, :cond_7

    .line 817
    return v0

    .line 816
    :cond_7
    goto :goto_0
.end method

.method private blacklist renegotiate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 919
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    # getter for: Lcom/android/org/conscrypt/ConscryptEngineSocket;->handshakeLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->access$900(Lcom/android/org/conscrypt/ConscryptEngineSocket;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 920
    :try_start_7
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    # invokes: Lcom/android/org/conscrypt/ConscryptEngineSocket;->doHandshake()V
    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->access$1000(Lcom/android/org/conscrypt/ConscryptEngineSocket;)V

    .line 921
    monitor-exit v0

    .line 922
    return-void

    .line 921
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method


# virtual methods
.method public whitelist core-platform-api test-api available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 795
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 796
    :try_start_8
    invoke-direct {p0}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->init()V

    .line 797
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->fromEngine:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    monitor-exit v0

    return v1

    .line 798
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->close()V

    .line 749
    return-void
.end method

.method public whitelist core-platform-api test-api read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 761
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 762
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 764
    :try_start_8
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->singleByte:[B

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->read([BII)I

    move-result v1

    .line 765
    .local v1, "count":I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_15

    .line 767
    monitor-exit v0

    return v4

    .line 769
    :cond_15
    if-ne v1, v2, :cond_1f

    .line 772
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->singleByte:[B

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    monitor-exit v0

    return v2

    .line 770
    :cond_1f
    new-instance v2, Ljavax/net/ssl/SSLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read incorrect number of bytes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;
    throw v2

    .line 773
    .end local v1    # "count":I
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_36

    throw v1
.end method

.method public whitelist core-platform-api test-api read([B)I
    .registers 5
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 779
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 780
    const/4 v1, 0x0

    :try_start_9
    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->read([BII)I

    move-result v1

    monitor-exit v0

    return v1

    .line 781
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public whitelist core-platform-api test-api read([BII)I
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 786
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptEngineSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptEngineSocket;->startHandshake()V

    .line 787
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 788
    :try_start_8
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readUntilDataAvailable([BII)I

    move-result v1

    monitor-exit v0

    return v1

    .line 789
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_e

    throw v1
.end method

.method blacklist release()V
    .registers 3

    .line 752
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->allocatedBuffer:Lcom/android/org/conscrypt/AllocatedBuffer;

    if-eqz v1, :cond_c

    .line 754
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptEngineSocket$SSLInputStream;->allocatedBuffer:Lcom/android/org/conscrypt/AllocatedBuffer;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/AllocatedBuffer;->release()Lcom/android/org/conscrypt/AllocatedBuffer;

    .line 756
    :cond_c
    monitor-exit v0

    .line 757
    return-void

    .line 756
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method
