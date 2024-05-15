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
.field final synthetic this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 578
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    .line 581
    return-void
.end method


# virtual methods
.method awaitPendingOps()V
    .registers 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    monitor-exit v0

    .line 639
    return-void
.end method

.method public write(I)V
    .registers 5
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 590
    .local v0, "buffer":[B
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 591
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->write([B)V

    .line 592
    return-void
.end method

.method public write([BII)V
    .registers 12
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 600
    invoke-static {}, Lcom/android/org/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 601
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-virtual {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 602
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/org/conscrypt/ArrayUtils;->checkOffsetAndCount(III)V

    .line 603
    if-nez p3, :cond_11

    .line 604
    return-void

    .line 607
    :cond_11
    iget-object v6, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 608
    :try_start_14
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-get2(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_2f

    .line 609
    :try_start_1b
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-get1(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v0

    if-ne v0, v7, :cond_32

    .line 610
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v2, "socket is closed"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_2c

    .line 608
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1

    throw v0
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_2f

    .line 607
    :catchall_2f
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_32
    :try_start_32
    monitor-exit v1

    .line 618
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-get0(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Lcom/android/org/conscrypt/SslWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    iget-object v1, v1, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lcom/android/org/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 619
    iget-object v2, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v2}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-get3(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 618
    invoke-virtual/range {v0 .. v5}, Lcom/android/org/conscrypt/SslWrapper;->write(Ljava/io/FileDescriptor;[BIII)V

    .line 621
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-get2(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_54
    .catchall {:try_start_32 .. :try_end_54} :catchall_2f

    .line 622
    :try_start_54
    iget-object v0, p0, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;->-get1(Lcom/android/org/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v0

    if-ne v0, v7, :cond_68

    .line 623
    new-instance v0, Ljava/net/SocketException;

    const-string/jumbo v2, "socket is closed"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_65
    .catchall {:try_start_54 .. :try_end_65} :catchall_65

    .line 621
    :catchall_65
    move-exception v0

    :try_start_66
    monitor-exit v1

    throw v0

    :cond_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_2f

    monitor-exit v6

    .line 627
    return-void
.end method
