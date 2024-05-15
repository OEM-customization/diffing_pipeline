.class Ljava/util/jar/Manifest$FastInputStream;
.super Ljava/io/FilterInputStream;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/jar/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FastInputStream"
.end annotation


# instance fields
.field private greylist-max-o buf:[B

.field private greylist-max-o count:I

.field private greylist-max-o pos:I


# direct methods
.method constructor greylist-max-o <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 327
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Ljava/util/jar/Manifest$FastInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 328
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/io/InputStream;I)V
    .registers 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "size"    # I

    .line 331
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 323
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    .line 324
    iput v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    .line 332
    new-array v0, p2, [B

    iput-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    .line 333
    return-void
.end method

.method private greylist-max-o fill()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    iput v0, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    .line 441
    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    array-length v3, v2

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 442
    .local v0, "n":I
    if-lez v0, :cond_12

    .line 443
    iput v0, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    .line 445
    :cond_12
    return-void
.end method


# virtual methods
.method public whitelist core-platform-api test-api available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 428
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_e

    .line 433
    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    .line 435
    iput-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    .line 437
    :cond_e
    return-void
.end method

.method public greylist-max-o peek()B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    if-ne v0, v1, :cond_9

    .line 402
    invoke-direct {p0}, Ljava/util/jar/Manifest$FastInputStream;->fill()V

    .line 403
    :cond_9
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    if-ne v0, v1, :cond_11

    .line 404
    const/4 v0, -0x1

    return v0

    .line 405
    :cond_11
    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    aget-byte v0, v1, v0

    return v0
.end method

.method public whitelist core-platform-api test-api read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    if-lt v0, v1, :cond_11

    .line 337
    invoke-direct {p0}, Ljava/util/jar/Manifest$FastInputStream;->fill()V

    .line 338
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    if-lt v0, v1, :cond_11

    .line 339
    const/4 v0, -0x1

    return v0

    .line 342
    :cond_11
    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    aget-byte v0, v0, v1

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api read([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int/2addr v0, v1

    .line 347
    .local v0, "avail":I
    if-gtz v0, :cond_20

    .line 348
    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    array-length v1, v1

    if-lt p3, v1, :cond_13

    .line 349
    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    return v1

    .line 351
    :cond_13
    invoke-direct {p0}, Ljava/util/jar/Manifest$FastInputStream;->fill()V

    .line 352
    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v2, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int v0, v1, v2

    .line 353
    if-gtz v0, :cond_20

    .line 354
    const/4 v1, -0x1

    return v1

    .line 357
    :cond_20
    if-le p3, v0, :cond_23

    .line 358
    move p3, v0

    .line 360
    :cond_23
    iget-object v1, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    iget v2, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    iget v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    add-int/2addr v1, p3

    iput v1, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    .line 362
    return p3
.end method

.method public greylist-max-o readLine([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/util/jar/Manifest$FastInputStream;->readLine([BII)I

    move-result v0

    return v0
.end method

.method public greylist-max-o readLine([BII)I
    .registers 12
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->buf:[B

    .line 371
    .local v0, "tbuf":[B
    const/4 v1, 0x0

    .line 372
    .local v1, "total":I
    :goto_3
    if-ge v1, p3, :cond_42

    .line 373
    iget v2, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v3, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int/2addr v2, v3

    .line 374
    .local v2, "avail":I
    if-gtz v2, :cond_19

    .line 375
    invoke-direct {p0}, Ljava/util/jar/Manifest$FastInputStream;->fill()V

    .line 376
    iget v3, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v4, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int v2, v3, v4

    .line 377
    if-gtz v2, :cond_19

    .line 378
    const/4 v3, -0x1

    return v3

    .line 381
    :cond_19
    sub-int v3, p3, v1

    .line 382
    .local v3, "n":I
    if-le v3, v2, :cond_1e

    .line 383
    move v3, v2

    .line 385
    :cond_1e
    iget v4, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    .line 386
    .local v4, "tpos":I
    add-int v5, v4, v3

    .line 387
    .local v5, "maxpos":I
    :goto_22
    const/16 v6, 0xa

    if-ge v4, v5, :cond_2f

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "tpos":I
    .local v7, "tpos":I
    aget-byte v4, v0, v4

    if-eq v4, v6, :cond_2e

    move v4, v7

    goto :goto_22

    :cond_2e
    move v4, v7

    .line 388
    .end local v7    # "tpos":I
    .restart local v4    # "tpos":I
    :cond_2f
    iget v7, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int v3, v4, v7

    .line 389
    invoke-static {v0, v7, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 390
    add-int/2addr p2, v3

    .line 391
    add-int/2addr v1, v3

    .line 392
    iput v4, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    .line 393
    add-int/lit8 v7, v4, -0x1

    aget-byte v7, v0, v7

    if-ne v7, v6, :cond_41

    .line 394
    goto :goto_42

    .line 396
    .end local v2    # "avail":I
    .end local v3    # "n":I
    .end local v4    # "tpos":I
    .end local v5    # "maxpos":I
    :cond_41
    goto :goto_3

    .line 397
    :cond_42
    :goto_42
    return v1
.end method

.method public whitelist core-platform-api test-api skip(J)J
    .registers 7
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 413
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_7

    .line 414
    return-wide v0

    .line 416
    :cond_7
    iget v2, p0, Ljava/util/jar/Manifest$FastInputStream;->count:I

    iget v3, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    .line 417
    .local v2, "avail":J
    cmp-long v0, v2, v0

    if-gtz v0, :cond_18

    .line 418
    iget-object v0, p0, Ljava/util/jar/Manifest$FastInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0

    .line 420
    :cond_18
    cmp-long v0, p1, v2

    if-lez v0, :cond_1d

    .line 421
    move-wide p1, v2

    .line 423
    :cond_1d
    iget v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Ljava/util/jar/Manifest$FastInputStream;->pos:I

    .line 424
    return-wide p1
.end method
