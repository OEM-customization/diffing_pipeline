.class public Ljava/util/zip/ZipInputStream;
.super Ljava/util/zip/InflaterInputStream;
.source "ZipInputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# static fields
.field private static final DEFLATED:I = 0x8

.field private static final STORED:I


# instance fields
.field private b:[B

.field private closed:Z

.field private crc:Ljava/util/zip/CRC32;

.field private entry:Ljava/util/zip/ZipEntry;

.field private entryEOF:Z

.field private flag:I

.field private remaining:J

.field private tmpbuf:[B

.field private zc:Ljava/util/zip/ZipCoder;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 81
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .registers 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x200

    .line 99
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v1, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p0, v0, v1, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;I)V

    .line 49
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    .line 51
    new-array v0, v3, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    .line 56
    iput-boolean v4, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    .line 59
    iput-boolean v4, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 282
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->b:[B

    .line 102
    if-nez p1, :cond_31

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "in is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_31
    if-nez p2, :cond_3c

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "charset is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_3c
    invoke-static {p2}, Ljava/util/zip/ZipCoder;->get(Ljava/nio/charset/Charset;)Ljava/util/zip/ZipCoder;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->zc:Ljava/util/zip/ZipCoder;

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
    .line 67
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    if-eqz v0, :cond_d

    .line 68
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_d
    return-void
.end method

.method private readEnd(Ljava/util/zip/ZipEntry;)V
    .registers 15
    .param p1, "e"    # Ljava/util/zip/ZipEntry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v12, 0x10

    const/16 v11, 0xc

    const/16 v10, 0x8

    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 354
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v0

    .line 355
    .local v0, "n":I
    if-lez v0, :cond_1c

    .line 356
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->buf:[B

    iget v5, p0, Ljava/util/zip/ZipInputStream;->len:I

    sub-int/2addr v5, v0

    invoke-virtual {v1, v4, v5, v0}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 358
    :cond_1c
    iget v1, p0, Ljava/util/zip/ZipInputStream;->flag:I

    and-int/lit8 v1, v1, 0x8

    if-ne v1, v10, :cond_71

    .line 360
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    cmp-long v1, v4, v6

    if-gtz v1, :cond_40

    .line 361
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    cmp-long v1, v4, v6

    if-lez v1, :cond_ca

    .line 363
    :cond_40
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v4, 0x18

    invoke-direct {p0, v1, v9, v4}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    .line 364
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v9}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v2

    .line 365
    .local v2, "sig":J
    const-wide/32 v4, 0x8074b50

    cmp-long v1, v2, v4

    if-eqz v1, :cond_b1

    .line 366
    iput-wide v2, p1, Ljava/util/zip/ZipEntry;->crc:J

    .line 367
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v8}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    .line 368
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v11}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->size:J

    .line 369
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    .line 370
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v5, 0x13

    .line 369
    invoke-virtual {v1, v4, v5, v8}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 392
    .end local v2    # "sig":J
    :cond_71
    :goto_71
    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->size:J

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_115

    .line 393
    new-instance v1, Ljava/util/zip/ZipException;

    .line 394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid entry size (expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Ljava/util/zip/ZipEntry;->size:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 395
    const-string/jumbo v5, " but got "

    .line 394
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 395
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v6

    .line 394
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 395
    const-string/jumbo v5, " bytes)"

    .line 394
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 393
    invoke-direct {v1, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    .restart local v2    # "sig":J
    :cond_b1
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v8}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->crc:J

    .line 373
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v10}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    .line 374
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v12}, Ljava/util/zip/ZipUtils;->get64([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->size:J

    goto :goto_71

    .line 377
    .end local v2    # "sig":J
    :cond_ca
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-direct {p0, v1, v9, v12}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    .line 378
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v9}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v2

    .line 379
    .restart local v2    # "sig":J
    const-wide/32 v4, 0x8074b50

    cmp-long v1, v2, v4

    if-eqz v1, :cond_fb

    .line 380
    iput-wide v2, p1, Ljava/util/zip/ZipEntry;->crc:J

    .line 381
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v8}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    .line 382
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v10}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->size:J

    .line 383
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    check-cast v1, Ljava/io/PushbackInputStream;

    .line 384
    iget-object v4, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v5, 0xb

    .line 383
    invoke-virtual {v1, v4, v5, v8}, Ljava/io/PushbackInputStream;->unread([BII)V

    goto/16 :goto_71

    .line 386
    :cond_fb
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v8}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->crc:J

    .line 387
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v10}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    .line 388
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    invoke-static {v1, v11}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v4

    iput-wide v4, p1, Ljava/util/zip/ZipEntry;->size:J

    goto/16 :goto_71

    .line 397
    .end local v2    # "sig":J
    :cond_115
    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->csize:J

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_155

    .line 398
    new-instance v1, Ljava/util/zip/ZipException;

    .line 399
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid entry compressed size (expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Ljava/util/zip/ZipEntry;->csize:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 400
    const-string/jumbo v5, " but got "

    .line 399
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 400
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v5}, Ljava/util/zip/Inflater;->getBytesRead()J

    move-result-wide v6

    .line 399
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 400
    const-string/jumbo v5, " bytes)"

    .line 399
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 398
    invoke-direct {v1, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 402
    :cond_155
    iget-wide v4, p1, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_19d

    .line 403
    new-instance v1, Ljava/util/zip/ZipException;

    .line 404
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "invalid entry CRC (expected 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Ljava/util/zip/ZipEntry;->crc:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 405
    const-string/jumbo v5, " but got 0x"

    .line 404
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 405
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v5

    .line 404
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 405
    const-string/jumbo v5, ")"

    .line 404
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 403
    invoke-direct {v1, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_19d
    return-void
.end method

.method private readFully([BII)V
    .registers 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    :goto_0
    if-lez p3, :cond_14

    .line 414
    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 415
    .local v0, "n":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    .line 416
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 418
    :cond_11
    add-int/2addr p2, v0

    .line 419
    sub-int/2addr p3, v0

    goto :goto_0

    .line 421
    .end local v0    # "n":I
    :cond_14
    return-void
.end method

.method private readLOC()Ljava/util/zip/ZipEntry;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    :try_start_0
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/4 v6, 0x0

    const/16 v7, 0x1e

    invoke-direct {p0, v5, v6, v7}, Ljava/util/zip/ZipInputStream;->readFully([BII)V
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_8} :catch_18

    .line 293
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    const-wide/32 v8, 0x4034b50

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1b

    .line 294
    const/4 v5, 0x0

    return-object v5

    .line 290
    :catch_18
    move-exception v1

    .line 291
    .local v1, "e":Ljava/io/EOFException;
    const/4 v5, 0x0

    return-object v5

    .line 297
    .end local v1    # "e":Ljava/io/EOFException;
    :cond_1b
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/4 v6, 0x6

    invoke-static {v5, v6}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v5

    iput v5, p0, Ljava/util/zip/ZipInputStream;->flag:I

    .line 299
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v6, 0x1a

    invoke-static {v5, v6}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v4

    .line 300
    .local v4, "len":I
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->b:[B

    array-length v0, v5

    .line 301
    .local v0, "blen":I
    if-le v4, v0, :cond_39

    .line 303
    :cond_31
    mul-int/lit8 v0, v0, 0x2

    .line 304
    if-gt v4, v0, :cond_31

    .line 305
    new-array v5, v0, [B

    iput-object v5, p0, Ljava/util/zip/ZipInputStream;->b:[B

    .line 307
    :cond_39
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->b:[B

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6, v4}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    .line 309
    iget v5, p0, Ljava/util/zip/ZipInputStream;->flag:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_61

    .line 310
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->zc:Ljava/util/zip/ZipCoder;

    iget-object v6, p0, Ljava/util/zip/ZipInputStream;->b:[B

    invoke-virtual {v5, v6, v4}, Ljava/util/zip/ZipCoder;->toStringUTF8([BI)Ljava/lang/String;

    move-result-object v5

    .line 309
    :goto_4d
    invoke-virtual {p0, v5}, Ljava/util/zip/ZipInputStream;->createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    .line 313
    .local v2, "e":Ljava/util/zip/ZipEntry;
    iget v5, p0, Ljava/util/zip/ZipInputStream;->flag:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6a

    .line 314
    new-instance v5, Ljava/util/zip/ZipException;

    const-string/jumbo v6, "encrypted ZIP entry not supported"

    invoke-direct {v5, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 311
    .end local v2    # "e":Ljava/util/zip/ZipEntry;
    :cond_61
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->zc:Ljava/util/zip/ZipCoder;

    iget-object v6, p0, Ljava/util/zip/ZipInputStream;->b:[B

    invoke-virtual {v5, v6, v4}, Ljava/util/zip/ZipCoder;->toString([BI)Ljava/lang/String;

    move-result-object v5

    goto :goto_4d

    .line 316
    .restart local v2    # "e":Ljava/util/zip/ZipEntry;
    :cond_6a
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v6, 0x8

    invoke-static {v5, v6}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v5

    iput v5, v2, Ljava/util/zip/ZipEntry;->method:I

    .line 317
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v6, 0xa

    invoke-static {v5, v6}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    iput-wide v6, v2, Ljava/util/zip/ZipEntry;->xdostime:J

    .line 318
    iget v5, p0, Ljava/util/zip/ZipInputStream;->flag:I

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_95

    .line 320
    iget v5, v2, Ljava/util/zip/ZipEntry;->method:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_b3

    .line 321
    new-instance v5, Ljava/util/zip/ZipException;

    .line 322
    const-string/jumbo v6, "only DEFLATED entries can have EXT descriptor"

    .line 321
    invoke-direct {v5, v6}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 325
    :cond_95
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v6, 0xe

    invoke-static {v5, v6}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    iput-wide v6, v2, Ljava/util/zip/ZipEntry;->crc:J

    .line 326
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v6, 0x12

    invoke-static {v5, v6}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    iput-wide v6, v2, Ljava/util/zip/ZipEntry;->csize:J

    .line 327
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v6, 0x16

    invoke-static {v5, v6}, Ljava/util/zip/ZipUtils;->get32([BI)J

    move-result-wide v6

    iput-wide v6, v2, Ljava/util/zip/ZipEntry;->size:J

    .line 329
    :cond_b3
    iget-object v5, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/16 v6, 0x1c

    invoke-static {v5, v6}, Ljava/util/zip/ZipUtils;->get16([BI)I

    move-result v4

    .line 330
    if-lez v4, :cond_dd

    .line 331
    new-array v3, v4, [B

    .line 332
    .local v3, "extra":[B
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v4}, Ljava/util/zip/ZipInputStream;->readFully([BII)V

    .line 334
    iget-wide v6, v2, Ljava/util/zip/ZipEntry;->csize:J

    const-wide v8, 0xffffffffL

    cmp-long v5, v6, v8

    if-eqz v5, :cond_d9

    iget-wide v6, v2, Ljava/util/zip/ZipEntry;->size:J

    const-wide v8, 0xffffffffL

    cmp-long v5, v6, v8

    if-nez v5, :cond_de

    :cond_d9
    const/4 v5, 0x1

    .line 333
    :goto_da
    invoke-virtual {v2, v3, v5}, Ljava/util/zip/ZipEntry;->setExtra0([BZ)V

    .line 336
    .end local v3    # "extra":[B
    :cond_dd
    return-object v2

    .line 334
    .restart local v3    # "extra":[B
    :cond_de
    const/4 v5, 0x0

    goto :goto_da
.end method


# virtual methods
.method public available()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 164
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_15

    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    .line 166
    :cond_13
    const/4 v0, 0x0

    return v0

    .line 168
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    iget-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    if-nez v0, :cond_a

    .line 277
    invoke-super {p0}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipInputStream;->closed:Z

    .line 280
    :cond_a
    return-void
.end method

.method public closeEntry()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 145
    :cond_3
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    iget-object v1, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    array-length v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 147
    return-void
.end method

.method protected createZipEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 347
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getNextEntry()Ljava/util/zip/ZipEntry;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 119
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    if-eqz v0, :cond_c

    .line 120
    invoke-virtual {p0}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    .line 122
    :cond_c
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 123
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->inf:Ljava/util/zip/Inflater;

    invoke-virtual {v0}, Ljava/util/zip/Inflater;->reset()V

    .line 124
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->readLOC()Ljava/util/zip/ZipEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_1f

    .line 125
    return-object v1

    .line 129
    :cond_1f
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget v0, v0, Ljava/util/zip/ZipEntry;->method:I

    if-eqz v0, :cond_2d

    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget v0, v0, Ljava/util/zip/ZipEntry;->method:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_33

    .line 131
    :cond_2d
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget-wide v0, v0, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    .line 133
    :cond_33
    iput-boolean v2, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 134
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    return-object v0
.end method

.method public read([BII)I
    .registers 12
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 190
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 191
    if-ltz p2, :cond_d

    if-gez p3, :cond_13

    .line 192
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 191
    :cond_13
    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_d

    .line 193
    if-nez p3, :cond_1a

    .line 194
    return v1

    .line 197
    :cond_1a
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_1f

    .line 198
    return v4

    .line 200
    :cond_1f
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget v0, v0, Ljava/util/zip/ZipEntry;->method:I

    sparse-switch v0, :sswitch_data_d0

    .line 236
    new-instance v0, Ljava/util/zip/ZipException;

    const-string/jumbo v1, "invalid compression method"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :sswitch_2f
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/InflaterInputStream;->read([BII)I

    move-result p3

    .line 203
    if-ne p3, v4, :cond_3f

    .line 204
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    invoke-direct {p0, v0}, Ljava/util/zip/ZipInputStream;->readEnd(Ljava/util/zip/ZipEntry;)V

    .line 205
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 206
    iput-object v2, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    .line 213
    :goto_3e
    return p3

    .line 208
    :cond_3f
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 210
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    goto :goto_3e

    .line 215
    :sswitch_4b
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_56

    .line 216
    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 217
    iput-object v2, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    .line 218
    return v4

    .line 220
    :cond_56
    int-to-long v0, p3

    iget-wide v2, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_60

    .line 221
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    long-to-int p3, v0

    .line 223
    :cond_60
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    .line 224
    if-ne p3, v4, :cond_71

    .line 225
    new-instance v0, Ljava/util/zip/ZipException;

    const-string/jumbo v1, "unexpected EOF"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_71
    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 228
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    .line 229
    iget-wide v0, p0, Ljava/util/zip/ZipInputStream;->remaining:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_ce

    iget-object v0, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget-wide v0, v0, Ljava/util/zip/ZipEntry;->crc:J

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_ce

    .line 230
    new-instance v0, Ljava/util/zip/ZipException;

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid entry CRC (expected 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->entry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->crc:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 232
    const-string/jumbo v2, " but got 0x"

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 232
    iget-object v2, p0, Ljava/util/zip/ZipInputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 232
    const-string/jumbo v2, ")"

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 230
    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_ce
    return p3

    .line 200
    nop

    :sswitch_data_d0
    .sparse-switch
        0x0 -> :sswitch_4b
        0x8 -> :sswitch_2f
    .end sparse-switch
.end method

.method public skip(J)J
    .registers 10
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gez v3, :cond_f

    .line 250
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "negative skip length"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
    :cond_f
    invoke-direct {p0}, Ljava/util/zip/ZipInputStream;->ensureOpen()V

    .line 253
    const-wide/32 v4, 0x7fffffff

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 254
    .local v1, "max":I
    const/4 v2, 0x0

    .line 255
    .local v2, "total":I
    :goto_1b
    if-ge v2, v1, :cond_34

    .line 256
    sub-int v0, v1, v2

    .line 257
    .local v0, "len":I
    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    array-length v3, v3

    if-le v0, v3, :cond_27

    .line 258
    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    array-length v0, v3

    .line 260
    :cond_27
    iget-object v3, p0, Ljava/util/zip/ZipInputStream;->tmpbuf:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v0}, Ljava/util/zip/ZipInputStream;->read([BII)I

    move-result v0

    .line 261
    const/4 v3, -0x1

    if-ne v0, v3, :cond_36

    .line 262
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/util/zip/ZipInputStream;->entryEOF:Z

    .line 267
    .end local v0    # "len":I
    :cond_34
    int-to-long v4, v2

    return-wide v4

    .line 265
    .restart local v0    # "len":I
    :cond_36
    add-int/2addr v2, v0

    goto :goto_1b
.end method
