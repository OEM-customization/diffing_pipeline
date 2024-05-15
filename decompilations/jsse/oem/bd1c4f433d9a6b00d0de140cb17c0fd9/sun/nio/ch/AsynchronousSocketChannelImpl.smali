.class abstract Lsun/nio/ch/AsynchronousSocketChannelImpl;
.super Ljava/nio/channels/AsynchronousSocketChannel;
.source "AsynchronousSocketChannelImpl.java"

# interfaces
.implements Lsun/nio/ch/Cancellable;
.implements Lsun/nio/ch/Groupable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/AsynchronousSocketChannelImpl$DefaultOptionsHolder;
    }
.end annotation


# static fields
.field static final ST_CONNECTED:I = 0x2

.field static final ST_PENDING:I = 0x1

.field static final ST_UNCONNECTED:I = 0x0

.field static final ST_UNINITIALIZED:I = -0x1


# instance fields
.field private final closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected final fd:Ljava/io/FileDescriptor;

.field private isReuseAddress:Z

.field protected volatile localAddress:Ljava/net/InetSocketAddress;

.field private volatile open:Z

.field private readKilled:Z

.field private final readLock:Ljava/lang/Object;

.field private readShutdown:Z

.field private reading:Z

.field protected volatile remoteAddress:Ljava/net/InetSocketAddress;

.field protected volatile state:I

.field protected final stateLock:Ljava/lang/Object;

.field private writeKilled:Z

.field private final writeLock:Ljava/lang/Object;

.field private writeShutdown:Z

.field private writing:Z


# direct methods
.method constructor <init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;)V
    .registers 5
    .param p1, "group"    # Lsun/nio/ch/AsynchronousChannelGroupImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 89
    invoke-virtual {p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/AsynchronousSocketChannel;-><init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;)V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 57
    iput-object v2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 58
    iput-object v2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->state:I

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 81
    iput-boolean v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->open:Z

    .line 90
    invoke-static {v1}, Lsun/nio/ch/Net;->socket(Z)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->state:I

    .line 92
    return-void
.end method

