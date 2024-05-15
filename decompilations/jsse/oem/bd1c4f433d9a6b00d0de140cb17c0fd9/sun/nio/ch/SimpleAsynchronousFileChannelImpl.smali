.class public Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;
.super Lsun/nio/ch/AsynchronousFileChannelImpl;
.source "SimpleAsynchronousFileChannelImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$DefaultExecutorHolder;
    }
.end annotation


# static fields
.field private static final nd:Lsun/nio/ch/FileDispatcher;


# instance fields
.field private final threads:Lsun/nio/ch/NativeThreadSet;


# direct methods
.method static synthetic -get0()Lsun/nio/ch/FileDispatcher;
    .registers 1

    sget-object v0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    return-object v0
.end method

.method static synthetic -get1(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;)Lsun/nio/ch/NativeThreadSet;
    .registers 2
    .param p0, "-this"    # Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    .prologue
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 51
    new-instance v0, Lsun/nio/ch/FileDispatcherImpl;

    invoke-direct {v0}, Lsun/nio/ch/FileDispatcherImpl;-><init>()V

    sput-object v0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    .line 41
    return-void
.end method

.method constructor <init>(Ljava/io/FileDescriptor;ZZLjava/util/concurrent/ExecutorService;)V
    .registers 7
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "reading"    # Z
    .param p3, "writing"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/nio/ch/AsynchronousFileChannelImpl;-><init>(Ljava/io/FileDescriptor;ZZLjava/util/concurrent/ExecutorService;)V

    .line 54
    new-instance v0, Lsun/nio/ch/NativeThreadSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lsun/nio/ch/NativeThreadSet;-><init>(I)V

    iput-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    .line 63
    return-void
.end method

.method public static open(Ljava/io/FileDescriptor;ZZLsun/nio/ch/ThreadPool;)Ljava/nio/channels/AsynchronousFileChannel;
    .registers 6
    .param p0, "fdo"    # Ljava/io/FileDescriptor;
    .param p1, "reading"    # Z
    .param p2, "writing"    # Z
    .param p3, "pool"    # Lsun/nio/ch/ThreadPool;

    .prologue
    .line 71
    if-nez p3, :cond_a

    .line 72
    sget-object v0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$DefaultExecutorHolder;->defaultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 73
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    :goto_4
    new-instance v1, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;

    invoke-direct {v1, p0, p1, p2, v0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;-><init>(Ljava/io/FileDescriptor;ZZLjava/util/concurrent/ExecutorService;)V

    return-object v1

    .line 72
    .end local v0    # "executor":Ljava/util/concurrent/ExecutorService;
    :cond_a
    invoke-virtual {p3}, Lsun/nio/ch/ThreadPool;->executor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .restart local v0    # "executor":Ljava/util/concurrent/ExecutorService;
    goto :goto_4
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    monitor-enter v1

    .line 80
    :try_start_3
    iget-boolean v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->closed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2f

    if-eqz v0, :cond_9

    monitor-exit v1

    .line 81
    return-void

    .line 82
    :cond_9
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->closed:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_2f

    monitor-exit v1

    .line 88
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->invalidateAllLocks()V

    .line 91
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v0}, Lsun/nio/ch/NativeThreadSet;->signalAndWait()V

    .line 94
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 98
    iget-object v0, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 102
    sget-object v0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-virtual {v0, v1}, Lsun/nio/ch/FileDispatcher;->close(Ljava/io/FileDescriptor;)V

    .line 103
    return-void

    .line 79
    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public force(Z)V
    .registers 8
    .param p1, "metaData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 156
    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v1

    .line 158
    .local v1, "ti":I
    const/4 v0, 0x0

    .line 160
    .local v0, "n":I
    :try_start_9
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->begin()V

    .line 162
    :cond_c
    sget-object v2, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v5, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-virtual {v2, v5, p1}, Lsun/nio/ch/FileDispatcher;->force(Ljava/io/FileDescriptor;Z)I

    move-result v0

    .line 163
    const/4 v2, -0x3

    if-ne v0, v2, :cond_1d

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_2a

    move-result v2

    if-nez v2, :cond_c

    .line 165
    :cond_1d
    if-ltz v0, :cond_28

    :goto_1f
    :try_start_1f
    invoke-virtual {p0, v3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end(Z)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_31

    .line 168
    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 170
    return-void

    :cond_28
    move v3, v4

    .line 165
    goto :goto_1f

    .line 164
    :catchall_2a
    move-exception v2

    .line 165
    if-ltz v0, :cond_38

    :goto_2d
    :try_start_2d
    invoke-virtual {p0, v3}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end(Z)V

    .line 164
    throw v2
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_31

    .line 167
    :catchall_31
    move-exception v2

    .line 168
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v1}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 167
    throw v2

    :cond_38
    move v3, v4

    .line 165
    goto :goto_2d
