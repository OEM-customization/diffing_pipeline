.class public Ljava/io/PushbackReader;
.super Ljava/io/FilterReader;
.source "PushbackReader.java"


# instance fields
.field private buf:[C

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/io/PushbackReader;-><init>(Ljava/io/Reader;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "size"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/io/FilterReader;-><init>(Ljava/io/Reader;)V

    .line 54
    if-gtz p2, :cond_e

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_e
    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    .line 58
    iput p2, p0, Ljava/io/PushbackReader;->pos:I

    .line 59
    return-void
.end method

.method private ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    if-nez v0, :cond_d

    .line 73
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_d
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
    .line 248
    invoke-super {p0}, Ljava/io/FilterReader;->close()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    .line 250
    return-void
.end method

.method public mark(I)V
    .registers 4
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_3
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    .line 87
    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    iget-object v2, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 88
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/PushbackReader;->pos:I

    aget-char v0, v0, v2
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1f

    monitor-exit v1

    return v0

    .line 90
    :cond_19
    :try_start_19
    invoke-super {p0}, Ljava/io/FilterReader;->read()I
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1f

    move-result v0

    monitor-exit v1

    return v0

    .line 85
    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public read([CII)I
    .registers 10
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 107
    iget-object v3, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 108
    :try_start_5
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_19

    .line 110
    if-gtz p3, :cond_29

    .line 111
    if-gez p3, :cond_1c

    .line 112
    :try_start_c
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
    :try_end_12
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_12} :catch_12
    .catchall {:try_start_c .. :try_end_12} :catchall_19

    .line 135
    :catch_12
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_13
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_19

    .line 107
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catchall_19
    move-exception v2

    monitor-exit v3

    throw v2

    .line 113
    :cond_1c
    if-ltz p2, :cond_21

    :try_start_1e
    array-length v2, p1

    if-le p2, v2, :cond_27

    .line 114
    :cond_21
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
    :try_end_27
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1e .. :try_end_27} :catch_12
    .catchall {:try_start_1e .. :try_end_27} :catchall_19

    :cond_27
    monitor-exit v3

    .line 116
    return v4

    .line 118
    :cond_29
    :try_start_29
    iget-object v4, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v4, v4

    iget v5, p0, Ljava/io/PushbackReader;->pos:I

    sub-int v0, v4, v5

    .line 119
    .local v0, "avail":I
    if-lez v0, :cond_43

    .line 120
    if-ge p3, v0, :cond_35

    .line 121
    move v0, p3

    .line 122
    :cond_35
    iget-object v4, p0, Ljava/io/PushbackReader;->buf:[C

    iget v5, p0, Ljava/io/PushbackReader;->pos:I

    invoke-static {v4, v5, p1, p2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 123
    iget v4, p0, Ljava/io/PushbackReader;->pos:I

    add-int/2addr v4, v0

    iput v4, p0, Ljava/io/PushbackReader;->pos:I

    .line 124
    add-int/2addr p2, v0

    .line 125
    sub-int/2addr p3, v0

    .line 127
    :cond_43
    if-lez p3, :cond_54

    .line 128
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterReader;->read([CII)I
    :try_end_48
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_29 .. :try_end_48} :catch_12
    .catchall {:try_start_29 .. :try_end_48} :catchall_19

    move-result p3

    .line 129
    if-ne p3, v2, :cond_50

    .line 130
    if-nez v0, :cond_4e

    move v0, v2

    .end local v0    # "avail":I
    :cond_4e
    monitor-exit v3

    return v0

    .line 132
    .restart local v0    # "avail":I
    :cond_50
    add-int v2, v0, p3

    monitor-exit v3

    return v2

    :cond_54
    monitor-exit v3

    .line 134
    return v0
.end method

.method public ready()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget-object v1, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 206
    :try_start_3
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    .line 207
    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    iget-object v2, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v2, v2

    if-lt v0, v2, :cond_13

    invoke-super {p0}, Ljava/io/FilterReader;->ready()Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_15

    move-result v0

    :goto_11
    monitor-exit v1

    return v0

    :cond_13
    const/4 v0, 0x1

    goto :goto_11

    .line 205
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .registers 12
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_f

    .line 265
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "skip value is negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_f
    iget-object v2, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 267
    :try_start_12
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    .line 268
    iget-object v1, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v1, v1

    iget v3, p0, Ljava/io/PushbackReader;->pos:I

    sub-int v0, v1, v3

    .line 269
    .local v0, "avail":I
    if-lez v0, :cond_33

    .line 270
    int-to-long v4, v0

    cmp-long v1, p1, v4

    if-gtz v1, :cond_2c

    .line 271
    iget v1, p0, Ljava/io/PushbackReader;->pos:I

    int-to-long v4, v1

    add-long/2addr v4, p1

    long-to-int v1, v4

    iput v1, p0, Ljava/io/PushbackReader;->pos:I
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_3b

    monitor-exit v2

    .line 272
    return-wide p1

    .line 274
    :cond_2c
    :try_start_2c
    iget-object v1, p0, Ljava/io/PushbackReader;->buf:[C

    array-length v1, v1

    iput v1, p0, Ljava/io/PushbackReader;->pos:I

    .line 275
    int-to-long v4, v0

    sub-long/2addr p1, v4

    .line 278
    :cond_33
    int-to-long v4, v0

    invoke-super {p0, p1, p2}, Ljava/io/FilterReader;->skip(J)J
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_3b

    move-result-wide v6

    add-long/2addr v4, v6

    monitor-exit v2

    return-wide v4

    .line 266
    .end local v0    # "avail":I
    :catchall_3b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unread(I)V
    .registers 6
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v1, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 153
    :try_start_3
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    .line 154
    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    if-nez v0, :cond_16

    .line 155
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Pushback buffer overflow"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_13

    .line 152
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0

    .line 156
    :cond_16
    :try_start_16
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ljava/io/PushbackReader;->pos:I

    int-to-char v3, p1

    aput-char v3, v0, v2
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_13

    monitor-exit v1

    .line 158
    return-void
.end method

.method public unread([C)V
    .registers 4
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/PushbackReader;->unread([CII)V

    .line 197
    return-void
.end method

.method public unread([CII)V
    .registers 7
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v1, p0, Ljava/io/PushbackReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 176
    :try_start_3
    invoke-direct {p0}, Ljava/io/PushbackReader;->ensureOpen()V

    .line 177
    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    if-le p3, v0, :cond_16

    .line 178
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Pushback buffer overflow"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_13

    .line 175
    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0

    .line 179
    :cond_16
    :try_start_16
    iget v0, p0, Ljava/io/PushbackReader;->pos:I

    sub-int/2addr v0, p3

    iput v0, p0, Ljava/io/PushbackReader;->pos:I

    .line 180
    iget-object v0, p0, Ljava/io/PushbackReader;->buf:[C

    iget v2, p0, Ljava/io/PushbackReader;->pos:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy([CI[CII)V
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_13

    monitor-exit v1

    .line 182
    return-void
.end method
