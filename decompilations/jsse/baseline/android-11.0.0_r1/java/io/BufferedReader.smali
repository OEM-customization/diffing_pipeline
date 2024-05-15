.class public Ljava/io/BufferedReader;
.super Ljava/io/Reader;
.source "BufferedReader.java"


# static fields
.field private static final greylist-max-o INVALIDATED:I = -0x2

.field private static final greylist-max-o UNMARKED:I = -0x1

.field private static greylist-max-o defaultCharBufferSize:I

.field private static greylist-max-o defaultExpectedLineLength:I


# instance fields
.field private greylist-max-o cb:[C

.field private greylist-max-o in:Ljava/io/Reader;

.field private greylist-max-o markedChar:I

.field private greylist-max-o markedSkipLF:Z

.field private greylist-max-o nChars:I

.field private greylist-max-o nextChar:I

.field private greylist-max-o readAheadLimit:I

.field private greylist-max-o skipLF:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 89
    const/16 v0, 0x2000

    sput v0, Ljava/io/BufferedReader;->defaultCharBufferSize:I

    .line 90
    const/16 v0, 0x50

    sput v0, Ljava/io/BufferedReader;->defaultExpectedLineLength:I

    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/Reader;)V
    .registers 3
    .param p1, "in"    # Ljava/io/Reader;

    .line 117
    sget v0, Ljava/io/BufferedReader;->defaultCharBufferSize:I

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 118
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/Reader;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "sz"    # I

    .line 102
    invoke-direct {p0, p1}, Ljava/io/Reader;-><init>(Ljava/lang/Object;)V

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/BufferedReader;->markedChar:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    .line 84
    iput-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z

    .line 87
    iput-boolean v0, p0, Ljava/io/BufferedReader;->markedSkipLF:Z

    .line 103
    if-lez p2, :cond_1a

    .line 105
    iput-object p1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    .line 106
    new-array v1, p2, [C

    iput-object v1, p0, Ljava/io/BufferedReader;->cb:[C

    .line 107
    iput v0, p0, Ljava/io/BufferedReader;->nChars:I

    iput v0, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 108
    return-void

    .line 104
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

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

    .line 122
    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    if-eqz v0, :cond_5

    .line 124
    return-void

    .line 123
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o fill()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget v0, p0, Ljava/io/BufferedReader;->markedChar:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_7

    .line 133
    const/4 v0, 0x0

    .local v0, "dst":I
    goto :goto_3c

    .line 136
    .end local v0    # "dst":I
    :cond_7
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    sub-int/2addr v1, v0

    .line 137
    .local v1, "delta":I
    iget v2, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    const/4 v3, 0x0

    if-lt v1, v2, :cond_16

    .line 139
    const/4 v0, -0x2

    iput v0, p0, Ljava/io/BufferedReader;->markedChar:I

    .line 140
    iput v3, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    .line 141
    const/4 v0, 0x0

    .restart local v0    # "dst":I
    goto :goto_3c

    .line 143
    .end local v0    # "dst":I
    :cond_16
    iget-object v4, p0, Ljava/io/BufferedReader;->cb:[C

    array-length v5, v4

    if-gt v2, v5, :cond_22

    .line 145
    invoke-static {v4, v0, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iput v3, p0, Ljava/io/BufferedReader;->markedChar:I

    .line 147
    move v0, v1

    .restart local v0    # "dst":I
    goto :goto_38

    .line 156
    .end local v0    # "dst":I
    :cond_22
    array-length v0, v4

    mul-int/lit8 v0, v0, 0x2

    .line 157
    .local v0, "nlength":I
    if-le v0, v2, :cond_29

    .line 158
    iget v0, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    .line 160
    :cond_29
    new-array v2, v0, [C

    .line 161
    .local v2, "ncb":[C
    iget-object v4, p0, Ljava/io/BufferedReader;->cb:[C

    iget v5, p0, Ljava/io/BufferedReader;->markedChar:I

    invoke-static {v4, v5, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 162
    iput-object v2, p0, Ljava/io/BufferedReader;->cb:[C

    .line 163
    iput v3, p0, Ljava/io/BufferedReader;->markedChar:I

    .line 164
    move v3, v1

    move v0, v3

    .line 166
    .end local v2    # "ncb":[C
    .local v0, "dst":I
    :goto_38
    iput v1, p0, Ljava/io/BufferedReader;->nChars:I

    iput v1, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 172
    .end local v1    # "delta":I
    :goto_3c
    iget-object v1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    iget-object v2, p0, Ljava/io/BufferedReader;->cb:[C

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    .line 173
    .local v1, "n":I
    if-eqz v1, :cond_51

    .line 174
    if-lez v1, :cond_50

    .line 175
    add-int v2, v0, v1

    iput v2, p0, Ljava/io/BufferedReader;->nChars:I

    .line 176
    iput v0, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 178
    :cond_50
    return-void

    .line 173
    :cond_51
    goto :goto_3c
.end method

.method private greylist-max-o read1([CII)I
    .registers 9
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v1, p0, Ljava/io/BufferedReader;->nChars:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_1e

    .line 220
    iget-object v0, p0, Ljava/io/BufferedReader;->cb:[C

    array-length v0, v0

    if-lt p3, v0, :cond_1b

    iget v0, p0, Ljava/io/BufferedReader;->markedChar:I

    if-gt v0, v2, :cond_1b

    iget-boolean v0, p0, Ljava/io/BufferedReader;->skipLF:Z

    if-nez v0, :cond_1b

    .line 221
    iget-object v0, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    move-result v0

    return v0

    .line 223
    :cond_1b
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    .line 225
    :cond_1e
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v1, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v0, v1, :cond_25

    return v2

    .line 226
    :cond_25
    iget-boolean v3, p0, Ljava/io/BufferedReader;->skipLF:Z

    if-eqz v3, :cond_44

    .line 227
    const/4 v3, 0x0

    iput-boolean v3, p0, Ljava/io/BufferedReader;->skipLF:Z

    .line 228
    iget-object v3, p0, Ljava/io/BufferedReader;->cb:[C

    aget-char v3, v3, v0

    const/16 v4, 0xa

    if-ne v3, v4, :cond_44

    .line 229
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 230
    if-lt v0, v1, :cond_3d

    .line 231
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    .line 232
    :cond_3d
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v1, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v0, v1, :cond_44

    .line 233
    return v2

    .line 236
    :cond_44
    iget v0, p0, Ljava/io/BufferedReader;->nChars:I

    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 237
    .local v0, "n":I
    iget-object v1, p0, Ljava/io/BufferedReader;->cb:[C

    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 238
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/2addr v1, v0

    iput v1, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 239
    return v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 532
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_3
    iget-object v1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    if-nez v1, :cond_9

    .line 534
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1d

    return-void

    .line 536
    :cond_9
    const/4 v1, 0x0

    :try_start_a
    iget-object v2, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_16

    .line 538
    :try_start_f
    iput-object v1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    .line 539
    iput-object v1, p0, Ljava/io/BufferedReader;->cb:[C

    .line 540
    nop

    .line 541
    monitor-exit v0

    .line 542
    return-void

    .line 538
    :catchall_16
    move-exception v2

    iput-object v1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    .line 539
    iput-object v1, p0, Ljava/io/BufferedReader;->cb:[C

    .line 540
    nop

    .end local p0    # "this":Ljava/io/BufferedReader;
    throw v2

    .line 541
    .restart local p0    # "this":Ljava/io/BufferedReader;
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_f .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method public whitelist core-platform-api test-api lines()Ljava/util/stream/Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 573
    new-instance v0, Ljava/io/BufferedReader$1;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader$1;-><init>(Ljava/io/BufferedReader;)V

    .line 601
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/16 v1, 0x110

    invoke-static {v0, v1}, Ljava/util/Spliterators;->spliteratorUnknownSize(Ljava/util/Iterator;I)Ljava/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v1

    return-object v1
.end method

.method public whitelist core-platform-api test-api mark(I)V
    .registers 4
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 502
    if-ltz p1, :cond_17

    .line 505
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_5
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    .line 507
    iput p1, p0, Ljava/io/BufferedReader;->readAheadLimit:I

    .line 508
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    iput v1, p0, Ljava/io/BufferedReader;->markedChar:I

    .line 509
    iget-boolean v1, p0, Ljava/io/BufferedReader;->skipLF:Z

    iput-boolean v1, p0, Ljava/io/BufferedReader;->markedSkipLF:Z

    .line 510
    monitor-exit v0

    .line 511
    return-void

    .line 510
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1

    .line 503
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Read-ahead limit < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api markSupported()Z
    .registers 2

    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist core-platform-api test-api read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 190
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    .line 192
    :goto_6
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v1, v2, :cond_18

    .line 193
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    .line 194
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v2, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v1, v2, :cond_18

    .line 195
    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 197
    :cond_18
    iget-boolean v1, p0, Ljava/io/BufferedReader;->skipLF:Z

    if-eqz v1, :cond_30

    .line 198
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/io/BufferedReader;->skipLF:Z

    .line 199
    iget-object v1, p0, Ljava/io/BufferedReader;->cb:[C

    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    aget-char v1, v1, v2

    const/16 v2, 0xa

    if-ne v1, v2, :cond_30

    .line 200
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 201
    goto :goto_6

    .line 204
    :cond_30
    iget-object v1, p0, Ljava/io/BufferedReader;->cb:[C

    iget v2, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Ljava/io/BufferedReader;->nextChar:I

    aget-char v1, v1, v2

    monitor-exit v0

    return v1

    .line 206
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public whitelist core-platform-api test-api read([CII)I
    .registers 8
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    .line 290
    if-ltz p2, :cond_3c

    array-length v1, p1

    if-gt p2, v1, :cond_3c

    if-ltz p3, :cond_3c

    add-int v1, p2, p3

    array-length v2, p1

    if-gt v1, v2, :cond_3c

    add-int v1, p2, p3

    if-ltz v1, :cond_3c

    .line 293
    if-nez p3, :cond_1b

    .line 294
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 297
    :cond_1b
    invoke-direct {p0, p1, p2, p3}, Ljava/io/BufferedReader;->read1([CII)I

    move-result v1

    .line 298
    .local v1, "n":I
    if-gtz v1, :cond_23

    monitor-exit v0

    return v1

    .line 299
    :cond_23
    :goto_23
    if-ge v1, p3, :cond_3a

    iget-object v2, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v2}, Ljava/io/Reader;->ready()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 300
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-direct {p0, p1, v2, v3}, Ljava/io/BufferedReader;->read1([CII)I

    move-result v2

    .line 301
    .local v2, "n1":I
    if-gtz v2, :cond_38

    goto :goto_3a

    .line 302
    :cond_38
    add-int/2addr v1, v2

    .line 303
    .end local v2    # "n1":I
    goto :goto_23

    .line 304
    :cond_3a
    :goto_3a
    monitor-exit v0

    return v1

    .line 292
    .end local v1    # "n":I
    :cond_3c
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .end local p0    # "this":Ljava/io/BufferedReader;
    .end local p1    # "cbuf":[C
    .end local p2    # "off":I
    .end local p3    # "len":I
    throw v1

    .line 305
    .restart local p0    # "this":Ljava/io/BufferedReader;
    .restart local p1    # "cbuf":[C
    .restart local p2    # "off":I
    .restart local p3    # "len":I
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method public whitelist core-platform-api test-api readLine()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/BufferedReader;->readLine(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o readLine(Z)Ljava/lang/String;
    .registers 14
    .param p1, "ignoreLF"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    const/4 v0, 0x0

    .line 327
    .local v0, "s":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 328
    :try_start_4
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    .line 329
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_12

    iget-boolean v4, p0, Ljava/io/BufferedReader;->skipLF:Z

    if-eqz v4, :cond_10

    goto :goto_12

    :cond_10
    move v4, v2

    goto :goto_13

    :cond_12
    :goto_12
    move v4, v3

    .line 334
    .local v4, "omitLF":Z
    :goto_13
    iget v5, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v6, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v5, v6, :cond_1c

    .line 335
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    .line 336
    :cond_1c
    iget v5, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v6, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v5, v6, :cond_33

    .line 337
    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lez v2, :cond_30

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    monitor-exit v1

    return-object v2

    .line 340
    :cond_30
    const/4 v2, 0x0

    monitor-exit v1

    return-object v2

    .line 342
    :cond_33
    const/4 v5, 0x0

    .line 343
    .local v5, "eol":Z
    const/4 v6, 0x0

    .line 347
    .local v6, "c":C
    const/16 v7, 0xa

    if-eqz v4, :cond_46

    iget-object v8, p0, Ljava/io/BufferedReader;->cb:[C

    iget v9, p0, Ljava/io/BufferedReader;->nextChar:I

    aget-char v8, v8, v9

    if-ne v8, v7, :cond_46

    .line 348
    iget v8, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/2addr v8, v3

    iput v8, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 349
    :cond_46
    iput-boolean v2, p0, Ljava/io/BufferedReader;->skipLF:Z

    .line 350
    const/4 v4, 0x0

    .line 353
    iget v8, p0, Ljava/io/BufferedReader;->nextChar:I

    .local v8, "i":I
    :goto_4b
    iget v9, p0, Ljava/io/BufferedReader;->nChars:I

    const/16 v10, 0xd

    if-ge v8, v9, :cond_5f

    .line 354
    iget-object v9, p0, Ljava/io/BufferedReader;->cb:[C

    aget-char v9, v9, v8

    move v6, v9

    .line 355
    if-eq v6, v7, :cond_5e

    if-ne v6, v10, :cond_5b

    goto :goto_5e

    .line 353
    :cond_5b
    add-int/lit8 v8, v8, 0x1

    goto :goto_4b

    .line 356
    :cond_5e
    :goto_5e
    const/4 v5, 0x1

    .line 361
    :cond_5f
    iget v7, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 362
    .local v7, "startChar":I
    iput v8, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 364
    if-eqz v5, :cond_87

    .line 366
    if-nez v0, :cond_71

    .line 367
    new-instance v2, Ljava/lang/String;

    iget-object v9, p0, Ljava/io/BufferedReader;->cb:[C

    sub-int v11, v8, v7

    invoke-direct {v2, v9, v7, v11}, Ljava/lang/String;-><init>([CII)V

    .local v2, "str":Ljava/lang/String;
    goto :goto_7c

    .line 369
    .end local v2    # "str":Ljava/lang/String;
    :cond_71
    iget-object v2, p0, Ljava/io/BufferedReader;->cb:[C

    sub-int v9, v8, v7

    invoke-virtual {v0, v2, v7, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 370
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 372
    .restart local v2    # "str":Ljava/lang/String;
    :goto_7c
    iget v9, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/2addr v9, v3

    iput v9, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 373
    if-ne v6, v10, :cond_85

    .line 374
    iput-boolean v3, p0, Ljava/io/BufferedReader;->skipLF:Z

    .line 376
    :cond_85
    monitor-exit v1

    return-object v2

    .line 379
    .end local v2    # "str":Ljava/lang/String;
    :cond_87
    if-nez v0, :cond_91

    .line 380
    new-instance v9, Ljava/lang/StringBuffer;

    sget v10, Ljava/io/BufferedReader;->defaultExpectedLineLength:I

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v0, v9

    .line 381
    :cond_91
    iget-object v9, p0, Ljava/io/BufferedReader;->cb:[C

    sub-int v10, v8, v7

    invoke-virtual {v0, v9, v7, v10}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 382
    nop

    .end local v5    # "eol":Z
    .end local v6    # "c":C
    .end local v8    # "i":I
    goto/16 :goto_13

    .line 383
    .end local v4    # "omitLF":Z
    .end local v7    # "startChar":I
    :catchall_9b
    move-exception v2

    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_4 .. :try_end_9d} :catchall_9b

    throw v2
.end method

.method public whitelist core-platform-api test-api ready()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    .line 461
    iget-boolean v1, p0, Ljava/io/BufferedReader;->skipLF:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_34

    .line 465
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v4, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v1, v4, :cond_1d

    iget-object v1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->ready()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 466
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    .line 468
    :cond_1d
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v4, p0, Ljava/io/BufferedReader;->nChars:I

    if-ge v1, v4, :cond_34

    .line 469
    iget-object v1, p0, Ljava/io/BufferedReader;->cb:[C

    iget v4, p0, Ljava/io/BufferedReader;->nextChar:I

    aget-char v1, v1, v4

    const/16 v4, 0xa

    if-ne v1, v4, :cond_32

    .line 470
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/2addr v1, v3

    iput v1, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 471
    :cond_32
    iput-boolean v2, p0, Ljava/io/BufferedReader;->skipLF:Z

    .line 474
    :cond_34
    iget v1, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v4, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v1, v4, :cond_42

    iget-object v1, p0, Ljava/io/BufferedReader;->in:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->ready()Z

    move-result v1

    if-eqz v1, :cond_43

    :cond_42
    move v2, v3

    :cond_43
    monitor-exit v0

    return v2

    .line 475
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public whitelist core-platform-api test-api reset()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    iget-object v0, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_3
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    .line 522
    iget v1, p0, Ljava/io/BufferedReader;->markedChar:I

    if-gez v1, :cond_1a

    .line 523
    new-instance v1, Ljava/io/IOException;

    iget v2, p0, Ljava/io/BufferedReader;->markedChar:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_14

    .line 524
    const-string v2, "Mark invalid"

    goto :goto_16

    .line 525
    :cond_14
    const-string v2, "Stream not marked"

    :goto_16
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/io/BufferedReader;
    throw v1

    .line 526
    .restart local p0    # "this":Ljava/io/BufferedReader;
    :cond_1a
    iget v1, p0, Ljava/io/BufferedReader;->markedChar:I

    iput v1, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 527
    iget-boolean v1, p0, Ljava/io/BufferedReader;->markedSkipLF:Z

    iput-boolean v1, p0, Ljava/io/BufferedReader;->skipLF:Z

    .line 528
    monitor-exit v0

    .line 529
    return-void

    .line 528
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public whitelist core-platform-api test-api skip(J)J
    .registers 11
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_59

    .line 417
    iget-object v2, p0, Ljava/io/BufferedReader;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 418
    :try_start_9
    invoke-direct {p0}, Ljava/io/BufferedReader;->ensureOpen()V

    .line 419
    move-wide v3, p1

    .line 420
    .local v3, "r":J
    :goto_d
    cmp-long v5, v3, v0

    if-lez v5, :cond_52

    .line 421
    iget v5, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v6, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v5, v6, :cond_1a

    .line 422
    invoke-direct {p0}, Ljava/io/BufferedReader;->fill()V

    .line 423
    :cond_1a
    iget v5, p0, Ljava/io/BufferedReader;->nextChar:I

    iget v6, p0, Ljava/io/BufferedReader;->nChars:I

    if-lt v5, v6, :cond_21

    .line 424
    goto :goto_52

    .line 425
    :cond_21
    iget-boolean v5, p0, Ljava/io/BufferedReader;->skipLF:Z

    if-eqz v5, :cond_38

    .line 426
    const/4 v5, 0x0

    iput-boolean v5, p0, Ljava/io/BufferedReader;->skipLF:Z

    .line 427
    iget-object v5, p0, Ljava/io/BufferedReader;->cb:[C

    iget v6, p0, Ljava/io/BufferedReader;->nextChar:I

    aget-char v5, v5, v6

    const/16 v6, 0xa

    if-ne v5, v6, :cond_38

    .line 428
    iget v5, p0, Ljava/io/BufferedReader;->nextChar:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 431
    :cond_38
    iget v5, p0, Ljava/io/BufferedReader;->nChars:I

    iget v6, p0, Ljava/io/BufferedReader;->nextChar:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    .line 432
    .local v5, "d":J
    cmp-long v7, v3, v5

    if-gtz v7, :cond_4c

    .line 433
    iget v0, p0, Ljava/io/BufferedReader;->nextChar:I

    int-to-long v0, v0

    add-long/2addr v0, v3

    long-to-int v0, v0

    iput v0, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 434
    const-wide/16 v3, 0x0

    .line 435
    goto :goto_52

    .line 438
    :cond_4c
    sub-long/2addr v3, v5

    .line 439
    iget v7, p0, Ljava/io/BufferedReader;->nChars:I

    iput v7, p0, Ljava/io/BufferedReader;->nextChar:I

    .line 441
    .end local v5    # "d":J
    goto :goto_d

    .line 442
    :cond_52
    :goto_52
    sub-long v0, p1, v3

    monitor-exit v2

    return-wide v0

    .line 443
    .end local v3    # "r":J
    :catchall_56
    move-exception v0

    monitor-exit v2
    :try_end_58
    .catchall {:try_start_9 .. :try_end_58} :catchall_56

    throw v0

    .line 415
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "skip value is negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