.end method

.method implLock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .registers 23
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(JJZTA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/nio/channels/FileLock;",
            "-TA;>;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    .local p6, "attachment":Ljava/lang/Object;, "TA;"
    .local p7, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/FileLock;-TA;>;"
    if-eqz p5, :cond_e

    iget-boolean v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->reading:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_e

    .line 180
    new-instance v3, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v3}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v3

    .line 181
    :cond_e
    if-nez p5, :cond_1c

    iget-boolean v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->writing:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1c

    .line 182
    new-instance v3, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v3}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v3

    .line 185
    :cond_1c
    invoke-virtual/range {p0 .. p5}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->addToFileLockTable(JJZ)Lsun/nio/ch/FileLockImpl;

    move-result-object v9

    .line 186
    .local v9, "fli":Lsun/nio/ch/FileLockImpl;
    if-nez v9, :cond_3a

    .line 187
    new-instance v13, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v13}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .line 188
    .local v13, "exc":Ljava/lang/Throwable;
    if-nez p7, :cond_2e

    .line 189
    invoke-static {v13}, Lsun/nio/ch/CompletedFuture;->withFailure(Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v3

    return-object v3

    .line 190
    :cond_2e
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    const/4 v4, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, p6

    invoke-static {v0, v1, v4, v13, v3}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/Executor;)V

    .line 191
    const/4 v3, 0x0

    return-object v3

    .line 194
    .end local v13    # "exc":Ljava/lang/Throwable;
    :cond_3a
    if-nez p7, :cond_5e

    .line 195
    new-instance v11, Lsun/nio/ch/PendingFuture;

    invoke-direct {v11, p0}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;)V

    .line 196
    :goto_41
    new-instance v2, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;

    move-object v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v10, p7

    move-object/from16 v12, p6

    invoke-direct/range {v2 .. v12}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$1;-><init>(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;JJZLsun/nio/ch/FileLockImpl;Ljava/nio/channels/CompletionHandler;Lsun/nio/ch/PendingFuture;Ljava/lang/Object;)V

    .line 229
    .local v2, "task":Ljava/lang/Runnable;
    const/4 v14, 0x0

    .line 231
    .local v14, "executed":Z
    :try_start_52
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_60

    .line 232
    const/4 v14, 0x1

    .line 234
    if-nez v14, :cond_5d

    .line 236
    invoke-virtual {p0, v9}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V

    .line 239
    :cond_5d
    return-object v11

    .line 195
    .end local v2    # "task":Ljava/lang/Runnable;
    .end local v14    # "executed":Z
    :cond_5e
    const/4 v11, 0x0

    .local v11, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/FileLock;TA;>;"
    goto :goto_41

    .line 233
    .end local v11    # "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/nio/channels/FileLock;TA;>;"
    .restart local v2    # "task":Ljava/lang/Runnable;
    .restart local v14    # "executed":Z
    :catchall_60
    move-exception v3

    .line 234
    if-nez v14, :cond_66

    .line 236
    invoke-virtual {p0, v9}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V

    .line 233
    :cond_66
    throw v3
.end method

