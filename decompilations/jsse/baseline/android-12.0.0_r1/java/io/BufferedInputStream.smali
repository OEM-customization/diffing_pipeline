.class public Ljava/io/BufferedInputStream;
.super Ljava/io/FilterInputStream;
.source "BufferedInputStream.java"


# static fields
.field private static final greylist-max-o DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final greylist-max-o MAX_BUFFER_SIZE:I = 0x7ffffff7

.field private static final greylist-max-o bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "Ljava/io/BufferedInputStream;",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field protected volatile whitelist test-api buf:[B

.field protected whitelist test-api count:I

.field protected whitelist test-api marklimit:I

.field protected whitelist test-api markpos:I

.field protected whitelist test-api pos:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 79
    const-class v0, Ljava/io/BufferedInputStream;

    const-class v1, [B

    .line 81
    const-string v2, "buf"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Ljava/io/BufferedInputStream;->bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 79
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 185
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 186
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/io/InputStream;I)V
    .registers 5
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .line 201
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 202
    if-lez p2, :cond_d

    .line 205
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 206
    return-void

    .line 203
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o fill()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v0

    .line 217
    .local v0, "buffer":[B
    iget v1, p0, Ljava/io/BufferedInputStream;->markpos:I

    const/4 v2, 0x0

    if-gez v1, :cond_c

    .line 218
    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    goto :goto_59

    .line 219
    :cond_c
    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    array-length v4, v0

    if-lt v3, v4, :cond_59

    .line 220
    if-lez v1, :cond_1c

    .line 221
    sub-int/2addr v3, v1

    .line 222
    .local v3, "sz":I
    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iput v3, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 224
    iput v2, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 225
    .end local v3    # "sz":I
    goto :goto_59

    :cond_1c
    array-length v1, v0

    iget v4, p0, Ljava/io/BufferedInputStream;->marklimit:I

    if-lt v1, v4, :cond_27

    .line 226
    const/4 v1, -0x1

    iput v1, p0, Ljava/io/BufferedInputStream;->markpos:I

    .line 227
    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    goto :goto_59

    .line 228
    :cond_27
    array-length v1, v0

    const v5, 0x7ffffff7

    if-ge v1, v5, :cond_51

    .line 231
    sub-int v1, v5, v3

    if-gt v3, v1, :cond_34

    .line 232
    mul-int/lit8 v5, v3, 0x2

    goto :goto_35

    :cond_34
    nop

    :goto_35
    move v1, v5

    .line 233
    .local v1, "nsz":I
    if-le v1, v4, :cond_3a

    .line 234
    iget v1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 235
    :cond_3a
    new-array v4, v1, [B

    .line 236
    .local v4, "nbuf":[B
    invoke-static {v0, v2, v4, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    sget-object v2, Ljava/io/BufferedInputStream;->bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 245
    move-object v0, v4

    goto :goto_59

    .line 243
    :cond_49
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Stream closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    .end local v1    # "nsz":I
    .end local v4    # "nbuf":[B
    :cond_51
    new-instance v1, Ljava/lang/OutOfMemoryError;

    const-string v2, "Required array size too large"

    invoke-direct {v1, v2}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_59
    :goto_59
    iget v1, p0, Ljava/io/BufferedInputStream;->pos:I

    iput v1, p0, Ljava/io/BufferedInputStream;->count:I

    .line 248
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v1

    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    array-length v3, v0

    sub-int/2addr v3, v2

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 249
    .local v1, "n":I
    if-lez v1, :cond_70

    .line 250
    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/BufferedInputStream;->count:I

    .line 251
    :cond_70
    return-void
.end method

.method private greylist-max-o getBufIfOpen()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    .line 171
    .local v0, "buffer":[B
    if-eqz v0, :cond_5

    .line 173
    return-object v0

    .line 172
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o getInIfOpen()Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 160
    .local v0, "input":Ljava/io/InputStream;
    if-eqz v0, :cond_5

    .line 162
    return-object v0

    .line 161
    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o read1([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget v0, p0, Ljava/io/BufferedInputStream;->count:I

    iget v1, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 280
    .local v0, "avail":I
    if-gtz v0, :cond_28

    .line 285
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v1

    array-length v1, v1

    if-lt p3, v1, :cond_1b

    iget v1, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-gez v1, :cond_1b

    .line 286
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    return v1

    .line 288
    :cond_1b
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fill()V

    .line 289
    iget v1, p0, Ljava/io/BufferedInputStream;->count:I

    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int v0, v1, v2

    .line 290
    if-gtz v0, :cond_28

    const/4 v1, -0x1

    return v1

    .line 292
    :cond_28
    if-ge v0, p3, :cond_2c

    move v1, v0

    goto :goto_2d

    :cond_2c
    move v1, p3

    .line 293
    .local v1, "cnt":I
    :goto_2d
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v2

    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 294
    iget v2, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/2addr v2, v1

    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    .line 295
    return v1
.end method


# virtual methods
.method public declared-synchronized whitelist test-api available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 411
    :try_start_1
    iget v0, p0, Ljava/io/BufferedInputStream;->count:I

    iget v1, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 412
    .local v0, "n":I
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1a

    .line 413
    .local v1, "avail":I
    const v2, 0x7fffffff

    sub-int v3, v2, v1

    if-le v0, v3, :cond_16

    .line 414
    goto :goto_18

    .line 415
    :cond_16
    add-int v2, v0, v1

    .line 413
    :goto_18
    monitor-exit p0

    return v2

    .line 410
    .end local v0    # "n":I
    .end local v1    # "avail":I
    .end local p0    # "this":Ljava/io/BufferedInputStream;
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 480
    :cond_0
    iget-object v0, p0, Ljava/io/BufferedInputStream;->buf:[B

    move-object v1, v0

    .local v1, "buffer":[B
    if-eqz v0, :cond_18

    .line 481
    sget-object v0, Ljava/io/BufferedInputStream;->bufUpdater:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 483
    .local v0, "input":Ljava/io/InputStream;
    iput-object v2, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 484
    if-eqz v0, :cond_17

    .line 485
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 486
    :cond_17
    return-void

    .line 490
    .end local v0    # "input":Ljava/io/InputStream;
    :cond_18
    return-void
.end method

.method public declared-synchronized whitelist test-api mark(I)V
    .registers 3
    .param p1, "readlimit"    # I

    monitor-enter p0

    .line 427
    :try_start_1
    iput p1, p0, Ljava/io/BufferedInputStream;->marklimit:I

    .line 428
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iput v0, p0, Ljava/io/BufferedInputStream;->markpos:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 429
    monitor-exit p0

    return-void

    .line 426
    .end local p0    # "this":Ljava/io/BufferedInputStream;
    .end local p1    # "readlimit":I
    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist test-api markSupported()Z
    .registers 2

    .line 466
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized whitelist test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 266
    :try_start_1
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v1, p0, Ljava/io/BufferedInputStream;->count:I

    if-lt v0, v1, :cond_13

    .line 267
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fill()V

    .line 268
    iget v0, p0, Ljava/io/BufferedInputStream;->pos:I

    iget v1, p0, Ljava/io/BufferedInputStream;->count:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_23

    if-lt v0, v1, :cond_13

    .line 269
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 271
    .end local p0    # "this":Ljava/io/BufferedInputStream;
    :cond_13
    :try_start_13
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    move-result-object v0

    iget v1, p0, Ljava/io/BufferedInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/io/BufferedInputStream;->pos:I

    aget-byte v0, v0, v1
    :try_end_1f
    .catchall {:try_start_13 .. :try_end_1f} :catchall_23

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    .line 265
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api read([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 338
    :try_start_1
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    .line 339
    or-int v0, p2, p3

    add-int v1, p2, p3

    or-int/2addr v0, v1

    array-length v1, p1
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_3f

    add-int v2, p2, p3

    sub-int/2addr v1, v2

    or-int/2addr v0, v1

    if-ltz v0, :cond_39

    .line 341
    if-nez p3, :cond_15

    .line 342
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 345
    :cond_15
    const/4 v0, 0x0

    .line 347
    .local v0, "n":I
    :goto_16
    add-int v1, p2, v0

    sub-int v2, p3, v0

    :try_start_1a
    invoke-direct {p0, p1, v1, v2}, Ljava/io/BufferedInputStream;->read1([BII)I

    move-result v1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_3f

    .line 348
    .local v1, "nread":I
    if-gtz v1, :cond_27

    .line 349
    if-nez v0, :cond_24

    move v2, v1

    goto :goto_25

    :cond_24
    move v2, v0

    :goto_25
    monitor-exit p0

    return v2

    .line 350
    :cond_27
    add-int/2addr v0, v1

    .line 351
    if-lt v0, p3, :cond_2c

    .line 352
    monitor-exit p0

    return v0

    .line 354
    :cond_2c
    :try_start_2c
    iget-object v2, p0, Ljava/io/BufferedInputStream;->in:Ljava/io/InputStream;

    .line 355
    .local v2, "input":Ljava/io/InputStream;
    if-eqz v2, :cond_38

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_3f

    if-gtz v3, :cond_38

    .line 356
    monitor-exit p0

    return v0

    .line 357
    .end local v1    # "nread":I
    .end local v2    # "input":Ljava/io/InputStream;
    .end local p0    # "this":Ljava/io/BufferedInputStream;
    :cond_38
    goto :goto_16

    .line 340
    .end local v0    # "n":I
    :cond_39
    :try_start_39
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_3f
    .catchall {:try_start_39 .. :try_end_3f} :catchall_3f

    .line 337
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized whitelist test-api reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 448
    :try_start_1
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B

    .line 449
    iget v0, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-ltz v0, :cond_c

    .line 451
    iput v0, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_14

    .line 452
    monitor-exit p0

    return-void

    .line 450
    .end local p0    # "this":Ljava/io/BufferedInputStream;
    :cond_c
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Resetting to invalid mark"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_14

    .line 447
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized whitelist test-api skip(J)J
    .registers 9
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 370
    :try_start_1
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getBufIfOpen()[B
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_43

    .line 371
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_c

    .line 372
    monitor-exit p0

    return-wide v0

    .line 374
    :cond_c
    :try_start_c
    iget v2, p0, Ljava/io/BufferedInputStream;->count:I

    iget v3, p0, Ljava/io/BufferedInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 376
    .local v2, "avail":J
    cmp-long v4, v2, v0

    if-gtz v4, :cond_33

    .line 378
    iget v4, p0, Ljava/io/BufferedInputStream;->markpos:I

    if-gez v4, :cond_24

    .line 379
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->getInIfOpen()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_43

    monitor-exit p0

    return-wide v0

    .line 382
    .end local p0    # "this":Ljava/io/BufferedInputStream;
    :cond_24
    :try_start_24
    invoke-direct {p0}, Ljava/io/BufferedInputStream;->fill()V

    .line 383
    iget v4, p0, Ljava/io/BufferedInputStream;->count:I

    iget v5, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_43

    sub-int/2addr v4, v5

    int-to-long v2, v4

    .line 384
    cmp-long v4, v2, v0

    if-gtz v4, :cond_33

    .line 385
    monitor-exit p0

    return-wide v0

    .line 388
    :cond_33
    cmp-long v0, v2, p1

    if-gez v0, :cond_39

    move-wide v0, v2

    goto :goto_3a

    :cond_39
    move-wide v0, p1

    .line 389
    .local v0, "skipped":J
    :goto_3a
    :try_start_3a
    iget v4, p0, Ljava/io/BufferedInputStream;->pos:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    long-to-int v4, v4

    iput v4, p0, Ljava/io/BufferedInputStream;->pos:I
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_43

    .line 390
    monitor-exit p0

    return-wide v0

    .line 369
    .end local v0    # "skipped":J
    .end local v2    # "avail":J
    .end local p1    # "n":J
    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method
