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
.field private final blacklist readLock:Ljava/lang/Object;

.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V
    .registers 2

    .line 530
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 528
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    .line 531
    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2

    .line 585
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    # getter for: Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;
    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/conscrypt/NativeSsl;->getPendingReadableBytes()I

    move-result v0

    return v0
.end method

.method blacklist awaitPendingOps()V
    .registers 3

    .line 597
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0

    .line 598
    return-void

    .line 597
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 541
    .local v1, "buffer":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->read([BII)I

    move-result v0

    .line 542
    .local v0, "result":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_f

    aget-byte v2, v1, v2

    and-int/lit16 v3, v2, 0xff

    :cond_f
    return v3
.end method

.method public whitelist test-api read([BII)I
    .registers 14
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 553
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 554
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/org/conscrypt/ArrayUtils;->checkOffsetAndCount(III)V

    .line 555
    if-nez p3, :cond_10

    .line 556
    const/4 v0, 0x0

    return v0

    .line 559
    :cond_10
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 560
    :try_start_13
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    # getter for: Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;
    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v1

    monitor-enter v1
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_6c

    .line 561
    :try_start_1a
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    # getter for: Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I
    invoke-static {v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->access$200(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_61

    .line 568
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_69

    .line 570
    :try_start_25
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    # getter for: Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;
    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v4

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    iget-object v1, v1, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->socket:Ljava/net/Socket;

    .line 571
    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-virtual {v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->getSoTimeout()I

    move-result v9

    .line 570
    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/org/conscrypt/NativeSsl;->read(Ljava/io/FileDescriptor;[BIII)I

    move-result v1

    .line 572
    .local v1, "ret":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5f

    .line 573
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    # getter for: Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;
    invoke-static {v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v2

    monitor-enter v2
    :try_end_4a
    .catchall {:try_start_25 .. :try_end_4a} :catchall_6c

    .line 574
    :try_start_4a
    iget-object v4, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    # getter for: Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I
    invoke-static {v4}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->access$200(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v4

    if-eq v4, v3, :cond_54

    .line 577
    monitor-exit v2

    goto :goto_5f

    .line 575
    :cond_54
    new-instance v3, Ljava/net/SocketException;

    const-string v4, "socket is closed"

    invoke-direct {v3, v4}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ret":I
    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    .end local p1    # "buf":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    throw v3

    .line 577
    .restart local v1    # "ret":I
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    .restart local p1    # "buf":[B
    .restart local p2    # "offset":I
    .restart local p3    # "byteCount":I
    :catchall_5c
    move-exception v3

    monitor-exit v2
    :try_end_5e
    .catchall {:try_start_4a .. :try_end_5e} :catchall_5c

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    .end local p1    # "buf":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    :try_start_5e
    throw v3

    .line 579
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    .restart local p1    # "buf":[B
    .restart local p2    # "offset":I
    .restart local p3    # "byteCount":I
    :cond_5f
    :goto_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5e .. :try_end_60} :catchall_6c

    return v1

    .line 562
    .end local v1    # "ret":I
    :cond_61
    :try_start_61
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    .end local p1    # "buf":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    throw v2

    .line 568
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    .restart local p1    # "buf":[B
    .restart local p2    # "offset":I
    .restart local p3    # "byteCount":I
    :catchall_69
    move-exception v2

    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_61 .. :try_end_6b} :catchall_69

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    .end local p1    # "buf":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    :try_start_6b
    throw v2

    .line 580
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
    .restart local p1    # "buf":[B
    .restart local p2    # "offset":I
    .restart local p3    # "byteCount":I
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6c

    throw v1
.end method
