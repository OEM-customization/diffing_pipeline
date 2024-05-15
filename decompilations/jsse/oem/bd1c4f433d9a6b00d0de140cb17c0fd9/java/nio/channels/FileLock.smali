.class public abstract Ljava/nio/channels/FileLock;
.super Ljava/lang/Object;
.source "FileLock.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final channel:Ljava/nio/channels/Channel;

.field private final position:J

.field private final shared:Z

.field private final size:J


# direct methods
.method protected constructor <init>(Ljava/nio/channels/AsynchronousFileChannel;JJZ)V
    .registers 11
    .param p1, "channel"    # Ljava/nio/channels/AsynchronousFileChannel;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .param p6, "shared"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    cmp-long v0, p2, v2

    if-gez v0, :cond_12

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_12
    cmp-long v0, p4, v2

    if-gez v0, :cond_1f

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_1f
    add-long v0, p2, p4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2e

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative position + size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_2e
    iput-object p1, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    .line 195
    iput-wide p2, p0, Ljava/nio/channels/FileLock;->position:J

    .line 196
    iput-wide p4, p0, Ljava/nio/channels/FileLock;->size:J

    .line 197
    iput-boolean p6, p0, Ljava/nio/channels/FileLock;->shared:Z

    .line 198
    return-void
.end method

.method protected constructor <init>(Ljava/nio/channels/FileChannel;JJZ)V
    .registers 11
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .param p6, "shared"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    cmp-long v0, p2, v2

    if-gez v0, :cond_12

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_12
    cmp-long v0, p4, v2

    if-gez v0, :cond_1f

    .line 153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1f
    add-long v0, p2, p4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2e

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Negative position + size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_2e
    iput-object p1, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    .line 157
    iput-wide p2, p0, Ljava/nio/channels/FileLock;->position:J

    .line 158
    iput-wide p4, p0, Ljava/nio/channels/FileLock;->size:J

    .line 159
    iput-boolean p6, p0, Ljava/nio/channels/FileLock;->shared:Z

    .line 160
    return-void
.end method


# virtual methods
.method public acquiredBy()Ljava/nio/channels/Channel;
    .registers 2

    .prologue
    .line 221
    iget-object v0, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    return-object v0
.end method

.method public final channel()Ljava/nio/channels/FileChannel;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    instance-of v0, v0, Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    check-cast v0, Ljava/nio/channels/FileChannel;

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V

    .line 315
    return-void
.end method

.method public final isShared()Z
    .registers 2

    .prologue
    .line 258
    iget-boolean v0, p0, Ljava/nio/channels/FileLock;->shared:Z

    return v0
.end method

.method public abstract isValid()Z
.end method

.method public final overlaps(JJ)Z
    .registers 10
    .param p1, "position"    # J
    .param p3, "size"    # J

    .prologue
    const/4 v4, 0x0

    .line 273
    add-long v0, p1, p3

    iget-wide v2, p0, Ljava/nio/channels/FileLock;->position:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    .line 274
    return v4

    .line 275
    :cond_a
    iget-wide v0, p0, Ljava/nio/channels/FileLock;->position:J

    iget-wide v2, p0, Ljava/nio/channels/FileLock;->size:J

    add-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-gtz v0, :cond_14

    .line 276
    return v4

    .line 277
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public final position()J
    .registers 3

    .prologue
    .line 235
    iget-wide v0, p0, Ljava/nio/channels/FileLock;->position:J

    return-wide v0
.end method

.method public abstract release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final size()J
    .registers 3

    .prologue
    .line 248
    iget-wide v0, p0, Ljava/nio/channels/FileLock;->size:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 324
    const-string/jumbo v1, "["

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 324
    iget-wide v2, p0, Ljava/nio/channels/FileLock;->position:J

    .line 323
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 325
    const-string/jumbo v1, ":"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 325
    iget-wide v2, p0, Ljava/nio/channels/FileLock;->size:J

    .line 323
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 326
    const-string/jumbo v1, " "

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 326
    iget-boolean v0, p0, Ljava/nio/channels/FileLock;->shared:Z

    if-eqz v0, :cond_5d

    const-string/jumbo v0, "shared"

    .line 323
    :goto_39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 327
    const-string/jumbo v1, " "

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 327
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_61

    const-string/jumbo v0, "valid"

    .line 323
    :goto_4d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 328
    const-string/jumbo v1, "]"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 326
    :cond_5d
    const-string/jumbo v0, "exclusive"

    goto :goto_39

    .line 327
    :cond_61
    const-string/jumbo v0, "invalid"

    goto :goto_4d
.end method
