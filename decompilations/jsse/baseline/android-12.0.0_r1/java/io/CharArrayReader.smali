.class public Ljava/io/CharArrayReader;
.super Ljava/io/Reader;
.source "CharArrayReader.java"


# instance fields
.field protected whitelist test-api buf:[C

.field protected whitelist test-api count:I

.field protected whitelist test-api markedPos:I

.field protected whitelist test-api pos:I


# direct methods
.method public constructor whitelist test-api <init>([C)V
    .registers 3
    .param p1, "buf"    # [C

    .line 55
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 56
    iput-object p1, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 57
    iput v0, p0, Ljava/io/CharArrayReader;->pos:I

    .line 58
    array-length v0, p1

    iput v0, p0, Ljava/io/CharArrayReader;->count:I

    .line 59
    return-void
.end method

.method public constructor whitelist test-api <init>([CII)V
    .registers 6
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 78
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 79
    if-ltz p2, :cond_21

    array-length v0, p1

    if-gt p2, v0, :cond_21

    if-ltz p3, :cond_21

    add-int v0, p2, p3

    if-ltz v0, :cond_21

    .line 83
    iput-object p1, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 84
    iput p2, p0, Ljava/io/CharArrayReader;->pos:I

    .line 85
    add-int v0, p2, p3

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Ljava/io/CharArrayReader;->count:I

    .line 86
    iput p2, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 87
    return-void

    .line 81
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    if-eqz v0, :cond_5

    .line 93
    return-void

    .line 92
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 237
    return-void
.end method

.method public whitelist test-api mark(I)V
    .registers 4
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 212
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    iput v1, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 213
    monitor-exit v0

    .line 214
    return-void

    .line 213
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 194
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 103
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    if-lt v1, v2, :cond_f

    .line 104
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 106
    :cond_f
    iget-object v2, p0, Ljava/io/CharArrayReader;->buf:[C

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/io/CharArrayReader;->pos:I

    aget-char v1, v2, v1

    monitor-exit v0

    return v1

    .line 107
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist test-api read([CII)I
    .registers 8
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 121
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 123
    if-ltz p2, :cond_38

    array-length v1, p1

    if-gt p2, v1, :cond_38

    if-ltz p3, :cond_38

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_38

    add-int v1, p2, p3

    if-ltz v1, :cond_38

    .line 126
    const/4 v1, 0x0

    if-nez p3, :cond_1b

    .line 127
    monitor-exit v0

    return v1

    .line 130
    :cond_1b
    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    iget v3, p0, Ljava/io/CharArrayReader;->count:I

    if-lt v2, v3, :cond_24

    .line 131
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 134
    :cond_24
    sub-int/2addr v3, v2

    .line 135
    .local v3, "avail":I
    if-le p3, v3, :cond_28

    .line 136
    move p3, v3

    .line 139
    :cond_28
    if-gtz p3, :cond_2c

    .line 140
    monitor-exit v0

    return v1

    .line 142
    :cond_2c
    iget-object v1, p0, Ljava/io/CharArrayReader;->buf:[C

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/io/CharArrayReader;->pos:I

    .line 144
    monitor-exit v0

    return p3

    .line 125
    .end local v3    # "avail":I
    :cond_38
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Ljava/io/CharArrayReader;
    .end local p1    # "b":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v1

    .line 145
    .restart local p0    # "this":Ljava/io/CharArrayReader;
    .restart local p1    # "b":[C
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method public whitelist test-api ready()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 186
    iget v1, p0, Ljava/io/CharArrayReader;->count:I

    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    monitor-exit v0

    return v1

    .line 187
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public whitelist test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 225
    iget v1, p0, Ljava/io/CharArrayReader;->markedPos:I

    iput v1, p0, Ljava/io/CharArrayReader;->pos:I

    .line 226
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public whitelist test-api skip(J)J
    .registers 10
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 164
    iget v1, p0, Ljava/io/CharArrayReader;->count:I

    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    sub-int/2addr v1, v2

    int-to-long v3, v1

    .line 165
    .local v3, "avail":J
    cmp-long v1, p1, v3

    if-lez v1, :cond_11

    .line 166
    move-wide p1, v3

    .line 169
    :cond_11
    const-wide/16 v5, 0x0

    cmp-long v1, p1, v5

    if-gez v1, :cond_19

    .line 170
    monitor-exit v0

    return-wide v5

    .line 172
    :cond_19
    int-to-long v1, v2

    add-long/2addr v1, p1

    long-to-int v1, v1

    iput v1, p0, Ljava/io/CharArrayReader;->pos:I

    .line 173
    monitor-exit v0

    return-wide p1

    .line 174
    .end local v3    # "avail":J
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method
