.class public Ljava/io/PushbackReader;
.super Ljava/io/FilterReader;
.source "PushbackReader.java"


# instance fields
.field private greylist-max-o buf:[C

.field private greylist-max-o pos:I


# direct methods
.method public constructor whitelist test-api <init>(Ljava/io/Reader;)V
    .registers 3
    .param p1, "in"    # Ljava/io/Reader;

    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    .line 68
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/Reader;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "size"    # I

    .line 53
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 54
    if-lez p2, :cond_c

    .line 57
    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    .line 58
    iput p2, p0, Ljava/io/PushbackReader;->pos:I

    .line 59
    return-void

    .line 55
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    if-eqz v0, :cond_5

    .line 74
    return-void

    .line 73
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    invoke-super {p0}, Ljava/io/FilterReader;->close()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    .line 250
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

    .line 218
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    .line 87
    iget v1, p0, Ljava/io/PushbackReader;->pos:I

    iget-object v2, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v3, v2

    if-ge v1, v3, :cond_15

    .line 88
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Ljava/io/PushbackReader;->pos:I

    aget-char v1, v2, v1

    monitor-exit v0

    return v1

    .line 90
    :cond_15
    invoke-super {p0}, Ljava/io/FilterReader;->read()I

    move-result v1

    monitor-exit v0

    return v1

    .line 91
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public whitelist test-api read([CII)I
    .registers 8
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_3
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_50

    .line 110
    if-gtz p3, :cond_1e

    .line 111
    if-ltz p3, :cond_18

    .line 113
    if-ltz p2, :cond_12

    :try_start_c
    array-length v1, p1
    :try_end_d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_d} :catch_49
    .catchall {:try_start_c .. :try_end_d} :catchall_50

    if-gt p2, v1, :cond_12

    .line 116
    const/4 v1, 0x0

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_50

    return v1

    .line 114
    :cond_12
    :try_start_12
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Ljava/io/PushbackReader;
    .end local p1    # "cbuf":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v1

    .line 112
    .restart local p0    # "this":Ljava/io/PushbackReader;
    .restart local p1    # "cbuf":[C
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_18
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Ljava/io/PushbackReader;
    .end local p1    # "cbuf":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v1

    .line 118
    .restart local p0    # "this":Ljava/io/PushbackReader;
    .restart local p1    # "cbuf":[C
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :cond_1e
    iget-object v1, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v2, v1

    iget v3, p0, Ljava/io/PushbackReader;->pos:I

    sub-int/2addr v2, v3

    .line 119
    .local v2, "avail":I
    if-lez v2, :cond_33

    .line 120
    if-ge p3, v2, :cond_29

    .line 121
    move v2, p3

    .line 122
    :cond_29
    invoke-static {v1, v3, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget v1, p0, Ljava/io/PushbackReader;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Ljava/io/PushbackReader;->pos:I

    .line 124
    add-int/2addr p2, v2

    .line 125
    sub-int/2addr p3, v2

    .line 127
    :cond_33
    if-lez p3, :cond_47

    .line 128
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterReader;->read([CII)I

    move-result v1
    :try_end_39
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_12 .. :try_end_39} :catch_49
    .catchall {:try_start_12 .. :try_end_39} :catchall_50

    move p3, v1

    .line 129
    const/4 v1, -0x1

    if-ne p3, v1, :cond_43

    .line 130
    if-nez v2, :cond_40

    goto :goto_41

    :cond_40
    move v1, v2

    :goto_41
    :try_start_41
    monitor-exit v0

    return v1

    .line 132
    :cond_43
    add-int v1, v2, p3

    monitor-exit v0

    return v1

    .line 134
    :cond_47
    monitor-exit v0

    return v2

    .line 135
    .end local v2    # "avail":I
    :catch_49
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Ljava/io/PushbackReader;
    .end local p1    # "cbuf":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v2

    .line 138
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local p0    # "this":Ljava/io/PushbackReader;
    .restart local p1    # "cbuf":[C
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_41 .. :try_end_52} :catchall_50

    throw v1
.end method

.method public whitelist test-api ready()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    .line 207
    iget v1, p0, Ljava/io/PushbackReader;->pos:I

    iget-object v2, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v2, v2

    if-lt v1, v2, :cond_16

    invoke-super {p0}, Ljava/io/FilterReader;->ready()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v1, 0x1

    :goto_17
    monitor-exit v0

    return v1

    .line 208
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public whitelist test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api skip(J)J
    .registers 10
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_30

    .line 266
    iget-object v0, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_9
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    .line 268
    iget-object v1, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v2, v1

    iget v3, p0, Ljava/io/PushbackReader;->pos:I

    sub-int/2addr v2, v3

    .line 269
    .local v2, "avail":I
    if-lez v2, :cond_25

    .line 270
    int-to-long v4, v2

    cmp-long v4, p1, v4

    if-gtz v4, :cond_20

    .line 271
    int-to-long v3, v3

    add-long/2addr v3, p1

    long-to-int v1, v3

    iput v1, p0, Ljava/io/PushbackReader;->pos:I

    .line 272
    monitor-exit v0

    return-wide p1

    .line 274
    :cond_20
    array-length v1, v1

    iput v1, p0, Ljava/io/PushbackReader;->pos:I

    .line 275
    int-to-long v3, v2

    sub-long/2addr p1, v3

    .line 278
    :cond_25
    int-to-long v3, v2

    invoke-super {p0, p1, p2}, Ljava/io/FilterReader;->skip(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    monitor-exit v0

    return-wide v3

    .line 279
    .end local v2    # "avail":I
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_2d

    throw v1

    .line 265
    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "skip value is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api unread(I)V
    .registers 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-object v0, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    .line 154
    iget v1, p0, Ljava/io/PushbackReader;->pos:I

    if-eqz v1, :cond_15

    .line 156
    iget-object v2, p0, Ljava/io/PushbackReader;->buf:[C

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Ljava/io/PushbackReader;->pos:I

    int-to-char v3, p1

    aput-char v3, v2, v1

    .line 157
    monitor-exit v0

    .line 158
    return-void

    .line 155
    :cond_15
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pushback buffer overflow"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/io/PushbackReader;
    .end local p1    # "c":I
    throw v1

    .line 157
    .restart local p0    # "this":Ljava/io/PushbackReader;
    .restart local p1    # "c":I
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist test-api unread([C)V
    .registers 4
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/PushbackReader;->unread([CII)V

    .line 197
    return-void
.end method

.method public whitelist test-api unread([CII)V
    .registers 7
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_3
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    .line 177
    iget v1, p0, Ljava/io/PushbackReader;->pos:I

    if-gt p3, v1, :cond_14

    .line 179
    sub-int/2addr v1, p3

    iput v1, p0, Ljava/io/PushbackReader;->pos:I

    .line 180
    iget-object v2, p0, Ljava/io/PushbackReader;->buf:[C

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    monitor-exit v0

    .line 182
    return-void

    .line 178
    :cond_14
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Pushback buffer overflow"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/io/PushbackReader;
    .end local p1    # "cbuf":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v1

    .line 181
    .restart local p0    # "this":Ljava/io/PushbackReader;
    .restart local p1    # "cbuf":[C
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method