.method implRead(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .registers 16
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "JTA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Integer;",
            "-TA;>;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p4, "attachment":Ljava/lang/Object;, "TA;"
    .local p5, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 293
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_11

    .line 294
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Negative position"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 295
    :cond_11
    iget-boolean v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->reading:Z

    if-nez v2, :cond_1b

    .line 296
    new-instance v2, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v2}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v2

    .line 297
    :cond_1b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 298
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Read-only buffer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 301
    :cond_2a
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_58

    .line 302
    :cond_36
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_48

    const/4 v0, 0x0

    .line 303
    :goto_3d
    if-nez p5, :cond_4e

    .line 304
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v0}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v2

    return-object v2

    .line 302
    :cond_48
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .local v0, "exc":Ljava/lang/Throwable;
    goto :goto_3d

    .line 305
    .end local v0    # "exc":Ljava/lang/Throwable;
    :cond_4e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p5, p4, v2, v0, v3}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/Executor;)V

    .line 306
    return-object v5

    .line 309
    :cond_58
    if-nez p5, :cond_6f

    .line 310
    new-instance v7, Lsun/nio/ch/PendingFuture;

    invoke-direct {v7, p0}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;)V

    .line 311
    :goto_5f
    new-instance v1, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p5

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$2;-><init>(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;Ljava/nio/ByteBuffer;JLjava/nio/channels/CompletionHandler;Lsun/nio/ch/PendingFuture;Ljava/lang/Object;)V

    .line 339
    .local v1, "task":Ljava/lang/Runnable;
    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 340
    return-object v7

    .line 310
    .end local v1    # "task":Ljava/lang/Runnable;
    :cond_6f
    const/4 v7, 0x0

    .local v7, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Integer;TA;>;"
    goto :goto_5f
.end method

.method protected implRelease(Lsun/nio/ch/FileLockImpl;)V
    .registers 8
    .param p1, "fli"    # Lsun/nio/ch/FileLockImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    sget-object v0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-virtual {p1}, Lsun/nio/ch/FileLockImpl;->position()J

    move-result-wide v2

    invoke-virtual {p1}, Lsun/nio/ch/FileLockImpl;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lsun/nio/ch/FileDispatcher;->release(Ljava/io/FileDescriptor;JJ)V

    .line 285
    return-void
.end method

.method implWrite(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
    .registers 16
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/nio/ByteBuffer;",
            "JTA;",
            "Ljava/nio/channels/CompletionHandler",
            "<",
            "Ljava/lang/Integer;",
            "-TA;>;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p4, "attachment":Ljava/lang/Object;, "TA;"
    .local p5, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 349
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_11

    .line 350
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Negative position"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 351
    :cond_11
    iget-boolean v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->writing:Z

    if-nez v2, :cond_1b

    .line 352
    new-instance v2, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v2}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v2

    .line 355
    :cond_1b
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_49

    .line 356
    :cond_27
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_39

    const/4 v0, 0x0

    .line 357
    :goto_2e
    if-nez p5, :cond_3f

    .line 358
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2, v0}, Lsun/nio/ch/CompletedFuture;->withResult(Ljava/lang/Object;Ljava/lang/Throwable;)Lsun/nio/ch/CompletedFuture;

    move-result-object v2

    return-object v2

    .line 356
    :cond_39
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    .local v0, "exc":Ljava/lang/Throwable;
    goto :goto_2e

    .line 359
    .end local v0    # "exc":Ljava/lang/Throwable;
    :cond_3f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-static {p5, p4, v2, v0, v3}, Lsun/nio/ch/Invoker;->invokeIndirectly(Ljava/nio/channels/CompletionHandler;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;Ljava/util/concurrent/Executor;)V

    .line 360
    return-object v5

    .line 363
    :cond_49
    if-nez p5, :cond_60

    .line 364
    new-instance v7, Lsun/nio/ch/PendingFuture;

    invoke-direct {v7, p0}, Lsun/nio/ch/PendingFuture;-><init>(Ljava/nio/channels/AsynchronousChannel;)V

    .line 365
    :goto_50
    new-instance v1, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p5

    move-object v8, p4

    invoke-direct/range {v1 .. v8}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl$3;-><init>(Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;Ljava/nio/ByteBuffer;JLjava/nio/channels/CompletionHandler;Lsun/nio/ch/PendingFuture;Ljava/lang/Object;)V

    .line 393
    .local v1, "task":Ljava/lang/Runnable;
    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 394
    return-object v7

    .line 364
    .end local v1    # "task":Ljava/lang/Runnable;
    :cond_60
    const/4 v7, 0x0

    .local v7, "result":Lsun/nio/ch/PendingFuture;, "Lsun/nio/ch/PendingFuture<Ljava/lang/Integer;TA;>;"
    goto :goto_50
