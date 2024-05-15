.class public Ljava/io/BufferedReader;
.super Ljava/io/Reader;
.source "BufferedReader.java"


# static fields
.field private static final INVALIDATED:I = -0x2

.field private static final UNMARKED:I = -0x1

.field private static defaultCharBufferSize:I

.field private static defaultExpectedLineLength:I


# instance fields
.field private cb:[C

.field private in:Ljava/io/Reader;

.field private markedChar:I

.field private markedSkipLF:Z

.field private nChars:I

.field private nextChar:I

.field private readAheadLimit:I

.field private skipLF:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 89
    const/16 v0, 0x2000

    sput v0, Ljava/io/BufferedReader;->defaultCharBufferSize:I

    .line 90
    const/16 v0, 0x50

    sput v0, Ljava/io/BufferedReader;->defaultExpectedLineLength:I

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3
    .param p1, "in"    # Ljava/io/Reader;

    .prologue
    .line 117
    sget v0, Ljava/io/BufferedReader;->defaultCharBufferSize:I

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "sz"    # I

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/BufferedReader;->markedChar:I

    .line 81
    iput v1, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    .line 84
    iput-boolean v1, p0, Ljava/io/BufferedReader;->skipLF:Z

    .line 87
    iput-boolean v1, p0, Ljava/io/BufferedReader;->markedSkipLF:Z

    .line 103
    if-gtz p2, :cond_18

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_18
    iput-object p1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    .line 106
    new-array v0, p2, [C

    iput-object v0, p0, Ljava/io/BufferedReader;->cb:[C

    .line 107
    iput v1, p0, Ljava/io/BufferedReader;->nChars:I

    iput v1, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 108
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
    .line 122
    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    if-nez v0, :cond_d

    .line 123
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_d
    return-void
.end method

.method private fill()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 131
    iget v5, p0, Ljava/io/BufferedReader;->markedChar:I

    const/4 v6, -0x1

    if-gt v5, v6, :cond_1e

    .line 133
    const/4 v1, 0x0

    .line 172
    .local v1, "dst":I
    :cond_7
    :goto_7
    iget-object v5, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    iget-object v6, p0, Ljava/io/BufferedReader;->cb:[C

    iget-object v7, p0, Ljava/io/BufferedReader;->cb:[C

    array-length v7, v7

    sub-int/2addr v7, v1

    invoke-virtual {v5, v6, v1, v7}, Ljava/io/Reader;->read([CII)I

    move-result v2

    .line 173
    .local v2, "n":I
    if-eqz v2, :cond_7

    .line 174
    if-lez v2, :cond_1d

    .line 175
    add-int v5, v1, v2

    iput v5, p0, Ljava/io/BufferedReader;->nChars:I

    .line 176
    iput v1, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 178
    :cond_1d
    return-void

    .line 136
    .end local v1    # "dst":I
    .end local v2    # "n":I
    :cond_1e
    iget v5, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v6, p0, Ljava/io/BufferedReader;->markedChar:I

    sub-int v0, v5, v6

    .line 137
    .local v0, "delta":I
    iget v5, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    if-lt v0, v5, :cond_2f

    .line 139
    const/4 v5, -0x2

    iput v5, p0, Ljava/io/BufferedReader;->markedChar:I

    .line 140
    iput v8, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    .line 141
    const/4 v1, 0x0

    .restart local v1    # "dst":I
    goto :goto_7

    .line 143
    .end local v1    # "dst":I
    :cond_2f
    iget v5, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    iget-object v6, p0, Ljava/io/BufferedReader;->cb:[C

    array-length v6, v6

    if-gt v5, v6, :cond_47

    .line 145
    iget-object v5, p0, Ljava/io/BufferedReader;->cb:[C

    iget v6, p0, Ljava/io/BufferedReader;->markedChar:I

    iget-object v7, p0, Ljava/io/BufferedReader;->cb:[C

    invoke-static {v5, v6, v7, v8, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 146
    iput v8, p0, Ljava/io/BufferedReader;->markedChar:I

    .line 147
    move v1, v0

    .line 166
    .restart local v1    # "dst":I
    :goto_42
    iput v0, p0, Ljava/io/BufferedReader;->nChars:I

    iput v0, p0, Ljava/io/BufferedReader;->nextChar:I

    goto :goto_7

    .line 156
    .end local v1    # "dst":I
    :cond_47
    iget-object v5, p0, Ljava/io/BufferedReader;->cb:[C

    array-length v5, v5

    mul-int/lit8 v4, v5, 0x2

    .line 157
    .local v4, "nlength":I
    iget v5, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    if-le v4, v5, :cond_52

    .line 158
    iget v4, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    .line 160
    :cond_52
    new-array v3, v4, [C

    .line 161
    .local v3, "ncb":[C
    iget-object v5, p0, Ljava/io/BufferedReader;->cb:[C

    iget v6, p0, Ljava/io/BufferedReader;->markedChar:I

    invoke-static {v5, v6, v3, v8, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 162
    iput-object v3, p0, Ljava/io/BufferedReader;->cb:[C

    .line 163
    iput v8, p0, Ljava/io/BufferedReader;->markedChar:I

    .line 164
    move v1, v0

    .restart local v1    # "dst":I
    goto :goto_42
.end method

.method private read1([CII)I
    .registers 8
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 214
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v1, v2, :cond_20

    .line 220
    iget-object v1, p0, Ljava/io/BufferedReader;->cb:[C

    array-length v1, v1

    if-lt p3, v1, :cond_1d

    iget v1, p0, Ljava/io/BufferedReader;->markedChar:I

    if-gt v1, v3, :cond_1d

    iget-boolean v1, p0, Ljava/io/BufferedReader;->skipLF:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1d

    .line 221
    iget-object v1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    return v1

    .line 223
    :cond_1d
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    .line 225
    :cond_20
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v1, v2, :cond_27

    return v3

    .line 226
    :cond_27
    iget-boolean v1, p0, Ljava/io/BufferedReader;->skipLF:Z

    if-eqz v1, :cond_4e

    .line 227
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/BufferedReader;->skipLF:Z

    .line 228
    iget-object v1, p0, Ljava/io/BufferedReader;->cb:[C

    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    aget-char v1, v1, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4e

    .line 229
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 230
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v1, v2, :cond_47

    .line 231
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    .line 232
    :cond_47
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v1, v2, :cond_4e

    .line 233
    return v3

    .line 236
    :cond_4e
    iget v1, p0, Ljava/io/BufferedReader;->nChars:I

    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 237
    .local v0, "n":I
    iget-object v1, p0, Ljava/io/BufferedReader;->cb:[C

    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 238
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 239
    return v0
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 532
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 533
    :try_start_3
    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1e

    if-nez v0, :cond_9

    monitor-exit v1

    .line 534
    return-void

    .line 536
    :cond_9
    :try_start_9
    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_16

    .line 538
    const/4 v0, 0x0

    :try_start_f
    iput-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    .line 539
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/io/BufferedReader;->cb:[C
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1e

    monitor-exit v1

    .line 542
    return-void

    .line 537
    :catchall_16
    move-exception v0

    .line 538
    const/4 v2, 0x0

    :try_start_18
    iput-object v2, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    .line 539
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/io/BufferedReader;->cb:[C

    .line 537
    throw v0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1e

    .line 532
    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public lines()Ljava/util/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 573
    new-instance v0, Ljava/io/BufferedReader$1;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader$1;-><init>(Ljava/io/BufferedReader;)V

    .line 602
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v1, 0x110

    .line 601
    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v1

    .line 602
    const/4 v2, 0x0

    .line 601
    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v1

    return-object v1
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
    .line 502
    if-gez p1, :cond_b

    .line 503
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Read-ahead limit < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 505
    :cond_b
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    :try_start_e
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    .line 507
    iput p1, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    .line 508
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    iput v0, p0, Ljava/io/BufferedReader;->markedChar:I

    .line 509
    iget-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z

    iput-boolean v0, p0, Ljava/io/BufferedReader;->markedSkipLF:Z
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1d

    monitor-exit v1

    .line 511
    return-void

    .line 505
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 482
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
    .line 189
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    .line 192
    :goto_6
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v0, v2, :cond_18

    .line 193
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    .line 194
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_30

    if-lt v0, v2, :cond_18

    .line 195
    const/4 v0, -0x1

    monitor-exit v1

    return v0

    .line 197
    :cond_18
    :try_start_18
    iget-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z

    if-eqz v0, :cond_33

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z

    .line 199
    iget-object v0, p0, Ljava/io/BufferedReader;->cb:[C

    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    aget-char v0, v0, v2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_33

    .line 200
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/io/BufferedReader;->nextChar:I
    :try_end_2f
    .catchall {:try_start_18 .. :try_end_2f} :catchall_30

    goto :goto_6

    .line 189
    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0

    .line 204
    :cond_33
    :try_start_33
    iget-object v0, p0, Ljava/io/BufferedReader;->cb:[C

    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedReader;->nextChar:I

    aget-char v0, v0, v2
    :try_end_3d
    .catchall {:try_start_33 .. :try_end_3d} :catchall_30

    monitor-exit v1

    return v0
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
    const/4 v5, 0x0

    .line 288
    iget-object v3, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 289
    :try_start_4
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    .line 290
    if-ltz p2, :cond_c

    array-length v2, p1

    if-le p2, v2, :cond_15

    .line 292
    :cond_c
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_12

    .line 288
    :catchall_12
    move-exception v2

    monitor-exit v3

    throw v2

    .line 290
    :cond_15
    if-ltz p3, :cond_c

    .line 291
    add-int v2, p2, p3

    :try_start_19
    array-length v4, p1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_12

    if-gt v2, v4, :cond_c

    add-int v2, p2, p3

    if-ltz v2, :cond_c

    .line 293
    if-nez p3, :cond_24

    monitor-exit v3

    .line 294
    return v5

    .line 297
    :cond_24
    :try_start_24
    invoke-direct {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read1([CII)I
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_12

    move-result v0

    .line 298
    .local v0, "n":I
    if-gtz v0, :cond_2d

    monitor-exit v3

    return v0

    .line 302
    .local v1, "n1":I
    :cond_2c
    add-int/2addr v0, v1

    .line 299
    .end local v1    # "n1":I
    :cond_2d
    if-ge v0, p3, :cond_41

    :try_start_2f
    iget-object v2, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->ready()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 300
    add-int v2, p2, v0

    sub-int v4, p3, v0

    invoke-direct {p0, p1, v2, v4}, Ljava/io/BufferedReader;->read1([CII)I
    :try_end_3e
    .catchall {:try_start_2f .. :try_end_3e} :catchall_12

    move-result v1

    .line 301
    .restart local v1    # "n1":I
    if-gtz v1, :cond_2c

    .end local v1    # "n1":I
    :cond_41
    monitor-exit v3

    .line 304
    return v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/BufferedReader;->readLine(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method readLine(Z)Ljava/lang/String;
    .registers 16
    .param p1, "ignoreLF"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v13, 0xd

    const/16 v12, 0xa

    const/4 v11, 0x0

    .line 324
    const/4 v4, 0x0

    .line 327
    .local v4, "s":Ljava/lang/StringBuffer;
    iget-object v9, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v9

    .line 328
    :try_start_9
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    .line 329
    if-nez p1, :cond_2e

    iget-boolean v3, p0, Ljava/io/BufferedReader;->skipLF:Z
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_98

    .local v3, "omitLF":Z
    move-object v5, v4

    .line 334
    .end local v3    # "omitLF":Z
    .end local v4    # "s":Ljava/lang/StringBuffer;
    .local v5, "s":Ljava/lang/StringBuffer;
    :goto_11
    :try_start_11
    iget v8, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v10, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v8, v10, :cond_1a

    .line 335
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    .line 336
    :cond_1a
    iget v8, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v10, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v8, v10, :cond_33

    .line 337
    if-eqz v5, :cond_31

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    if-lez v8, :cond_31

    .line 338
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_11 .. :try_end_2b} :catchall_9b

    move-result-object v8

    monitor-exit v9

    return-object v8

    .line 329
    .end local v5    # "s":Ljava/lang/StringBuffer;
    .restart local v4    # "s":Ljava/lang/StringBuffer;
    :cond_2e
    const/4 v3, 0x1

    .local v3, "omitLF":Z
    move-object v5, v4

    .restart local v5    # "s":Ljava/lang/StringBuffer;
    goto :goto_11

    .end local v3    # "omitLF":Z
    .end local v4    # "s":Ljava/lang/StringBuffer;
    :cond_31
    monitor-exit v9

    .line 340
    return-object v11

    .line 342
    :cond_33
    const/4 v1, 0x0

    .line 343
    .local v1, "eol":Z
    const/4 v0, 0x0

    .line 347
    .local v0, "c":C
    if-eqz v3, :cond_45

    :try_start_37
    iget-object v8, p0, Ljava/io/BufferedReader;->cb:[C

    iget v10, p0, Ljava/io/BufferedReader;->nextChar:I

    aget-char v8, v8, v10

    if-ne v8, v12, :cond_45

    .line 348
    iget v8, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 349
    :cond_45
    const/4 v8, 0x0

    iput-boolean v8, p0, Ljava/io/BufferedReader;->skipLF:Z

    .line 350
    const/4 v3, 0x0

    .line 353
    .restart local v3    # "omitLF":Z
    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    .end local v0    # "c":C
    .local v2, "i":I
    :goto_4b
    iget v8, p0, Ljava/io/BufferedReader;->nChars:I

    if-ge v2, v8, :cond_58

    .line 354
    iget-object v8, p0, Ljava/io/BufferedReader;->cb:[C

    aget-char v0, v8, v2

    .line 355
    .local v0, "c":C
    if-eq v0, v12, :cond_57

    if-ne v0, v13, :cond_76

    .line 356
    :cond_57
    const/4 v1, 0x1

    .line 361
    .end local v0    # "c":C
    :cond_58
    iget v6, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 362
    .local v6, "startChar":I
    iput v2, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 364
    if-eqz v1, :cond_85

    .line 366
    if-nez v5, :cond_79

    .line 367
    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Ljava/io/BufferedReader;->cb:[C

    sub-int v10, v2, v6

    invoke-direct {v7, v8, v6, v10}, Ljava/lang/String;-><init>([CII)V

    .line 372
    .local v7, "str":Ljava/lang/String;
    :goto_69
    iget v8, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 373
    if-ne v0, v13, :cond_74

    .line 374
    const/4 v8, 0x1

    iput-boolean v8, p0, Ljava/io/BufferedReader;->skipLF:Z
    :try_end_74
    .catchall {:try_start_37 .. :try_end_74} :catchall_9b

    :cond_74
    monitor-exit v9

    .line 376
    return-object v7

    .line 353
    .end local v6    # "startChar":I
    .end local v7    # "str":Ljava/lang/String;
    .restart local v0    # "c":C
    :cond_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 369
    .end local v0    # "c":C
    .restart local v6    # "startChar":I
    :cond_79
    :try_start_79
    iget-object v8, p0, Ljava/io/BufferedReader;->cb:[C

    sub-int v10, v2, v6

    invoke-virtual {v5, v8, v6, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 370
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "str":Ljava/lang/String;
    goto :goto_69

    .line 379
    .end local v7    # "str":Ljava/lang/String;
    :cond_85
    if-nez v5, :cond_9e

    .line 380
    new-instance v4, Ljava/lang/StringBuffer;

    sget v8, Ljava/io/BufferedReader;->defaultExpectedLineLength:I

    invoke-direct {v4, v8}, Ljava/lang/StringBuffer;-><init>(I)V
    :try_end_8e
    .catchall {:try_start_79 .. :try_end_8e} :catchall_9b

    .line 381
    .end local v5    # "s":Ljava/lang/StringBuffer;
    .local v4, "s":Ljava/lang/StringBuffer;
    :goto_8e
    :try_start_8e
    iget-object v8, p0, Ljava/io/BufferedReader;->cb:[C

    sub-int v10, v2, v6

    invoke-virtual {v4, v8, v6, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_95
    .catchall {:try_start_8e .. :try_end_95} :catchall_98

    move-object v5, v4

    .end local v4    # "s":Ljava/lang/StringBuffer;
    .restart local v5    # "s":Ljava/lang/StringBuffer;
    goto/16 :goto_11

    .line 327
    .end local v1    # "eol":Z
    .end local v2    # "i":I
    .end local v3    # "omitLF":Z
    .end local v5    # "s":Ljava/lang/StringBuffer;
    .end local v6    # "startChar":I
    :catchall_98
    move-exception v8

    :goto_99
    monitor-exit v9

    throw v8

    .restart local v5    # "s":Ljava/lang/StringBuffer;
    :catchall_9b
    move-exception v8

    move-object v4, v5

    .end local v5    # "s":Ljava/lang/StringBuffer;
    .restart local v4    # "s":Ljava/lang/StringBuffer;
    goto :goto_99

    .end local v4    # "s":Ljava/lang/StringBuffer;
    .restart local v1    # "eol":Z
    .restart local v2    # "i":I
    .restart local v3    # "omitLF":Z
    .restart local v5    # "s":Ljava/lang/StringBuffer;
    .restart local v6    # "startChar":I
    :cond_9e
    move-object v4, v5

    .end local v5    # "s":Ljava/lang/StringBuffer;
    .restart local v4    # "s":Ljava/lang/StringBuffer;
    goto :goto_8e
.end method

.method public ready()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 454
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 455
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    .line 461
    iget-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z

    if-eqz v0, :cond_34

    .line 465
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v0, v2, :cond_1b

    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 466
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    .line 468
    :cond_1b
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    if-ge v0, v2, :cond_34

    .line 469
    iget-object v0, p0, Ljava/io/BufferedReader;->cb:[C

    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    aget-char v0, v0, v2

    const/16 v2, 0xa

    if-ne v0, v2, :cond_31

    .line 470
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 471
    :cond_31
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z

    .line 474
    :cond_34
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v0, v2, :cond_42

    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->ready()Z
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_44

    move-result v0

    :goto_40
    monitor-exit v1

    return v0

    :cond_42
    const/4 v0, 0x1

    goto :goto_40

    .line 454
    :catchall_44
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public reset()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 520
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 521
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    .line 522
    iget v0, p0, Ljava/io/BufferedReader;->markedChar:I

    if-gez v0, :cond_1f

    .line 523
    new-instance v2, Ljava/io/IOException;

    iget v0, p0, Ljava/io/BufferedReader;->markedChar:I

    const/4 v3, -0x2

    if-ne v0, v3, :cond_1b

    .line 524
    const-string/jumbo v0, "Mark invalid"

    .line 523
    :goto_14
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_18

    .line 520
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0

    .line 525
    :cond_1b
    :try_start_1b
    const-string/jumbo v0, "Stream not marked"

    goto :goto_14

    .line 526
    :cond_1f
    iget v0, p0, Ljava/io/BufferedReader;->markedChar:I

    iput v0, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 527
    iget-boolean v0, p0, Ljava/io/BufferedReader;->markedSkipLF:Z

    iput-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_18

    monitor-exit v1

    .line 529
    return-void
.end method

.method public skip(J)J
    .registers 14
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 414
    cmp-long v4, p1, v8

    if-gez v4, :cond_f

    .line 415
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "skip value is negative"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 417
    :cond_f
    iget-object v5, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 418
    :try_start_12
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    .line 419
    move-wide v2, p1

    .line 420
    .local v2, "r":J
    :goto_16
    cmp-long v4, v2, v8

    if-lez v4, :cond_29

    .line 421
    iget v4, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v6, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v4, v6, :cond_23

    .line 422
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    .line 423
    :cond_23
    iget v4, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v6, p0, Ljava/io/BufferedReader;->nChars:I
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_5e

    if-lt v4, v6, :cond_2d

    .line 442
    :cond_29
    :goto_29
    sub-long v6, p1, v2

    monitor-exit v5

    return-wide v6

    .line 425
    :cond_2d
    :try_start_2d
    iget-boolean v4, p0, Ljava/io/BufferedReader;->skipLF:Z

    if-eqz v4, :cond_44

    .line 426
    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/io/BufferedReader;->skipLF:Z

    .line 427
    iget-object v4, p0, Ljava/io/BufferedReader;->cb:[C

    iget v6, p0, Ljava/io/BufferedReader;->nextChar:I

    aget-char v4, v4, v6

    const/16 v6, 0xa

    if-ne v4, v6, :cond_44

    .line 428
    iget v4, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 431
    :cond_44
    iget v4, p0, Ljava/io/BufferedReader;->nChars:I

    iget v6, p0, Ljava/io/BufferedReader;->nextChar:I

    sub-int/2addr v4, v6

    int-to-long v0, v4

    .line 432
    .local v0, "d":J
    cmp-long v4, v2, v0

    if-gtz v4, :cond_58

    .line 433
    iget v4, p0, Ljava/io/BufferedReader;->nextChar:I

    int-to-long v6, v4

    add-long/2addr v6, v2

    long-to-int v4, v6

    iput v4, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 434
    const-wide/16 v2, 0x0

    .line 435
    goto :goto_29

    .line 438
    :cond_58
    sub-long/2addr v2, v0

    .line 439
    iget v4, p0, Ljava/io/BufferedReader;->nChars:I

    iput v4, p0, Ljava/io/BufferedReader;->nextChar:I
    :try_end_5d
    .catchall {:try_start_2d .. :try_end_5d} :catchall_5e

    goto :goto_16

    .line 417
    .end local v0    # "d":J
    .end local v2    # "r":J
    :catchall_5e
    move-exception v4

    monitor-exit v5

    throw v4
.end method
