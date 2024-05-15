.class final Ljava/nio/channels/Channels$1;
.super Ljava/io/OutputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private b1:[B

.field private bb:Ljava/nio/ByteBuffer;

.field private bs:[B

.field final synthetic val$ch:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method constructor <init>(Ljava/nio/channels/WritableByteChannel;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Ljava/nio/channels/Channels$1;->val$ch:Ljava/nio/channels/WritableByteChannel;

    .line 146
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 148
    iput-object v0, p0, Ljava/nio/channels/Channels$1;->bb:Ljava/nio/ByteBuffer;

    .line 149
    iput-object v0, p0, Ljava/nio/channels/Channels$1;->bs:[B

    .line 150
    iput-object v0, p0, Ljava/nio/channels/Channels$1;->b1:[B

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
    .line 179
    iget-object v0, p0, Ljava/nio/channels/Channels$1;->val$ch:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V

    .line 180
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

    .line 153
    :try_start_1
    iget-object v0, p0, Ljava/nio/channels/Channels$1;->b1:[B

    if-nez v0, :cond_a

    .line 154
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/nio/channels/Channels$1;->b1:[B

    .line 155
    :cond_a
    iget-object v0, p0, Ljava/nio/channels/Channels$1;->b1:[B

    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 156
    iget-object v0, p0, Ljava/nio/channels/Channels$1;->b1:[B

    invoke-virtual {p0, v0}, Ljava/nio/channels/Channels$1;->write([B)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    .line 157
    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .registers 7
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

    .line 162
    if-ltz p2, :cond_6

    :try_start_3
    array-length v1, p1

    if-le p2, v1, :cond_f

    .line 164
    :cond_6
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_c

    :catchall_c
    move-exception v1

    monitor-exit p0

    throw v1

    .line 162
    :cond_f
    if-ltz p3, :cond_6

    .line 163
    add-int v1, p2, p3

    :try_start_13
    array-length v2, p1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_c

    if-gt v1, v2, :cond_6

    add-int v1, p2, p3

    if-ltz v1, :cond_6

    .line 165
    if-nez p3, :cond_1e

    monitor-exit p0

    .line 166
    return-void

    .line 168
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Ljava/nio/channels/Channels$1;->bs:[B

    if-ne v1, p1, :cond_3f

    .line 169
    iget-object v0, p0, Ljava/nio/channels/Channels$1;->bb:Ljava/nio/ByteBuffer;

    .line 171
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :goto_24
    add-int v1, p2, p3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 172
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 173
    iput-object v0, p0, Ljava/nio/channels/Channels$1;->bb:Ljava/nio/ByteBuffer;

    .line 174
    iput-object p1, p0, Ljava/nio/channels/Channels$1;->bs:[B

    .line 175
    iget-object v1, p0, Ljava/nio/channels/Channels$1;->val$ch:Ljava/nio/channels/WritableByteChannel;

    invoke-static {v1, v0}, Ljava/nio/channels/Channels;->-wrap0(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    :try_end_3d
    .catchall {:try_start_1e .. :try_end_3d} :catchall_c

    monitor-exit p0

    .line 176
    return-void

    .line 170
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_3f
    :try_start_3f
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_c

    move-result-object v0

    .restart local v0    # "bb":Ljava/nio/ByteBuffer;
    goto :goto_24
.end method