.end method

.method public size()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 107
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    .line 109
    .local v2, "ti":I
    const-wide/16 v0, 0x0

    .line 111
    .local v0, "n":J
    :try_start_c
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->begin()V

    .line 113
    :cond_f
    sget-object v3, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v6, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v6}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    .line 114
    const-wide/16 v6, -0x3

    cmp-long v3, v0, v6

    if-nez v3, :cond_23

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_32

    move-result v3

    if-nez v3, :cond_f

    .line 117
    :cond_23
    cmp-long v3, v0, v8

    if-ltz v3, :cond_30

    :goto_27
    :try_start_27
    invoke-virtual {p0, v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end(Z)V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_3b

    .line 120
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 115
    return-wide v0

    :cond_30
    move v4, v5

    .line 117
    goto :goto_27

    .line 116
    :catchall_32
    move-exception v3

    .line 117
    cmp-long v6, v0, v8

    if-ltz v6, :cond_42

    :goto_37
    :try_start_37
    invoke-virtual {p0, v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end(Z)V

    .line 116
    throw v3
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_3b

    .line 119
    :catchall_3b
    move-exception v3

    .line 120
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 119
    throw v3

    :cond_42
    move v4, v5

    .line 117
    goto :goto_37
.end method

.method public truncate(J)Ljava/nio/channels/AsynchronousFileChannel;
    .registers 16
    .param p1, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, -0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-wide/16 v8, 0x0

    .line 126
    cmp-long v3, p1, v8

    if-gez v3, :cond_13

    .line 127
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Negative size"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_13
    iget-boolean v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->writing:Z

    if-nez v3, :cond_1d

    .line 129
    new-instance v3, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v3}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v3

    .line 130
    :cond_1d
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v2

    .line 132
    .local v2, "ti":I
    const-wide/16 v0, 0x0

    .line 134
    .local v0, "n":J
    :try_start_25
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->begin()V

    .line 136
    :cond_28
    sget-object v3, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v6, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v6}, Lsun/nio/ch/FileDispatcher;->size(Ljava/io/FileDescriptor;)J

    move-result-wide v0

    .line 137
    cmp-long v3, v0, v10

    if-nez v3, :cond_3a

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v3

    if-nez v3, :cond_28

    .line 140
    :cond_3a
    cmp-long v3, p1, v0

    if-gez v3, :cond_57

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 142
    :cond_44
    sget-object v3, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v6, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-virtual {v3, v6, p1, p2}, Lsun/nio/ch/FileDispatcher;->truncate(Ljava/io/FileDescriptor;J)I

    move-result v3

    int-to-long v0, v3

    .line 143
    cmp-long v3, v0, v10

    if-nez v3, :cond_57

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z
    :try_end_54
    .catchall {:try_start_25 .. :try_end_54} :catchall_66

    move-result v3

    if-nez v3, :cond_44

    .line 147
    :cond_57
    cmp-long v3, v0, v8

    if-lez v3, :cond_64

    :goto_5b
    :try_start_5b
    invoke-virtual {p0, v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end(Z)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_6f

    .line 150
    iget-object v3, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v3, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 145
    return-object p0

    :cond_64
    move v4, v5

    .line 147
    goto :goto_5b

    .line 146
    :catchall_66
    move-exception v3

    .line 147
    cmp-long v6, v0, v8

    if-lez v6, :cond_76

    :goto_6b
    :try_start_6b
    invoke-virtual {p0, v4}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end(Z)V

    .line 146
    throw v3
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_6f

    .line 149
    :catchall_6f
    move-exception v3

    .line 150
    iget-object v4, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v4, v2}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 149
    throw v3

    :cond_76
    move v4, v5

    .line 147
    goto :goto_6b