.method constructor <init>(Lsun/nio/ch/AsynchronousChannelGroupImpl;Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)V
    .registers 6
    .param p1, "group"    # Lsun/nio/ch/AsynchronousChannelGroupImpl;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "remote"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-virtual {p1}, Lsun/nio/ch/AsynchronousChannelGroupImpl;->provider()Ljava/nio/channels/spi/AsynchronousChannelProvider;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/nio/channels/AsynchronousSocketChannel;-><init>(Ljava/nio/channels/spi/AsynchronousChannelProvider;)V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->stateLock:Ljava/lang/Object;

    .line 57
    iput-object v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 58
    iput-object v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->state:I

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeLock:Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->open:Z

    .line 101
    iput-object p2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->state:I

    .line 103
    invoke-static {p2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    .line 104
    iput-object p3, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    .line 105
    return-void
.end method

.method private read(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .registers 19
    .param p1, "isScatteringRead"    # Z
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .param p3, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p4, "timeout"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Number;",
            "A:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/nio/ByteBuffer;",
            "[",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p7, "att":Ljava/lang/Object;, "TA;"
    .local p8, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    const/4 v8, 0x0

    .line 232
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->isOpen()Z

    move-result v6

    if-nez v6, :cond_1b

    .line 233
    new-instance v2, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v2}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 234
    .local v2, "e":Ljava/lang/Throwable;
    if-nez p8, :cond_13

    .line 235
    invoke-static {v2}, Lsun/nio/ch/CompletedFuture;->withFailure(Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v6

    return-object v6

    .line 236
    :cond_13
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-static {p0, v0, v1, v8, v2}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 237
    return-object v8

    .line 240
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1b
    iget-object v6, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    if-nez v6, :cond_25

    .line 241
    new-instance v6, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v6}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v6

    .line 243
    :cond_25
    if-nez p1, :cond_3f

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    .line 244
    :goto_2b
    const/4 v5, 0x0

    .line 247
    .local v5, "shutdown":Z
    iget-object v7, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v7

    .line 248
    :try_start_2f
    iget-boolean v6, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readKilled:Z

    if-eqz v6, :cond_41

    .line 249
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Reading not allowed due to timeout or cancellation"

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_3c

    .line 247
    :catchall_3c
    move-exception v6

    monitor-exit v7

    throw v6

    .line 243
    .end local v5    # "shutdown":Z
    :cond_3f
    const/4 v3, 0x1

    .local v3, "hasSpaceToRead":Z
    goto :goto_2b

    .line 250
    .end local v3    # "hasSpaceToRead":Z
    .restart local v5    # "shutdown":Z
    :cond_41
    :try_start_41
    iget-boolean v6, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->reading:Z

    if-eqz v6, :cond_4b

    .line 251
    new-instance v6, Ljava/nio/channels/ReadPendingException;

    invoke-direct {v6}, Ljava/nio/channels/ReadPendingException;-><init>()V

    throw v6

    .line 252
    :cond_4b
    iget-boolean v6, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readShutdown:Z
    :try_end_4d
    .catchall {:try_start_41 .. :try_end_4d} :catchall_3c

    if-eqz v6, :cond_68

    .line 253
    const/4 v5, 0x1

    :cond_50
    :goto_50
    monitor-exit v7

    .line 263
    if-nez v5, :cond_57

    xor-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_87

    .line 265
    :cond_57
    if-eqz p1, :cond_75

    .line 266
    if-eqz v5, :cond_6e

    const-wide/16 v6, -0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 270
    .local v4, "result":Ljava/lang/Number;
    :goto_61
    if-nez p8, :cond_7f

    .line 271
    invoke-static {v4}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;)Lsun/nio/ch/CompletedFuture;

    move-result-object v6

    return-object v6

    .line 255
    .end local v4    # "result":Ljava/lang/Number;
    :cond_68
    if-eqz v3, :cond_50

    .line 256
    const/4 v6, 0x1

    :try_start_6b
    iput-boolean v6, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->reading:Z
    :try_end_6d
    .catchall {:try_start_6b .. :try_end_6d} :catchall_3c

    goto :goto_50

    .line 266
    :cond_6e
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .restart local v4    # "result":Ljava/lang/Number;
    goto :goto_61

    .line 268
    .end local v4    # "result":Ljava/lang/Number;
    :cond_75
    if-eqz v5, :cond_7d

    const/4 v6, -0x1

    :goto_78
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .restart local v4    # "result":Ljava/lang/Number;
    goto :goto_61

    .end local v4    # "result":Ljava/lang/Number;
    :cond_7d
    const/4 v6, 0x0

    goto :goto_78

    .line 272
    .restart local v4    # "result":Ljava/lang/Number;
    :cond_7f
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-static {p0, v0, v1, v4, v8}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 273
    return-object v8

    .line 276
    .end local v4    # "result":Ljava/lang/Number;
    :cond_87
    invoke-virtual/range {p0 .. p8}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->implRead(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v6

    return-object v6
.end method

.method private write(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .registers 19
    .param p1, "isGatheringWrite"    # Z
    .param p2, "src"    # Ljava/nio/ByteBuffer;
    .param p3, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p4, "timeout"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Number;",
            "A:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/nio/ByteBuffer;",
            "[",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .local p7, "att":Ljava/lang/Object;, "TA;"
    .local p8, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<TV;-TA;>;"
    const/4 v8, 0x0

    .line 341
    if-nez p1, :cond_18

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    .line 343
    :goto_7
    const/4 v2, 0x0

    .line 344
    .local v2, "closed":Z
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->isOpen()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 345
    iget-object v6, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    if-nez v6, :cond_1a

    .line 346
    new-instance v6, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v6}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v6

    .line 341
    .end local v2    # "closed":Z
    :cond_18
    const/4 v4, 0x1

    .local v4, "hasDataToWrite":Z
    goto :goto_7

    .line 348
    .end local v4    # "hasDataToWrite":Z
    .restart local v2    # "closed":Z
    :cond_1a
    iget-object v7, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v7

    .line 349
    :try_start_1d
    iget-boolean v6, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeKilled:Z

    if-eqz v6, :cond_2d

    .line 350
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Writing not allowed due to timeout or cancellation"

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_2a

    .line 348
    :catchall_2a
    move-exception v6

    monitor-exit v7

    throw v6

    .line 351
    :cond_2d
    :try_start_2d
    iget-boolean v6, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writing:Z

    if-eqz v6, :cond_37

    .line 352
    new-instance v6, Ljava/nio/channels/WritePendingException;

    invoke-direct {v6}, Ljava/nio/channels/WritePendingException;-><init>()V

    throw v6

    .line 353
    :cond_37
    iget-boolean v6, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeShutdown:Z
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_2a

    if-eqz v6, :cond_4b

    .line 354
    const/4 v2, 0x1

    :cond_3c
    :goto_3c
    monitor-exit v7

    .line 365
    :goto_3d
    if-eqz v2, :cond_5b

    .line 366
    new-instance v3, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v3}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 367
    .local v3, "e":Ljava/lang/Throwable;
    if-nez p8, :cond_53

    .line 368
    invoke-static {v3}, Lsun/nio/ch/CompletedFuture;->withFailure(Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v6

    return-object v6

    .line 356
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_4b
    if-eqz v4, :cond_3c

    .line 357
    const/4 v6, 0x1

    :try_start_4e
    iput-boolean v6, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writing:Z
    :try_end_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_2a

    goto :goto_3c

    .line 361
    :cond_51
    const/4 v2, 0x1

    goto :goto_3d

    .line 369
    .restart local v3    # "e":Ljava/lang/Throwable;
    :cond_53
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-static {p0, v0, v1, v8, v3}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 370
    return-object v8

    .line 374
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_5b
    if-nez v4, :cond_7a

    .line 375
    if-eqz p1, :cond_6c

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 376
    .local v5, "result":Ljava/lang/Number;
    :goto_65
    if-nez p8, :cond_72

    .line 377
    invoke-static {v5}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;)Lsun/nio/ch/CompletedFuture;

    move-result-object v6

    return-object v6

    .line 375
    .end local v5    # "result":Ljava/lang/Number;
    :cond_6c
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .restart local v5    # "result":Ljava/lang/Number;
    goto :goto_65

    .line 378
    :cond_72
    move-object/from16 v0, p8

    move-object/from16 v1, p7

    invoke-static {p0, v0, v1, v5, v8}, Lsun/nio/ch/Invoker;->invoke(Ljava/nio/channels/AsynchronousChannel;Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 379
    return-object v8

    .line 382
    .end local v5    # "result":Ljava/lang/Number;
    :cond_7a
    invoke-virtual/range {p0 .. p8}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->implWrite(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method final begin()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 117
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_15

    .line 118
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 119
    :cond_15
    return-void
.end method

.method public final bind(Ljava/net/SocketAddress;)Ljava/nio/channels/AsynchronousSocketChannel;
    .registers 8
    .param p1, "local"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->begin()V

    .line 425
    iget-object v3, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_14

    .line 426
    :try_start_6
    iget v2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->state:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_19

    .line 427
    new-instance v2, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v2}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v2
    :try_end_11
    .catchall {:try_start_6 .. :try_end_11} :catchall_11

    .line 425
    :catchall_11
    move-exception v2

    :try_start_12
    monitor-exit v3

    throw v2
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_14

    .line 440
    :catchall_14
    move-exception v2

    .line 441
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 440
    throw v2

    .line 428
    :cond_19
    :try_start_19
    iget-object v2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_23

    .line 429
    new-instance v2, Ljava/nio/channels/AlreadyBoundException;

    invoke-direct {v2}, Ljava/nio/channels/AlreadyBoundException;-><init>()V

    throw v2

    .line 430
    :cond_23
    if-nez p1, :cond_5f

    .line 431
    new-instance v0, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/net/InetSocketAddress;-><init>(I)V

    .line 432
    .local v0, "isa":Ljava/net/InetSocketAddress;
    :goto_2b
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    .line 433
    .local v1, "sm":Ljava/lang/SecurityManager;
    if-eqz v1, :cond_38

    .line 434
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkListen(I)V

    .line 436
    :cond_38
    iget-object v2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v2, v4, v5}, Lsun/net/NetHooks;->beforeTcpBind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 437
    iget-object v2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v2, v4, v5}, Lsun/nio/ch/Net;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 438
    iget-object v2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    invoke-static {v2}, Lsun/nio/ch/Net;->localAddress(Ljava/io/FileDescriptor;)Ljava/net/InetSocketAddress;

    move-result-object v2

    iput-object v2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;
    :try_end_5a
    .catchall {:try_start_19 .. :try_end_5a} :catchall_11

    :try_start_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_14

    .line 441
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 443
    return-object p0

    .line 431
    .end local v0    # "isa":Ljava/net/InetSocketAddress;
    .end local v1    # "sm":Ljava/lang/SecurityManager;
    :cond_5f
    :try_start_5f
    invoke-static {p1}, Lsun/nio/ch/Net;->checkAddress(Ljava/net/SocketAddress;)Ljava/net/InetSocketAddress;
    :try_end_62
    .catchall {:try_start_5f .. :try_end_62} :catchall_11

    move-result-object v0

    .restart local v0    # "isa":Ljava/net/InetSocketAddress;
    goto :goto_2b
