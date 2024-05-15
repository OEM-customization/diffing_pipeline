.class abstract Lsun/nio/ch/AsynchronousFileChannelImpl;
.super Ljava/nio/channels/AsynchronousFileChannel;
.source "AsynchronousFileChannelImpl.java"


# instance fields
.field protected final closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field protected volatile closed:Z

.field protected final executor:Ljava/util/concurrent/ExecutorService;

.field protected final fdObj:Ljava/io/FileDescriptor;

.field private volatile fileLockTable:Lsun/nio/ch/FileLockTable;

.field protected final reading:Z

.field protected final writing:Z


# direct methods
.method protected constructor <init>(Ljava/io/FileDescriptor;ZZLjava/util/concurrent/ExecutorService;)V
    .registers 6
    .param p1, "fdObj"    # Ljava/io/FileDescriptor;
    .param p2, "reading"    # Z
    .param p3, "writing"    # Z
    .param p4, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/nio/channels/AsynchronousFileChannel;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 62
    iput-object p1, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    .line 63
    iput-boolean p2, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->reading:Z

    .line 64
    iput-boolean p3, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->writing:Z

    .line 65
    iput-object p4, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    .line 66
    return-void
.end method


# virtual methods
.method protected final addToFileLockTable(JJZ)Lsun/nio/ch/FileLockImpl;
    .registers 15
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z

    .prologue
    .line 166
    :try_start_0
    iget-object v1, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 167
    iget-boolean v1, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closed:Z
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_2e

    if-eqz v1, :cond_12

    .line 168
    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->end()V

    .line 168
    return-object v1

    .line 171
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->ensureFileLockTableInitialized()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_27
    .catchall {:try_start_12 .. :try_end_15} :catchall_2e

    .line 176
    :try_start_15
    new-instance v0, Lsun/nio/ch/FileLockImpl;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lsun/nio/ch/FileLockImpl;-><init>(Ljava/nio/channels/AsynchronousFileChannel;JJZ)V

    .line 178
    .local v0, "fli":Lsun/nio/ch/FileLockImpl;
    iget-object v1, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {v1, v0}, Lsun/nio/ch/FileLockTable;->add(Ljava/nio/channels/FileLock;)V
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_2e

    .line 180
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->end()V

    .line 182
    return-object v0

    .line 172
    .end local v0    # "fli":Lsun/nio/ch/FileLockImpl;
    :catch_27
    move-exception v7

    .line 174
    .local v7, "x":Ljava/io/IOException;
    :try_start_28
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2e

    .line 179
    .end local v7    # "x":Ljava/io/IOException;
    :catchall_2e
    move-exception v1

    .line 180
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->end()V

    .line 179
    throw v1
.end method