.end method

.method public tryLock(JJZ)Ljava/nio/channels/FileLock;
    .registers 19
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    if-eqz p5, :cond_e

    iget-boolean v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->reading:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    .line 247
    new-instance v1, Ljava/nio/channels/NonReadableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonReadableChannelException;-><init>()V

    throw v1

    .line 248
    :cond_e
    if-nez p5, :cond_1c

    iget-boolean v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->writing:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1c

    .line 249
    new-instance v1, Ljava/nio/channels/NonWritableChannelException;

    invoke-direct {v1}, Ljava/nio/channels/NonWritableChannelException;-><init>()V

    throw v1

    .line 252
    :cond_1c
    invoke-virtual/range {p0 .. p5}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->addToFileLockTable(JJZ)Lsun/nio/ch/FileLockImpl;

    move-result-object v0

    .line 253
    .local v0, "fli":Lsun/nio/ch/FileLockImpl;
    if-nez v0, :cond_28

    .line 254
    new-instance v1, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v1}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v1

    .line 256
    :cond_28
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1}, Lsun/nio/ch/NativeThreadSet;->add()I

    move-result v11

    .line 257
    .local v11, "ti":I
    const/4 v9, 0x0

    .line 259
    .local v9, "gotLock":Z
    :try_start_2f
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->begin()V

    .line 262
    :cond_32
    sget-object v1, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->nd:Lsun/nio/ch/FileDispatcher;

    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lsun/nio/ch/FileDispatcher;->lock(Ljava/io/FileDescriptor;ZJJZ)I

    move-result v10

    .line 263
    .local v10, "n":I
    const/4 v1, 0x2

    if-ne v10, v1, :cond_49

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z

    move-result v1

    if-nez v1, :cond_32

    .line 264
    :cond_49
    if-nez v10, :cond_60

    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->isOpen()Z
    :try_end_4e
    .catchall {:try_start_2f .. :try_end_4e} :catchall_7b

    move-result v1

    if-eqz v1, :cond_60

    .line 265
    const/4 v9, 0x1

    .line 275
    if-nez v9, :cond_57

    .line 276
    invoke-virtual {p0, v0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V

    .line 277
    :cond_57
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    .line 278
    iget-object v1, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v1, v11}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 266
    return-object v0

    .line 268
    :cond_60
    const/4 v1, -0x1

    if-ne v10, v1, :cond_72

    .line 269
    const/4 v1, 0x0

    .line 275
    if-nez v9, :cond_69

    .line 276
    invoke-virtual {p0, v0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V

    .line 277
    :cond_69
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    .line 278
    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v11}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 269
    return-object v1

    .line 270
    :cond_72
    const/4 v1, 0x2

    if-ne v10, v1, :cond_8a

    .line 271
    :try_start_75
    new-instance v1, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v1}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v1
    :try_end_7b
    .catchall {:try_start_75 .. :try_end_7b} :catchall_7b

    .line 274
    .end local v10    # "n":I
    :catchall_7b
    move-exception v1

    .line 275
    if-nez v9, :cond_81

    .line 276
    invoke-virtual {p0, v0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V

    .line 277
    :cond_81
    invoke-virtual {p0}, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->end()V

    .line 278
    iget-object v2, p0, Lsun/nio/ch/SimpleAsynchronousFileChannelImpl;->threads:Lsun/nio/ch/NativeThreadSet;

    invoke-virtual {v2, v11}, Lsun/nio/ch/NativeThreadSet;->remove(I)V

    .line 274
    throw v1

    .line 273
    .restart local v10    # "n":I
    :cond_8a
    :try_start_8a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_90
    .catchall {:try_start_8a .. :try_end_90} :catchall_7b
.end method
