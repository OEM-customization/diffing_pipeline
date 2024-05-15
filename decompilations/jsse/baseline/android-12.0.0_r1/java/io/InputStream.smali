.class public abstract Ljava/io/InputStream;
.super Ljava/lang/Object;
.source "InputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final greylist-max-o MAX_SKIP_BUFFER_SIZE:I = 0x800


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 273
    return-void
.end method

.method public declared-synchronized whitelist test-api mark(I)V
    .registers 2
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 301
    monitor-exit p0

    return-void
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public abstract whitelist test-api read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public whitelist test-api read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public whitelist test-api read([BII)I
    .registers 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    if-eqz p1, :cond_36

    .line 164
    if-ltz p2, :cond_30

    if-ltz p3, :cond_30

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_30

    .line 166
    if-nez p3, :cond_e

    .line 167
    const/4 v0, 0x0

    return v0

    .line 170
    :cond_e
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 171
    .local v0, "c":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 172
    return v1

    .line 174
    :cond_16
    int-to-byte v2, v0

    aput-byte v2, p1, p2

    .line 176
    const/4 v2, 0x1

    .line 178
    .local v2, "i":I
    :goto_1a
    if-ge v2, p3, :cond_2e

    .line 179
    :try_start_1c
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    move v0, v3

    .line 180
    if-ne v0, v1, :cond_24

    .line 181
    goto :goto_2e

    .line 183
    :cond_24
    add-int v3, p2, v2

    int-to-byte v4, v0

    aput-byte v4, p1, v3
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_29} :catch_2c

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 185
    :catch_2c
    move-exception v1

    goto :goto_2f

    .line 186
    :cond_2e
    :goto_2e
    nop

    .line 187
    :goto_2f
    return v2

    .line 165
    .end local v0    # "c":I
    .end local v2    # "i":I
    :cond_30
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 163
    :cond_36
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 348
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_9

    .line 348
    .end local p0    # "this":Ljava/io/InputStream;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .registers 12
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    move-wide v0, p1

    .line 217
    .local v0, "remaining":J
    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-gtz v4, :cond_8

    .line 218
    return-wide v2

    .line 221
    :cond_8
    const-wide/16 v4, 0x800

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 222
    .local v4, "size":I
    new-array v5, v4, [B

    .line 223
    .local v5, "skipBuffer":[B
    :goto_11
    cmp-long v6, v0, v2

    if-lez v6, :cond_26

    .line 224
    const/4 v6, 0x0

    int-to-long v7, v4

    invoke-static {v7, v8, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-virtual {p0, v5, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 225
    .local v6, "nr":I
    if-gez v6, :cond_23

    .line 226
    goto :goto_26

    .line 228
    :cond_23
    int-to-long v7, v6

    sub-long/2addr v0, v7

    goto :goto_11

    .line 231
    .end local v6    # "nr":I
    :cond_26
    :goto_26
    sub-long v2, p1, v0

    return-wide v2
.end method
