.class final Ljava/nio/channels/Channels$3;
.super Ljava/io/OutputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/AsynchronousByteChannel;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private b1:[B

.field private bb:Ljava/nio/ByteBuffer;

.field private bs:[B

.field final synthetic val$ch:Ljava/nio/channels/AsynchronousByteChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/AsynchronousByteChannel;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Ljava/nio/channels/Channels$3;->val$ch:Ljava/nio/channels/AsynchronousByteChannel;

    .line 276
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 278
    iput-object v0, p0, Ljava/nio/channels/Channels$3;->bb:Ljava/nio/ByteBuffer;

    .line 279
    iput-object v0, p0, Ljava/nio/channels/Channels$3;->bs:[B

    .line 280
    iput-object v0, p0, Ljava/nio/channels/Channels$3;->b1:[B

    .line 1
    return-void
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
    .line 327
    iget-object v0, p0, Ljava/nio/channels/Channels$3;->val$ch:Ljava/nio/channels/AsynchronousByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/AsynchronousByteChannel;->close()V

    .line 328
    return-void
.end method

.method public declared-synchronized write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 284
    :try_start_1
    iget-object v0, p0, Ljava/nio/channels/Channels$3;->b1:[B

    if-nez v0, :cond_a

    .line 285
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/nio/channels/Channels$3;->b1:[B

    .line 286
    :cond_a
    iget-object v0, p0, Ljava/nio/channels/Channels$3;->b1:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 287
    iget-object v0, p0, Ljava/nio/channels/Channels$3;->b1:[B

    invoke-virtual {p0, v0}, Ljava/nio/channels/Channels$3;->write([B)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    .line 288
    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .registers 10
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 294
    if-ltz p2, :cond_6

    :try_start_3
    array-length v4, p1

    if-le p2, v4, :cond_f

    .line 296
    :cond_6
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v4

    monitor-exit p0

    throw v4

    .line 294
    :cond_f
    if-ltz p3, :cond_6

    .line 295
    add-int v4, p2, p3

    :try_start_13
    array-length v5, p1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_c

    if-gt v4, v5, :cond_6

    add-int v4, p2, p3

    if-ltz v4, :cond_6

    .line 297
    if-nez p3, :cond_1e

    monitor-exit p0

    .line 298
    return-void

    .line 300
    :cond_1e
    :try_start_1e
    iget-object v4, p0, Ljava/nio/channels/Channels$3;->bs:[B

    if-ne v4, p1, :cond_5f

    .line 301
    iget-object v0, p0, Ljava/nio/channels/Channels$3;->bb:Ljava/nio/ByteBuffer;

    .line 303
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :goto_24
    add-int v4, p2, p3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 304
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 305
    iput-object v0, p0, Ljava/nio/channels/Channels$3;->bb:Ljava/nio/ByteBuffer;

    .line 306
    iput-object p1, p0, Ljava/nio/channels/Channels$3;->bs:[B
    :try_end_38
    .catchall {:try_start_1e .. :try_end_38} :catchall_c

    .line 308
    const/4 v3, 0x0

    .line 310
    .local v3, "interrupted":Z
    :goto_39
    :try_start_39
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_54

    move-result v4

    if-lez v4, :cond_67

    .line 312
    :try_start_3f
    iget-object v4, p0, Ljava/nio/channels/Channels$3;->val$ch:Ljava/nio/channels/AsynchronousByteChannel;

    invoke-interface {v4, v0}, Ljava/nio/channels/AsynchronousByteChannel;->write(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_48
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3f .. :try_end_48} :catch_49
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_48} :catch_64
    .catchall {:try_start_3f .. :try_end_48} :catchall_54

    goto :goto_39

    .line 313
    :catch_49
    move-exception v1

    .line 314
    .local v1, "ee":Ljava/util/concurrent/ExecutionException;
    :try_start_4a
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_54
    .catchall {:try_start_4a .. :try_end_54} :catchall_54

    .line 319
    .end local v1    # "ee":Ljava/util/concurrent/ExecutionException;
    :catchall_54
    move-exception v4

    .line 320
    if-eqz v3, :cond_5e

    .line 321
    :try_start_57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 319
    :cond_5e
    throw v4

    .line 302
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v3    # "interrupted":Z
    :cond_5f
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    goto :goto_24

    .line 315
    .restart local v3    # "interrupted":Z
    :catch_64
    move-exception v2

    .line 316
    .local v2, "ie":Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    goto :goto_39

    .line 320
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :cond_67
    if-eqz v3, :cond_70

    .line 321
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V
    :try_end_70
    .catchall {:try_start_57 .. :try_end_70} :catchall_c

    :cond_70
    monitor-exit p0

    .line 323
    return-void
.end method
