.class Ljava/nio/channels/Channels$1;
.super Ljava/io/OutputStream;
.source "Channels.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist b1:[B

.field private blacklist bb:Ljava/nio/ByteBuffer;

.field private blacklist bs:[B

.field final synthetic blacklist val$ch:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method constructor blacklist <init>(Ljava/nio/channels/WritableByteChannel;)V
    .registers 2

    .line 146
    iput-object p1, p0, Ljava/nio/channels/Channels$1;->val$ch:Ljava/nio/channels/WritableByteChannel;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 148
    const/4 p1, 0x0

    iput-object p1, p0, Ljava/nio/channels/Channels$1;->bb:Ljava/nio/ByteBuffer;

    .line 149
    iput-object p1, p0, Ljava/nio/channels/Channels$1;->bs:[B

    .line 150
    iput-object p1, p0, Ljava/nio/channels/Channels$1;->b1:[B

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Ljava/nio/channels/Channels$1;->val$ch:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->close()V

    .line 180
    return-void
.end method

.method public declared-synchronized whitelist test-api write(I)V
    .registers 5
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

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
    .end local p0    # "this":Ljava/nio/channels/Channels$1;
    :cond_a
    iget-object v0, p0, Ljava/nio/channels/Channels$1;->b1:[B

    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    .line 156
    invoke-virtual {p0, v0}, Ljava/nio/channels/Channels$1;->write([B)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 157
    monitor-exit p0

    return-void

    .line 152
    .end local p1    # "b":I
    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api write([BII)V
    .registers 7
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 162
    if-ltz p2, :cond_3c

    :try_start_3
    array-length v0, p1

    if-gt p2, v0, :cond_3c

    if-ltz p3, :cond_3c

    add-int v0, p2, p3

    array-length v1, p1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_42

    if-gt v0, v1, :cond_3c

    add-int v0, p2, p3

    if-ltz v0, :cond_3c

    .line 165
    if-nez p3, :cond_15

    .line 166
    monitor-exit p0

    return-void

    .line 168
    :cond_15
    :try_start_15
    iget-object v0, p0, Ljava/nio/channels/Channels$1;->bs:[B

    if-ne v0, p1, :cond_1c

    .line 169
    iget-object v0, p0, Ljava/nio/channels/Channels$1;->bb:Ljava/nio/ByteBuffer;

    goto :goto_20

    .line 170
    .end local p0    # "this":Ljava/nio/channels/Channels$1;
    :cond_1c
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_20
    nop

    .line 171
    .local v0, "bb":Ljava/nio/ByteBuffer;
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

    # invokes: Ljava/nio/channels/Channels;->writeFully(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    invoke-static {v1, v0}, Ljava/nio/channels/Channels;->access$000(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;)V
    :try_end_3a
    .catchall {:try_start_15 .. :try_end_3a} :catchall_42

    .line 176
    monitor-exit p0

    return-void

    .line 164
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    :cond_3c
    :try_start_3c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_42

    .line 161
    .end local p1    # "bs":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method