.method protected final begin()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 84
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closed:Z

    if-eqz v0, :cond_13

    .line 85
    new-instance v0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {v0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw v0

    .line 86
    :cond_13
    return-void
.end method

.method protected final end()V
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 93
    return-void
.end method

.method protected final end(Z)V
    .registers 3
    .param p1, "completed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->end()V

    .line 100
    if-nez p1, :cond_13

    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    .line 101
    new-instance v0, Ljava/nio/channels/AsynchronousCloseException;

    invoke-direct {v0}, Ljava/nio/channels/AsynchronousCloseException;-><init>()V

    throw v0

    .line 102
    :cond_13
    return-void
.end method

.method final ensureFileLockTableInitialized()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-nez v0, :cond_12

    .line 137
    monitor-enter p0

    .line 138
    :try_start_5
    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-nez v0, :cond_11

    .line 139
    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fdObj:Ljava/io/FileDescriptor;

    invoke-static {p0, v0}, Lsun/nio/ch/FileLockTable;->newSharedFileLockTable(Ljava/nio/channels/Channel;Ljava/io/FileDescriptor;)Lsun/nio/ch/FileLockTable;

    move-result-object v0

    iput-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    .line 143
    :cond_12
    return-void

    .line 137
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final executor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method abstract implLock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
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
.end method

.method abstract implRead(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
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
.end method

.method protected abstract implRelease(Lsun/nio/ch/FileLockImpl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract implWrite(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;
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
.end method

.method final invalidateAllLocks()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v4, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    if-eqz v4, :cond_30

    .line 147
    iget-object v4, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {v4}, Lsun/nio/ch/FileLockTable;->removeAll()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "fl$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/FileLock;

    .line 148
    .local v1, "fl":Ljava/nio/channels/FileLock;
    monitor-enter v1

    .line 149
    :try_start_1b
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 150
    move-object v0, v1

    check-cast v0, Lsun/nio/ch/FileLockImpl;

    move-object v3, v0

    .line 151
    .local v3, "fli":Lsun/nio/ch/FileLockImpl;
    invoke-virtual {p0, v3}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implRelease(Lsun/nio/ch/FileLockImpl;)V

    .line 152
    invoke-virtual {v3}, Lsun/nio/ch/FileLockImpl;->invalidate()V
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_2d

    .end local v3    # "fli":Lsun/nio/ch/FileLockImpl;
    :cond_2b
    monitor-exit v1

    goto :goto_e

    .line 148
    :catchall_2d
    move-exception v4

    monitor-exit v1

    throw v4

    .line 157
    .end local v1    # "fl":Ljava/nio/channels/FileLock;
    .end local v2    # "fl$iterator":Ljava/util/Iterator;
    :cond_30
    return-void
.end method

.method public final isOpen()Z
    .registers 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->closed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final lock(JJZ)Ljava/util/concurrent/Future;
    .registers 15
    .param p1, "position"    # J
    .param p3, "size"    # J
    .param p5, "shared"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v8, v7

    .line 118
    invoke-virtual/range {v1 .. v8}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implLock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final lock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 11
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
            "-TA;>;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p6, "attachment":Ljava/lang/Object;, "TA;"
    .local p7, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/nio/channels/FileLock;-TA;>;"
    if-nez p7, :cond_b

    .line 129
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_b
    invoke-virtual/range {p0 .. p7}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implLock(JJZLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    .line 131
    return-void
.end method

.method public final read(Ljava/nio/ByteBuffer;J)Ljava/util/concurrent/Future;
    .registers 10
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "J)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v4

    .line 218
    invoke-virtual/range {v0 .. v5}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implRead(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final read(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 8
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
            "-TA;>;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p4, "attachment":Ljava/lang/Object;, "TA;"
    .local p5, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    if-nez p5, :cond_b

    .line 228
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_b
    invoke-virtual/range {p0 .. p5}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implRead(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    .line 230
    return-void
.end method

.method final release(Lsun/nio/ch/FileLockImpl;)V
    .registers 3
    .param p1, "fli"    # Lsun/nio/ch/FileLockImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    :try_start_0
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->begin()V

    .line 201
    invoke-virtual {p0, p1}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implRelease(Lsun/nio/ch/FileLockImpl;)V

    .line 202
    invoke-virtual {p0, p1}, Lsun/nio/ch/AsynchronousFileChannelImpl;->removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    .line 204
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->end()V

    .line 206
    return-void

    .line 203
    :catchall_d
    move-exception v0

    .line 204
    invoke-virtual {p0}, Lsun/nio/ch/AsynchronousFileChannelImpl;->end()V

    .line 203
    throw v0
.end method

.method protected final removeFromFileLockTable(Lsun/nio/ch/FileLockImpl;)V
    .registers 3
    .param p1, "fli"    # Lsun/nio/ch/FileLockImpl;

    .prologue
    .line 186
    iget-object v0, p0, Lsun/nio/ch/AsynchronousFileChannelImpl;->fileLockTable:Lsun/nio/ch/FileLockTable;

    invoke-virtual {v0, p1}, Lsun/nio/ch/FileLockTable;->remove(Ljava/nio/channels/FileLock;)V

    .line 187
    return-void
.end method

.method public final write(Ljava/nio/ByteBuffer;J)Ljava/util/concurrent/Future;
    .registers 10
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "position"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "J)",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, v4

    .line 240
    invoke-virtual/range {v0 .. v5}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implWrite(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final write(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)V
    .registers 8
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
            "-TA;>;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p4, "attachment":Ljava/lang/Object;, "TA;"
    .local p5, "handler":Ljava/nio/channels/CompletionHandler;, "Ljava/nio/channels/CompletionHandler<Ljava/lang/Integer;-TA;>;"
    if-nez p5, :cond_b

    .line 250
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "\'handler\' is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_b
    invoke-virtual/range {p0 .. p5}, Lsun/nio/ch/AsynchronousFileChannelImpl;->implWrite(Ljava/nio/ByteBuffer;JLjava/lang/Object;Ljava/nio/channels/CompletionHandler;)Ljava/util/concurrent/Future;

    .line 252
    return-void
.end method
