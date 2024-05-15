.class public abstract Ljava/nio/channels/FileLock;
.super Ljava/lang/Object;
.source "FileLock.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private final greylist-max-o channel:Ljava/nio/channels/Channel;

.field private final greylist-max-o position:J

.field private final greylist-max-o shared:Z

.field private final greylist-max-o size:J


# direct methods
.method protected constructor whitelist core-platform-api test-api <init>(Ljava/nio/channels/AsynchronousFileChannel;JJZ)V
    .registers 11
    .param p1, "channel"    # Ljava/nio/channels/AsynchronousFileChannel;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .param p6, "shared"    # Z

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2c

    .line 190
    cmp-long v2, p4, v0

    if-ltz v2, :cond_24

    .line 192
    add-long v2, p2, p4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1c

    .line 194
    iput-object p1, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    .line 195
    iput-wide p2, p0, Ljava/nio/channels/FileLock;->position:J

    .line 196
    iput-wide p4, p0, Ljava/nio/channels/FileLock;->size:J

    .line 197
    iput-boolean p6, p0, Ljava/nio/channels/FileLock;->shared:Z

    .line 198
    return-void

    .line 193
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative position + size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor whitelist core-platform-api test-api <init>(Ljava/nio/channels/FileChannel;JJZ)V
    .registers 11
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "size"    # J
    .param p6, "shared"    # Z

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_2c

    .line 152
    cmp-long v2, p4, v0

    if-ltz v2, :cond_24

    .line 154
    add-long v2, p2, p4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1c

    .line 156
    iput-object p1, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    .line 157
    iput-wide p2, p0, Ljava/nio/channels/FileLock;->position:J

    .line 158
    iput-wide p4, p0, Ljava/nio/channels/FileLock;->size:J

    .line 159
    iput-boolean p6, p0, Ljava/nio/channels/FileLock;->shared:Z

    .line 160
    return-void

    .line 155
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative position + size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api acquiredBy()Ljava/nio/channels/Channel;
    .registers 2

    .line 221
    iget-object v0, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    return-object v0
.end method

.method public final whitelist core-platform-api test-api channel()Ljava/nio/channels/FileChannel;
    .registers 3

    .line 210
    iget-object v0, p0, Ljava/nio/channels/FileLock;->channel:Ljava/nio/channels/Channel;

    instance-of v1, v0, Ljava/nio/channels/FileChannel;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/nio/channels/FileChannel;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final whitelist core-platform-api test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->release()V

    .line 315
    return-void
.end method

.method public final whitelist core-platform-api test-api isShared()Z
    .registers 2

    .line 258
    iget-boolean v0, p0, Ljava/nio/channels/FileLock;->shared:Z

    return v0
.end method

.method public abstract whitelist core-platform-api test-api isValid()Z
.end method

.method public final whitelist core-platform-api test-api overlaps(JJ)Z
    .registers 11
    .param p1, "position"    # J
    .param p3, "size"    # J

    .line 273
    add-long v0, p1, p3

    iget-wide v2, p0, Ljava/nio/channels/FileLock;->position:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_a

    .line 274
    return v1

    .line 275
    :cond_a
    iget-wide v4, p0, Ljava/nio/channels/FileLock;->size:J

    add-long/2addr v2, v4

    cmp-long v0, v2, p1

    if-gtz v0, :cond_12

    .line 276
    return v1

    .line 277
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public final whitelist core-platform-api test-api position()J
    .registers 3

    .line 235
    iget-wide v0, p0, Ljava/nio/channels/FileLock;->position:J

    return-wide v0
.end method

.method public abstract whitelist core-platform-api test-api release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist core-platform-api test-api size()J
    .registers 3

    .line 248
    iget-wide v0, p0, Ljava/nio/channels/FileLock;->size:J

    return-wide v0
.end method

.method public final whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 4

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljava/nio/channels/FileLock;->position:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Ljava/nio/channels/FileLock;->size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-boolean v2, p0, Ljava/nio/channels/FileLock;->shared:Z

    if-eqz v2, :cond_30

    const-string v2, "shared"

    goto :goto_32

    :cond_30
    const-string v2, "exclusive"

    :goto_32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p0}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v1

    if-eqz v1, :cond_41

    const-string v1, "valid"

    goto :goto_43

    :cond_41
    const-string v1, "invalid"

    :goto_43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    return-object v0
.end method
