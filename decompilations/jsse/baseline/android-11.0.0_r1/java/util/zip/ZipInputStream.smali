.class public Ljava/util/zip/ZipInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipInputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# static fields
.field private static final greylist-max-o DEFLATED:I = 0x8

.field private static final greylist-max-o STORED:I


# instance fields
.field private greylist-max-o b:[B

.field private greylist-max-o closed:Z

.field private greylist-max-o crc:Ljava/util/zip/CRC32;

.field private greylist-max-o entry:Ljava/util/zip/ZipEntry;

.field private greylist-max-o entryEOF:Z

.field private greylist flag:I

.field private greylist-max-o remaining:J

.field private greylist tmpbuf:[B

.field private greylist-max-o zc:Ljava/util/zip/ZipCoder;


# direct methods
.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 81
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 82
    return-void
.end method

.method public constructor whitelist core-platform-api test-api <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 99
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v1, 0x200

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0, v2, v1}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 49
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    .line 51
    new-array v0, v1, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    .line 59
    iput-boolean v0, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 289
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->b:[B

    .line 102
    if-eqz p1, :cond_39

    .line 105
    if-eqz p2, :cond_31

    .line 107
    invoke-static {p2}, Ljava/util/zip/ZipCoder;->get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->zc:Ljava/util/zip/ZipCoder;

    .line 108
    return-void

    .line 106
    :cond_31
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_39
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o ensureOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    if-nez v0, :cond_5

    .line 70
    return-void

    .line 68
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o readEnd(Ljava/util/zip/ZipEntry;)V
    .registers 15
    .param p1, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    .line 367
    .local v0, "n":I
    if-lez v0, :cond_14

    .line 368
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->buf:[B

    iget v3, p0, Ljava/util/zip/ZipInputStream;->len:I

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 370
    :cond_14
    iget v1, p0, Ljava/util/zip/ZipInputStream;->flag:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_cb

    .line 372
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v3

    const-wide v5, 0xffffffffL

    cmp-long v1, v3, v5

    const/16 v3, 0xc

    const/16 v4, 0x10

    const-wide/32 v7, 0x8074b50

    const/4 v9, 0x0

    const/4 v10, 0x4

    if-gtz v1, :cond_84

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    .line 373
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v11

    cmp-long v1, v11, v5

    if-lez v1, :cond_3e

    goto :goto_84

    .line 389
    :cond_3e
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-direct {p0, v1, v9, v4}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    .line 390
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v9}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v4

    .line 391
    .local v4, "sig":J
    cmp-long v1, v4, v7

    if-eqz v1, :cond_6b

    .line 392
    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->crc:J

    .line 393
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v10}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    iput-wide v6, p1, Ljava/util/zip/ZipEntry;->csize:J

    .line 394
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v2}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v1

    iput-wide v1, p1, Ljava/util/zip/ZipEntry;->size:J

    .line 395
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3, v10}, Ljava/io/PushbackInputStream;->unread([BII)V

    goto :goto_cb

    .line 398
    :cond_6b
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v10}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    iput-wide v6, p1, Ljava/util/zip/ZipEntry;->crc:J

    .line 399
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v2}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v1

    iput-wide v1, p1, Ljava/util/zip/ZipEntry;->csize:J

    .line 400
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v3}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v1

    iput-wide v1, p1, Ljava/util/zip/ZipEntry;->size:J

    goto :goto_cb

    .line 375
    .end local v4    # "sig":J
    :cond_84
    :goto_84
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v5, 0x18

    invoke-direct {p0, v1, v9, v5}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    .line 376
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v9}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v5

    .line 377
    .local v5, "sig":J
    cmp-long v1, v5, v7

    if-eqz v1, :cond_b3

    .line 378
    iput-wide v5, p1, Ljava/util/zip/ZipEntry;->crc:J

    .line 379
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v10}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v1

    iput-wide v1, p1, Ljava/util/zip/ZipEntry;->csize:J

    .line 380
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v3}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v1

    iput-wide v1, p1, Ljava/util/zip/ZipEntry;->size:J

    .line 381
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v3, 0x13

    invoke-virtual {v1, v2, v3, v10}, Ljava/io/PushbackInputStream;->unread([BII)V

    goto :goto_cb

    .line 384
    :cond_b3
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v10}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v7

    iput-wide v7, p1, Ljava/util/zip/ZipEntry;->crc:J

    .line 385
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v2}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v1

    iput-wide v1, p1, Ljava/util/zip/ZipEntry;->csize:J

    .line 386
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v4}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v1

    iput-wide v1, p1, Ljava/util/zip/ZipEntry;->size:J

    .line 404
    .end local v5    # "sig":J
    :cond_cb
    :goto_cb
    iget-wide v1, p1, Ljava/util/zip/ZipEntry;->size:J

    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v3

    cmp-long v1, v1, v3

    const-string v2, " bytes)"

    const-string v3, " but got "

    if-nez v1, :cond_150

    .line 409
    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_128

    .line 414
    iget-wide v1, p1, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_f4

    .line 419
    return-void

    .line 415
    :cond_f4
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid entry CRC (expected 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Ljava/util/zip/ZipEntry;->crc:J

    .line 416
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " but got 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    .line 417
    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 410
    :cond_128
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid entry compressed size (expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p1, Ljava/util/zip/ZipEntry;->csize:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    .line 412
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 405
    :cond_150
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid entry size (expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p1, Ljava/util/zip/ZipEntry;->size:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    .line 407
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o readFully([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 425
    :goto_0
    if-lez p3, :cond_14

    .line 426
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 427
    .local v0, "n":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 430
    add-int/2addr p2, v0

    .line 431
    sub-int/2addr p3, v0

    .line 432
    .end local v0    # "n":I
    goto :goto_0

    .line 428
    .restart local v0    # "n":I
    :cond_e
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 433
    .end local v0    # "n":I
    :cond_14
    return-void
.end method

.method private greylist-max-o readLOC()Ljava/util/zip/ZipEntry;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v2, 0x1e

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Ljava/util/zip/ZipInputStream;->readFully([BII)V
    :try_end_9
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_9} :catch_c1

    .line 299
    nop

    .line 300
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v3}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v1

    const-wide/32 v4, 0x4034b50

    cmp-long v1, v1, v4

    if-eqz v1, :cond_18

    .line 301
    return-object v0

    .line 304
    :cond_18
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/4 v1, 0x6

    invoke-static {v0, v1}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v0

    iput v0, p0, Ljava/util/zip/ZipInputStream;->flag:I

    .line 306
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v0

    .line 307
    .local v0, "len":I
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->b:[B

    array-length v1, v1

    .line 308
    .local v1, "blen":I
    if-le v0, v1, :cond_36

    .line 310
    :cond_2e
    mul-int/lit8 v1, v1, 0x2

    .line 311
    if-gt v0, v1, :cond_2e

    .line 312
    new-array v2, v1, [B

    iput-object v2, p0, Ljava/util/zip/ZipInputStream;->b:[B

    .line 314
    :cond_36
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->b:[B

    invoke-direct {p0, v2, v3, v0}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    .line 316
    iget v2, p0, Ljava/util/zip/ZipInputStream;->flag:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_4a

    .line 317
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->zc:Ljava/util/zip/ZipCoder;

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->b:[B

    invoke-virtual {v2, v4, v0}, Ljava/util/zip/ZipCoder;->toStringUTF8([BI)Ljava/lang/String;

    move-result-object v2

    goto :goto_52

    .line 318
    :cond_4a
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->zc:Ljava/util/zip/ZipCoder;

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->b:[B

    invoke-virtual {v2, v4, v0}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    move-result-object v2

    .line 316
    :goto_52
    invoke-virtual {p0, v2}, Ljava/util/zip/ZipInputStream;->createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 320
    .local v2, "e":Ljava/util/zip/ZipEntry;
    iget v4, p0, Ljava/util/zip/ZipInputStream;->flag:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_b9

    .line 323
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v6, 0x8

    invoke-static {v4, v6}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v4

    iput v4, v2, Ljava/util/zip/ZipEntry;->method:I

    .line 324
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v7, 0xa

    invoke-static {v4, v7}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v7

    iput-wide v7, v2, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 325
    iget v4, p0, Ljava/util/zip/ZipInputStream;->flag:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_76

    goto :goto_94

    .line 337
    :cond_76
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v6, 0xe

    invoke-static {v4, v6}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    iput-wide v6, v2, Ljava/util/zip/ZipEntry;->crc:J

    .line 338
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v6, 0x12

    invoke-static {v4, v6}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    iput-wide v6, v2, Ljava/util/zip/ZipEntry;->csize:J

    .line 339
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v6, 0x16

    invoke-static {v4, v6}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    iput-wide v6, v2, Ljava/util/zip/ZipEntry;->size:J

    .line 341
    :goto_94
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v6, 0x1c

    invoke-static {v4, v6}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v0

    .line 342
    if-lez v0, :cond_b8

    .line 343
    new-array v4, v0, [B

    .line 344
    .local v4, "extra":[B
    invoke-direct {p0, v4, v3, v0}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    .line 345
    iget-wide v6, v2, Ljava/util/zip/ZipEntry;->csize:J

    const-wide v8, 0xffffffffL

    cmp-long v6, v6, v8

    if-eqz v6, :cond_b4

    iget-wide v6, v2, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_b5

    :cond_b4
    move v3, v5

    :cond_b5
    invoke-virtual {v2, v4, v3}, Ljava/util/zip/ZipEntry;->setExtra0([BZ)V

    .line 348
    .end local v4    # "extra":[B
    :cond_b8
    return-object v2

    .line 321
    :cond_b9
    new-instance v3, Ljava/util/zip/ZipException;

    const-string v4, "encrypted ZIP entry not supported"

    invoke-direct {v3, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 297
    .end local v0    # "len":I
    .end local v1    # "blen":I
    .end local v2    # "e":Ljava/util/zip/ZipEntry;
    :catch_c1
    move-exception v1

    .line 298
    .local v1, "e":Ljava/io/EOFException;
    return-object v0
.end method


# virtual methods
.method public whitelist core-platform-api test-api available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 171
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_14

    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    goto :goto_16

    .line 174
    :cond_14
    const/4 v0, 0x1

    return v0

    .line 172
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist core-platform-api test-api close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    if-nez v0, :cond_a

    .line 284
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    .line 287
    :cond_a
    return-void
.end method

.method public whitelist core-platform-api test-api closeEntry()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 147
    :goto_3
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    goto :goto_3

    .line 148
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 149
    return-void
.end method

.method protected whitelist core-platform-api test-api createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 359
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public whitelist core-platform-api test-api getNextEntry()Ljava/util/zip/ZipEntry;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 119
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_a

    .line 120
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 122
    :cond_a
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 123
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 124
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->readLOC()Ljava/util/zip/ZipEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_1e

    .line 125
    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_1e
    iget v0, v0, Ljava/util/zip/ZipEntry;->method:I

    if-eqz v0, :cond_2a

    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget v0, v0, Ljava/util/zip/ZipEntry;->method:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_30

    .line 133
    :cond_2a
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget-wide v0, v0, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    .line 135
    :cond_30
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 136
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    return-object v0
.end method

.method public whitelist core-platform-api test-api read([BII)I
    .registers 12
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 197
    if-ltz p2, :cond_bb

    if-ltz p3, :cond_bb

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_bb

    .line 199
    if-nez p3, :cond_f

    .line 200
    const/4 v0, 0x0

    return v0

    .line 203
    :cond_f
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    const/4 v1, -0x1

    if-nez v0, :cond_15

    .line 204
    return v1

    .line 206
    :cond_15
    iget v0, v0, Ljava/util/zip/ZipEntry;->method:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_43

    const/16 v4, 0x8

    if-ne v0, v4, :cond_3b

    .line 208
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result p3

    .line 209
    if-ne p3, v1, :cond_2f

    .line 210
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    invoke-direct {p0, v0}, Ljava/util/zip/ZipInputStream;->readEnd(Ljava/util/zip/ZipEntry;)V

    .line 211
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 212
    iput-object v2, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    goto :goto_3a

    .line 214
    :cond_2f
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 218
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    .line 220
    :goto_3a
    return p3

    .line 243
    :cond_3b
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "invalid compression method"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_43
    iget-wide v4, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-gtz v0, :cond_50

    .line 223
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 224
    iput-object v2, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    .line 225
    return v1

    .line 227
    :cond_50
    int-to-long v2, p3

    cmp-long v0, v2, v4

    if-lez v0, :cond_56

    .line 228
    long-to-int p3, v4

    .line 230
    :cond_56
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    .line 231
    if-eq p3, v1, :cond_b3

    .line 234
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 235
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    .line 236
    cmp-long v0, v0, v6

    if-nez v0, :cond_b2

    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget-wide v0, v0, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_7c

    goto :goto_b2

    .line 237
    :cond_7c
    new-instance v0, Ljava/util/zip/ZipException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid entry CRC (expected 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->crc:J

    .line 238
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but got 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    .line 239
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_b2
    :goto_b2
    return p3

    .line 232
    :cond_b3
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "unexpected EOF"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_bb
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist core-platform-api test-api skip(J)J
    .registers 8
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2e

    .line 259
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 260
    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 261
    .local v0, "max":I
    const/4 v1, 0x0

    .line 262
    .local v1, "total":I
    :goto_12
    if-ge v1, v0, :cond_2c

    .line 263
    sub-int v2, v0, v1

    .line 264
    .local v2, "len":I
    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    array-length v4, v3

    if-le v2, v4, :cond_1c

    .line 265
    array-length v2, v3

    .line 267
    :cond_1c
    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v2

    .line 268
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2a

    .line 269
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 270
    goto :goto_2c

    .line 272
    :cond_2a
    add-int/2addr v1, v2

    .line 273
    .end local v2    # "len":I
    goto :goto_12

    .line 274
    :cond_2c
    :goto_2c
    int-to-long v2, v1

    return-wide v2

    .line 257
    .end local v0    # "max":I
    .end local v1    # "total":I
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative skip length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