.end method

.method public bridge synthetic bind(Ljava/net/SocketAddress;)Ljava/nio/channels/NetworkChannel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-virtual {p0, p1}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->bind(Ljava/net/SocketAddress;)Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 138
    :try_start_9
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->open:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_27

    if-nez v0, :cond_17

    .line 142
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 139
    return-void

    .line 140
    :cond_17
    const/4 v0, 0x0

    :try_start_18
    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->open:Z
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_27

    .line 142
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 144
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->implClose()V

    .line 145
    return-void

    .line 141
    :catchall_27
    move-exception v0

    .line 142
    iget-object v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 141
    throw v0
.end method

.method public final connect(Ljava/net/SocketAddress;)Ljava/util/concurrent/Future;
    .registers 3
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/SocketAddress;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-virtual {p0, p1, v0, v0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->implConnect(Ljava/net/SocketAddress;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final connect(Ljava/net/SocketAddress;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 6
    .param p1, "remote"    # Ljava/net/SocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketAddress;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Void;",
            "-TA;>;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p2, "attachment":Ljava/lang/Object;, "TA;"
    .local p3, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Void;-TA;>;"
    if-nez p3, :cond_b

    .line 208
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_b
    invoke-virtual {p0, p1, p2, p3}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->implConnect(Ljava/net/SocketAddress;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    .line 210
    return-void
.end method

.method final enableReading()V
    .registers 2

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->enableReading(Z)V

    .line 157
    return-void
.end method

.method final enableReading(Z)V
    .registers 4
    .param p1, "killed"    # Z

    .prologue
    .line 148
    iget-object v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v1

    .line 149
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->reading:Z

    .line 150
    if-eqz p1, :cond_b

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readKilled:Z
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit v1

    .line 153
    return-void

    .line 148
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final enableWriting()V
    .registers 2

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->enableWriting(Z)V

    .line 169
    return-void
.end method

.method final enableWriting(Z)V
    .registers 4
    .param p1, "killed"    # Z

    .prologue
    .line 160
    iget-object v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writing:Z

    .line 162
    if-eqz p1, :cond_b

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeKilled:Z
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    :cond_b
    monitor-exit v1

    .line 165
    return-void

    .line 160
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final end()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 126
    return-void
.end method

.method public final getLocalAddress()Ljava/net/SocketAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 449
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 450
    :cond_c
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v0}, Lsun/nio/ch/Net;->getRevealedLocalAddress(Ljava/net/InetSocketAddress;)Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public final getOption(Ljava/net/SocketOption;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 483
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    if-nez p1, :cond_8

    .line 484
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 485
    :cond_8
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 486
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 489
    :cond_33
    :try_start_33
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->begin()V

    .line 490
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_4a

    .line 491
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v0

    .line 490
    if-eqz v0, :cond_4a

    .line 494
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->isReuseAddress:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_45
    .catchall {:try_start_33 .. :try_end_45} :catchall_56

    move-result-object v0

    .line 498
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 494
    return-object v0

    .line 496
    :cond_4a
    :try_start_4a
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v1, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, v1, p1}, Lsun/nio/ch/Net;->getSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;)Ljava/lang/Object;
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_56

    move-result-object v0

    .line 498
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 496
    return-object v0

    .line 497
    :catchall_56
    move-exception v0

    .line 498
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 497
    throw v0
.end method

.method public final getRemoteAddress()Ljava/net/SocketAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 526
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->isOpen()Z

    move-result v0

    if-nez v0, :cond_c

    .line 527
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 528
    :cond_c
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method abstract implClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract implConnect(Ljava/net/SocketAddress;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketAddress;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Void;",
            "-TA;>;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method abstract implRead(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Number;",
            "A:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/nio/ByteBuffer;",
            "[",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation
.end method

.method abstract implWrite(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Number;",
            "A:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/nio/ByteBuffer;",
            "[",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<TV;-TA;>;)",
            "Ljava/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation
.end method

.method public final isOpen()Z
    .registers 2

    .prologue
    .line 109
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->open:Z

    return v0
.end method

.method final killConnect()V
    .registers 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->killReading()V

    .line 187
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->killWriting()V

    .line 188
    return-void
.end method

.method final killReading()V
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readKilled:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 175
    return-void

    .line 172
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method final killWriting()V
    .registers 3

    .prologue
    .line 178
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeKilled:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_8

    monitor-exit v0

    .line 181
    return-void

    .line 178
    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final read(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;
    .registers 11
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 281
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Read-only buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_10
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v7, v3

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->read(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final read(Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 17
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Integer;",
            "-TA;>;)V"
        }
    .end annotation

    .prologue
    .local p5, "attachment":Ljava/lang/Object;, "TA;"
    .local p6, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    const/4 v3, 0x0

    .line 293
    if-nez p6, :cond_c

    .line 294
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 296
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Read-only buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_1b
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->read(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    .line 298
    return-void
.end method

.method public final read([Ljava/nio/ByteBuffer;IIJLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 19
    .param p1, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "timeout"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/nio/ByteBuffer;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Long;",
            "-TA;>;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p7, "attachment":Ljava/lang/Object;, "TA;"
    .local p8, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Long;-TA;>;"
    if-nez p8, :cond_b

    .line 310
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_b
    if-ltz p2, :cond_f

    if-gez p3, :cond_15

    .line 312
    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 311
    :cond_15
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_f

    .line 313
    invoke-static {p1, p2, p3}, Lsun/nio/ch/Util;->subsequence([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 314
    .local v3, "bufs":[Ljava/nio/ByteBuffer;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1e
    array-length v0, v3

    if-ge v9, v0, :cond_35

    .line 315
    aget-object v0, v3, v9

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 316
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Read-only buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_32
    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    .line 318
    :cond_35
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->read(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    .line 319
    return-void
.end method

.method public final setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/AsynchronousSocketChannel;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/SocketOption",
            "<TT;>;TT;)",
            "Ljava/nio/channels/AsynchronousSocketChannel;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    .local p1, "name":Ljava/net/SocketOption;, "Ljava/net/SocketOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_8

    .line 458
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 459
    :cond_8
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->supportedOptions()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    .line 460
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_33
    :try_start_33
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->begin()V

    .line 464
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeShutdown:Z

    if-eqz v0, :cond_48

    .line 465
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Connection has been shutdown for writing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_43

    .line 475
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    :catchall_43
    move-exception v0

    .line 476
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 475
    throw v0

    .line 466
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_48
    :try_start_48
    sget-object v0, Ljava/net/StandardSocketOptions;->SO_REUSEADDR:Ljava/net/SocketOption;

    if-ne p1, v0, :cond_5e

    .line 467
    invoke-static {}, Lsun/nio/ch/Net;->useExclusiveBind()Z

    move-result v0

    .line 466
    if-eqz v0, :cond_5e

    .line 470
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->isReuseAddress:Z
    :try_end_5a
    .catchall {:try_start_48 .. :try_end_5a} :catchall_43

    .line 476
    :goto_5a
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 474
    return-object p0

    .line 472
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    sget-object v1, Lsun/nio/ch/Net;->UNSPEC:Ljava/net/ProtocolFamily;

    invoke-static {v0, v1, p1, p2}, Lsun/nio/ch/Net;->setSocketOption(Ljava/io/FileDescriptor;Ljava/net/ProtocolFamily;Ljava/net/SocketOption;Ljava/lang/Object;)V
    :try_end_65
    .catchall {:try_start_5e .. :try_end_65} :catchall_43

    goto :goto_5a
.end method

.method public bridge synthetic setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/NetworkChannel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-virtual {p0, p1, p2}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->setOption(Ljava/net/SocketOption;Ljava/lang/Object;)Ljava/nio/channels/AsynchronousSocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public final shutdownInput()Ljava/nio/channels/AsynchronousSocketChannel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 534
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->begin()V

    .line 535
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_12

    .line 536
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_d

    .line 543
    :catchall_d
    move-exception v0

    .line 544
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 543
    throw v0

    .line 537
    :cond_12
    :try_start_12
    iget-object v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_d

    .line 538
    :try_start_15
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readShutdown:Z

    if-nez v0, :cond_22

    .line 539
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lsun/nio/ch/Net;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 540
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readShutdown:Z
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_27

    :cond_22
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_d

    .line 544
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 546
    return-object p0

    .line 537
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v1

    throw v0
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_d
.end method

.method public final shutdownOutput()Ljava/nio/channels/AsynchronousSocketChannel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->begin()V

    .line 553
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    if-nez v0, :cond_12

    .line 554
    new-instance v0, Ljava/nio/channels/NotYetConnectedException;

    invoke-direct {v0}, Ljava/nio/channels/NotYetConnectedException;-><init>()V

    throw v0
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_d

    .line 561
    :catchall_d
    move-exception v0

    .line 562
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 561
    throw v0

    .line 555
    :cond_12
    :try_start_12
    iget-object v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_d

    .line 556
    :try_start_15
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeShutdown:Z

    if-nez v0, :cond_22

    .line 557
    iget-object v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->fd:Ljava/io/FileDescriptor;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lsun/nio/ch/Net;->shutdown(Ljava/io/FileDescriptor;I)V

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeShutdown:Z
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_27

    :cond_22
    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_d

    .line 562
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->end()V

    .line 564
    return-object p0

    .line 555
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit v1

    throw v0
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_d
.end method

.method public final supportedOptions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/net/SocketOption",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 521
    sget-object v0, Lsun/nio/ch/AsynchronousSocketChannelImpl$DefaultOptionsHolder;->defaultOptions:Ljava/util/Set;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 572
    iget-object v2, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->stateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 573
    :try_start_18
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 574
    const-string/jumbo v1, "closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_5b

    :cond_24
    :goto_24
    monitor-exit v2

    .line 602
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 603
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 576
    :cond_2f
    :try_start_2f
    iget v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->state:I

    packed-switch v1, :pswitch_data_88

    .line 591
    :cond_34
    :goto_34
    iget-object v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_47

    .line 592
    const-string/jumbo v1, " local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    iget-object v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->localAddress:Ljava/net/InetSocketAddress;

    invoke-static {v1}, Lsun/nio/ch/Net;->getRevealedLocalAddressAsString(Ljava/net/InetSocketAddress;)Ljava/lang/String;

    move-result-object v1

    .line 593
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    :cond_47
    iget-object v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    if-eqz v1, :cond_24

    .line 597
    const-string/jumbo v1, " remote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    iget-object v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->remoteAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5a
    .catchall {:try_start_2f .. :try_end_5a} :catchall_5b

    goto :goto_24

    .line 572
    :catchall_5b
    move-exception v1

    monitor-exit v2

    throw v1

    .line 578
    :pswitch_5e
    :try_start_5e
    const-string/jumbo v1, "unconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 581
    :pswitch_65
    const-string/jumbo v1, "connection-pending"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 584
    :pswitch_6c
    const-string/jumbo v1, "connected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-boolean v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->readShutdown:Z

    if-eqz v1, :cond_7c

    .line 586
    const-string/jumbo v1, " ishut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    :cond_7c
    iget-boolean v1, p0, Lsun/nio/ch/AsynchronousSocketChannelImpl;->writeShutdown:Z

    if-eqz v1, :cond_34

    .line 588
    const-string/jumbo v1, " oshut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_86
    .catchall {:try_start_5e .. :try_end_86} :catchall_5b

    goto :goto_34

    .line 576
    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_65
        :pswitch_6c
    .end packed-switch
.end method

.method public final write(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;
    .registers 11
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 387
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v7, v3

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->write(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 17
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Integer;",
            "-TA;>;)V"
        }
    .end annotation

    .prologue
    .local p5, "attachment":Ljava/lang/Object;, "TA;"
    .local p6, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    const/4 v3, 0x0

    .line 397
    if-nez p6, :cond_c

    .line 398
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_c
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->write(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    .line 400
    return-void
.end method

.method public final write([Ljava/nio/ByteBuffer;IIJLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 19
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .param p4, "timeout"    # J
    .param p6, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/nio/ByteBuffer;",
            "IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "TA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Long;",
            "-TA;>;)V"
        }
    .end annotation

    .prologue
    .line 411
    .local p7, "attachment":Ljava/lang/Object;, "TA;"
    .local p8, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Long;-TA;>;"
    if-nez p8, :cond_b

    .line 412
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_b
    if-ltz p2, :cond_f

    if-gez p3, :cond_15

    .line 414
    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 413
    :cond_15
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_f

    .line 415
    invoke-static {p1, p2, p3}, Lsun/nio/ch/Util;->subsequence([Ljava/nio/ByteBuffer;II)[Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 416
    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lsun/nio/ch/AsynchronousSocketChannelImpl;->write(ZLjava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;JLjava/util/concurrent/TimeUnit;Ljava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    .line 417
    return-void
.end method
