.class Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
.super Ljava/io/InputStream;
.source "ConscryptFileDescriptorSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLInputStream"
.end annotation


# instance fields
.field private final readLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .prologue
    .line 501
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 499
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    .line 502
    return-void
.end method


# virtual methods
.method awaitPendingOps()V
    .registers 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    .line 564
    return-void
.end method

.method public read()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 511
    new-array v0, v4, [B

    .line 512
    .local v0, "buffer":[B
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->read([BII)I

    move-result v1

    .line 513
    .local v1, "result":I
    if-eq v1, v2, :cond_f

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    :cond_f
    return v2
.end method

.method public read([BII)I
    .registers 13
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    const/4 v1, 0x0

    .line 522
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 524
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 525
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/org/conscrypt/ArrayUtils;->checkOffsetAndCount(III)V

    .line 526
    if-nez p3, :cond_12

    .line 527
    return v1

    .line 530
    :cond_12
    iget-object v7, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v7

    .line 531
    :try_start_15
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-get2(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_30

    .line 532
    :try_start_1c
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-get1(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v0

    if-ne v0, v8, :cond_33

    .line 533
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v2, "socket is closed"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_2d

    .line 531
    :catchall_2d
    move-exception v0

    :try_start_2e
    monitor-exit v1

    throw v0
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_30

    .line 530
    :catchall_30
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_33
    :try_start_33
    monitor-exit v1

    .line 541
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-get0(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/SslWrapper;

    move-result-object v0

    .line 542
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    iget-object v1, v1, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-virtual {v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getSoTimeout()I

    move-result v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 541
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/conscrypt/SslWrapper;->read(Ljava/io/FileDescriptor;[BIII)I

    move-result v6

    .line 543
    .local v6, "ret":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_6e

    .line 544
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-get2(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_59
    .catchall {:try_start_33 .. :try_end_59} :catchall_30

    .line 545
    :try_start_59
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-get1(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v0

    if-ne v0, v8, :cond_6d

    .line 546
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v2, "socket is closed"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6a
    .catchall {:try_start_59 .. :try_end_6a} :catchall_6a

    .line 544
    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit v1

    throw v0

    :cond_6d
    monitor-exit v1
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_30

    :cond_6e
    monitor-exit v7

    .line 550
    return v6
.end method
