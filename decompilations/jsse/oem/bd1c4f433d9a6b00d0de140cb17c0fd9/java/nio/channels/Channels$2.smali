.class final Ljava/nio/channels/Channels$2;
.super Ljava/io/InputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/AsynchronousByteChannel;)Ljava/io/InputStream;
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
    iput-object p1, p0, Ljava/nio/channels/Channels$2;->val$ch:Ljava/nio/channels/AsynchronousByteChannel;

    .line 202
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 204
    iput-object v0, p0, Ljava/nio/channels/Channels$2;->bb:Ljava/nio/ByteBuffer;

    .line 205
    iput-object v0, p0, Ljava/nio/channels/Channels$2;->bs:[B

    .line 206
    iput-object v0, p0, Ljava/nio/channels/Channels$2;->b1:[B

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
    .line 255
    iget-object v0, p0, Ljava/nio/channels/Channels$2;->val$ch:Ljava/nio/channels/AsynchronousByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/AsynchronousByteChannel;->close()V

    .line 256
    return-void
.end method

.method public declared-synchronized read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    monitor-enter p0

    .line 210
    :try_start_2
    iget-object v1, p0, Ljava/nio/channels/Channels$2;->b1:[B

    if-nez v1, :cond_b

    .line 211
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Ljava/nio/channels/Channels$2;->b1:[B

    .line 212
    :cond_b
    iget-object v1, p0, Ljava/nio/channels/Channels$2;->b1:[B

    invoke-virtual {p0, v1}, Ljava/nio/channels/Channels$2;->read([B)I

    move-result v0

    .line 213
    .local v0, "n":I
    if-ne v0, v2, :cond_1c

    .line 214
    iget-object v1, p0, Ljava/nio/channels/Channels$2;->b1:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1f

    and-int/lit16 v1, v1, 0xff

    monitor-exit p0

    return v1

    .line 215
    :cond_1c
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .end local v0    # "n":I
    :catchall_1f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized read([BII)I
    .registers 11
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    .line 222
    if-ltz p2, :cond_7

    :try_start_4
    array-length v4, p1

    if-le p2, v4, :cond_10

    .line 224
    :cond_7
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v4

    monitor-exit p0

    throw v4

    .line 222
    :cond_10
    if-ltz p3, :cond_7

    .line 223
    add-int v4, p2, p3

    :try_start_14
    array-length v5, p1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_d

    if-gt v4, v5, :cond_7

    add-int v4, p2, p3

    if-ltz v4, :cond_7

    .line 225
    if-nez p3, :cond_1f

    monitor-exit p0

    .line 226
    return v6

    .line 228
    :cond_1f
    :try_start_1f
    iget-object v4, p0, Ljava/nio/channels/Channels$2;->bs:[B

    if-ne v4, p1, :cond_55

    .line 229
    iget-object v0, p0, Ljava/nio/channels/Channels$2;->bb:Ljava/nio/ByteBuffer;

    .line 231
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :goto_25
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 232
    add-int v4, p2, p3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 233
    iput-object v0, p0, Ljava/nio/channels/Channels$2;->bb:Ljava/nio/ByteBuffer;

    .line 234
    iput-object p1, p0, Ljava/nio/channels/Channels$2;->bs:[B
    :try_end_39
    .catchall {:try_start_1f .. :try_end_39} :catchall_d

    .line 236
    const/4 v3, 0x0

    .line 240
    .local v3, "interrupted":Z
    :goto_3a
    :try_start_3a
    iget-object v4, p0, Ljava/nio/channels/Channels$2;->val$ch:Ljava/nio/channels/AsynchronousByteChannel;

    invoke-interface {v4, v0}, Ljava/nio/channels/AsynchronousByteChannel;->read(Ljava/nio/ByteBuffer;)Ljava/util/concurrent/Future;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_49
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3a .. :try_end_49} :catch_5d
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_49} :catch_5a
    .catchall {:try_start_3a .. :try_end_49} :catchall_68

    move-result v4

    .line 248
    if-eqz v3, :cond_53

    .line 249
    :try_start_4c
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_53
    .catchall {:try_start_4c .. :try_end_53} :catchall_d

    :cond_53
    monitor-exit p0

    .line 240
    return v4

    .line 230
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v3    # "interrupted":Z
    :cond_55
    :try_start_55
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_d

    move-result-object v0

    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    goto :goto_25

    .line 243
    .restart local v3    # "interrupted":Z
    :catch_5a
    move-exception v2

    .line 244
    .local v2, "ie":Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    goto :goto_3a

    .line 241
    .end local v2    # "ie":Ljava/lang/InterruptedException;
    :catch_5d
    move-exception v1

    .line 242
    .local v1, "ee":Ljava/util/concurrent/ExecutionException;
    :try_start_5e
    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_68

    .line 247
    .end local v1    # "ee":Ljava/util/concurrent/ExecutionException;
    :catchall_68
    move-exception v4

    .line 248
    if-eqz v3, :cond_72

    .line 249
    :try_start_6b
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 247
    :cond_72
    throw v4
    :try_end_73
    .catchall {:try_start_6b .. :try_end_73} :catchall_d
.end method
