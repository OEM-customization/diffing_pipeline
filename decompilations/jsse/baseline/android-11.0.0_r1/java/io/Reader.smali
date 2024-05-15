.class public abstract Ljava/io/Reader;
.super Ljava/lang/Object;
.source "Reader.java"

# interfaces
.implements Ljava/lang/Readable;
.implements Ljava/io/Closeable;


# static fields
.field private static final greylist-max-o maxSkipBufferSize:I = 0x2000


# instance fields
.field protected whitelist core-platform-api test-api lock:Ljava/lang/Object;

.field private greylist-max-o skipBuffer:[C


# direct methods
.method protected constructor whitelist core-platform-api test-api <init>()V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/Reader;->skipBuffer:[C

    .line 67
    iput-object p0, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method protected constructor whitelist core-platform-api test-api <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "lock"    # Ljava/lang/Object;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/Reader;->skipBuffer:[C

    .line 77
    if-eqz p1, :cond_b

    .line 80
    iput-object p1, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    .line 81
    return-void

    .line 78
    :cond_b
    throw v0
.end method


# virtual methods
.method public abstract whitelist core-platform-api test-api close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist core-platform-api test-api mark(I)V
    .registers 4
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark() not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api markSupported()Z
    .registers 2

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    const/4 v0, 0x1

    new-array v1, v0, [C

    .line 121
    .local v1, "cb":[C
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_c

    .line 122
    return v3

    .line 124
    :cond_c
    aget-char v0, v1, v2

    return v0
.end method

.method public whitelist core-platform-api test-api read(Ljava/nio/CharBuffer;)I
    .registers 6
    .param p1, "target"    # Ljava/nio/CharBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 99
    .local v0, "len":I
    new-array v1, v0, [C

    .line 100
    .local v1, "cbuf":[C
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava/io/Reader;->read([CII)I

    move-result v3

    .line 101
    .local v3, "n":I
    if-lez v3, :cond_10

    .line 102
    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    .line 103
    :cond_10
    return v3
.end method

.method public whitelist core-platform-api test-api read([C)I
    .registers 4
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/Reader;->read([CII)I

    move-result v0

    return v0
.end method

.method public abstract whitelist core-platform-api test-api read([CII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist core-platform-api test-api ready()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reset() not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api skip(J)J
    .registers 13
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3d

    .line 179
    const-wide/16 v2, 0x2000

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 180
    .local v2, "nn":I
    iget-object v3, p0, Ljava/io/Reader;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 181
    :try_start_10
    iget-object v4, p0, Ljava/io/Reader;->skipBuffer:[C

    if-eqz v4, :cond_19

    iget-object v4, p0, Ljava/io/Reader;->skipBuffer:[C

    array-length v4, v4

    if-ge v4, v2, :cond_1d

    .line 182
    :cond_19
    new-array v4, v2, [C

    iput-object v4, p0, Ljava/io/Reader;->skipBuffer:[C

    .line 183
    :cond_1d
    move-wide v4, p1

    .line 184
    .local v4, "r":J
    :goto_1e
    cmp-long v6, v4, v0

    if-lez v6, :cond_36

    .line 185
    iget-object v6, p0, Ljava/io/Reader;->skipBuffer:[C

    const/4 v7, 0x0

    int-to-long v8, v2

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {p0, v6, v7, v8}, Ljava/io/Reader;->read([CII)I

    move-result v6

    .line 186
    .local v6, "nc":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_33

    .line 187
    goto :goto_36

    .line 188
    :cond_33
    int-to-long v7, v6

    sub-long/2addr v4, v7

    .line 189
    .end local v6    # "nc":I
    goto :goto_1e

    .line 190
    :cond_36
    :goto_36
    sub-long v0, p1, v4

    monitor-exit v3

    return-wide v0

    .line 191
    .end local v4    # "r":J
    :catchall_3a
    move-exception v0

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_3a

    throw v0

    .line 178
    .end local v2    # "nn":I
    :cond_3d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "skip value is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
