.class public Ljava/io/CharArrayReader;
.super Ljava/io/Reader;
.source "CharArrayReader.java"


# instance fields
.field protected buf:[C

.field protected count:I

.field protected markedPos:I

.field protected pos:I


# direct methods
.method public constructor <init>([C)V
    .registers 3
    .param p1, "buf"    # [C

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 43
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

.method public constructor <init>([CII)V
    .registers 6
    .param p1, "buf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 43
    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    .line 79
    if-ltz p2, :cond_b

    array-length v0, p1

    if-le p2, v0, :cond_11

    .line 81
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 79
    :cond_11
    if-ltz p3, :cond_b

    .line 80
    add-int v0, p2, p3

    if-ltz v0, :cond_b

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
.end method

.method private ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    if-nez v0, :cond_d

    .line 92
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_d
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    .line 235
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
    .line 208
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 210
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    iput v0, p0, Ljava/io/CharArrayReader;->markedPos:I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v1

    .line 212
    return-void

    .line 208
    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 192
    const/4 v0, 0x1

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
    .line 101
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 102
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 103
    iget v0, p0, Ljava/io/CharArrayReader;->pos:I

    iget v2, p0, Ljava/io/CharArrayReader;->count:I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1b

    if-lt v0, v2, :cond_f

    .line 104
    const/4 v0, -0x1

    monitor-exit v1

    return v0

    .line 106
    :cond_f
    :try_start_f
    iget-object v0, p0, Ljava/io/CharArrayReader;->buf:[C

    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/CharArrayReader;->pos:I

    aget-char v0, v0, v2
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1b

    monitor-exit v1

    return v0

    .line 101
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public read([CII)I
    .registers 9
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 121
    iget-object v2, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 122
    :try_start_4
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 123
    if-ltz p2, :cond_c

    array-length v1, p1

    if-le p2, v1, :cond_15

    .line 125
    :cond_c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_12

    .line 121
    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1

    .line 123
    :cond_15
    if-ltz p3, :cond_c

    .line 124
    add-int v1, p2, p3

    :try_start_19
    array-length v3, p1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_12

    if-gt v1, v3, :cond_c

    add-int v1, p2, p3

    if-ltz v1, :cond_c

    .line 126
    if-nez p3, :cond_24

    monitor-exit v2

    .line 127
    return v4

    .line 130
    :cond_24
    :try_start_24
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    iget v3, p0, Ljava/io/CharArrayReader;->count:I
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_12

    if-lt v1, v3, :cond_2d

    .line 131
    const/4 v1, -0x1

    monitor-exit v2

    return v1

    .line 134
    :cond_2d
    :try_start_2d
    iget v1, p0, Ljava/io/CharArrayReader;->count:I

    iget v3, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_12

    sub-int v0, v1, v3

    .line 135
    .local v0, "avail":I
    if-le p3, v0, :cond_36

    .line 136
    move p3, v0

    .line 138
    :cond_36
    if-gtz p3, :cond_3a

    monitor-exit v2

    .line 139
    return v4

    .line 141
    :cond_3a
    :try_start_3a
    iget-object v1, p0, Ljava/io/CharArrayReader;->buf:[C

    iget v3, p0, Ljava/io/CharArrayReader;->pos:I

    invoke-static {v1, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 142
    iget v1, p0, Ljava/io/CharArrayReader;->pos:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_46
    .catchall {:try_start_3a .. :try_end_46} :catchall_12

    monitor-exit v2

    .line 143
    return p3
.end method

.method public ready()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 182
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_4
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 184
    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    iget v3, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_11

    sub-int/2addr v2, v3

    if-lez v2, :cond_f

    const/4 v0, 0x1

    :cond_f
    monitor-exit v1

    return v0

    .line 182
    :catchall_11
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
    .line 221
    iget-object v1, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_3
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 223
    iget v0, p0, Ljava/io/CharArrayReader;->markedPos:I

    iput v0, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v1

    .line 225
    return-void

    .line 221
    :catchall_c
    move-exception v0

    monitor-exit v1

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
    const-wide/16 v6, 0x0

    .line 160
    iget-object v3, p0, Ljava/io/CharArrayReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 161
    :try_start_5
    invoke-direct {p0}, Ljava/io/CharArrayReader;->ensureOpen()V

    .line 163
    iget v2, p0, Ljava/io/CharArrayReader;->count:I

    iget v4, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_22

    sub-int/2addr v2, v4

    int-to-long v0, v2

    .line 164
    .local v0, "avail":J
    cmp-long v2, p1, v0

    if-lez v2, :cond_13

    .line 165
    move-wide p1, v0

    .line 167
    :cond_13
    cmp-long v2, p1, v6

    if-gez v2, :cond_19

    monitor-exit v3

    .line 168
    return-wide v6

    .line 170
    :cond_19
    :try_start_19
    iget v2, p0, Ljava/io/CharArrayReader;->pos:I

    int-to-long v4, v2

    add-long/2addr v4, p1

    long-to-int v2, v4

    iput v2, p0, Ljava/io/CharArrayReader;->pos:I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_22

    monitor-exit v3

    .line 171
    return-wide p1

    .line 160
    .end local v0    # "avail":J
    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2
.end method
