.class Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
.super Ljava/io/OutputStream;
.source "ConscryptFileDescriptorSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLOutputStream"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

.field private final blacklist writeLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V
    .registers 2

    .line 614
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 612
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    .line 615
    return-void
.end method


# virtual methods
.method blacklist awaitPendingOps()V
    .registers 3

    .line 672
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    monitor-exit v0

    .line 673
    return-void

    .line 672
    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_5

    throw v1
.end method

.method public whitelist test-api write(I)V
    .registers 5
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 623
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 624
    .local v0, "buffer":[B
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 625
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->write([B)V

    .line 626
    return-void
.end method

.method public whitelist test-api write([BII)V
    .registers 14
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 635
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 636
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/org/conscrypt/ArrayUtils;->checkOffsetAndCount(III)V

    .line 637
    if-nez p3, :cond_f

    .line 638
    return-void

    .line 641
    :cond_f
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 642
    :try_start_12
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    # getter for: Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;
    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v1

    monitor-enter v1
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_66

    .line 643
    :try_start_19
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    # getter for: Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I
    invoke-static {v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->access$200(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_5b

    .line 650
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_63

    .line 652
    :try_start_24
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    # getter for: Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;
    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v4

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    iget-object v1, v1, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v5

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .line 653
    # getter for: Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->writeTimeoutMilliseconds:I
    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->access$300(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v9

    .line 652
    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v4 .. v9}, Lcom/android/org/conscrypt/NativeSsl;->write(Ljava/io/FileDescriptor;[BIII)V

    .line 655
    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    # getter for: Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->ssl:Lcom/android/org/conscrypt/NativeSsl;
    invoke-static {v1}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/NativeSsl;

    move-result-object v1

    monitor-enter v1
    :try_end_45
    .catchall {:try_start_24 .. :try_end_45} :catchall_66

    .line 656
    :try_start_45
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    # getter for: Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->state:I
    invoke-static {v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->access$200(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v2

    if-eq v2, v3, :cond_50

    .line 659
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_45 .. :try_end_4e} :catchall_58

    .line 660
    :try_start_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_66

    .line 661
    return-void

    .line 657
    :cond_50
    :try_start_50
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    .end local p1    # "buf":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    throw v2

    .line 659
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    .restart local p1    # "buf":[B
    .restart local p2    # "offset":I
    .restart local p3    # "byteCount":I
    :catchall_58
    move-exception v2

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_50 .. :try_end_5a} :catchall_58

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    .end local p1    # "buf":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    :try_start_5a
    throw v2
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_66

    .line 644
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    .restart local p1    # "buf":[B
    .restart local p2    # "offset":I
    .restart local p3    # "byteCount":I
    :cond_5b
    :try_start_5b
    new-instance v2, Ljava/net/SocketException;

    const-string v3, "socket is closed"

    invoke-direct {v2, v3}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    .end local p1    # "buf":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    throw v2

    .line 650
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    .restart local p1    # "buf":[B
    .restart local p2    # "offset":I
    .restart local p3    # "byteCount":I
    :catchall_63
    move-exception v2

    monitor-exit v1
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_63

    .end local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    .end local p1    # "buf":[B
    .end local p2    # "offset":I
    .end local p3    # "byteCount":I
    :try_start_65
    throw v2

    .line 660
    .restart local p0    # "this":Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
    .restart local p1    # "buf":[B
    .restart local p2    # "offset":I
    .restart local p3    # "byteCount":I
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_66

    throw v1
.end method
