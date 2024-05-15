.class Lsun/security/util/DerInputBuffer;
.super Ljava/io/ByteArrayInputStream;
.source "DerInputBuffer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method constructor greylist-max-o <init>([B)V
    .registers 2
    .param p1, "buf"    # [B

    .line 47
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-void
.end method

.method constructor greylist-max-o <init>([BII)V
    .registers 4
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 50
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 51
    return-void
.end method

.method private greylist-max-o getTime(IZ)Ljava/util/Date;
    .registers 23
    .param p1, "len"    # I
    .param p2, "generalized"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 316
    .local v1, "type":Ljava/lang/String;
    const/16 v2, 0xa

    if-eqz p2, :cond_50

    .line 317
    const-string v1, "Generalized"

    .line 318
    iget-object v3, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v4, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-static {v3, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    .line 319
    .local v3, "year":I
    iget-object v4, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v5, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-static {v4, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    mul-int/lit8 v4, v4, 0x64

    add-int/2addr v3, v4

    .line 320
    iget-object v4, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v5, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-static {v4, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 321
    iget-object v4, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v5, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-static {v4, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    .line 322
    add-int/lit8 v4, p1, -0x2

    .end local p1    # "len":I
    .local v4, "len":I
    goto :goto_7f

    .line 324
    .end local v3    # "year":I
    .end local v4    # "len":I
    .restart local p1    # "len":I
    :cond_50
    const-string v1, "UTC"

    .line 325
    iget-object v3, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v4, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-static {v3, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    mul-int/2addr v3, v2

    .line 326
    .restart local v3    # "year":I
    iget-object v4, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v5, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v4, v4, v5

    int-to-char v4, v4

    invoke-static {v4, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    .line 328
    const/16 v4, 0x32

    if-ge v3, v4, :cond_7b

    .line 329
    add-int/lit16 v3, v3, 0x7d0

    move/from16 v4, p1

    goto :goto_7f

    .line 331
    :cond_7b
    add-int/lit16 v3, v3, 0x76c

    move/from16 v4, p1

    .line 334
    .end local p1    # "len":I
    .restart local v4    # "len":I
    :goto_7f
    iget-object v5, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v6, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v5, v5, v6

    int-to-char v5, v5

    invoke-static {v5, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    mul-int/2addr v5, v2

    .line 335
    .local v5, "month":I
    iget-object v6, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v7, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v6, v6, v7

    int-to-char v6, v6

    invoke-static {v6, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/2addr v5, v6

    .line 337
    iget-object v6, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v7, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v6, v6, v7

    int-to-char v6, v6

    invoke-static {v6, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    mul-int/2addr v6, v2

    .line 338
    .local v6, "day":I
    iget-object v7, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v8, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v7, v7, v8

    int-to-char v7, v7

    invoke-static {v7, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    add-int/2addr v6, v7

    .line 340
    iget-object v7, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v8, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v7, v7, v8

    int-to-char v7, v7

    invoke-static {v7, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v7

    mul-int/2addr v7, v2

    .line 341
    .local v7, "hour":I
    iget-object v8, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v9, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v8, v8, v9

    int-to-char v8, v8

    invoke-static {v8, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    add-int/2addr v7, v8

    .line 343
    iget-object v8, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v9, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v8, v8, v9

    int-to-char v8, v8

    invoke-static {v8, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v8

    mul-int/2addr v8, v2

    .line 344
    .local v8, "minute":I
    iget-object v9, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v10, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v9, v9, v10

    int-to-char v9, v9

    invoke-static {v9, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v9

    add-int/2addr v8, v9

    .line 346
    add-int/lit8 v4, v4, -0xa

    .line 354
    const/4 v9, 0x0

    .line 355
    .local v9, "millis":I
    const/16 v13, 0xc

    const/4 v14, 0x2

    const-string v15, "Parse "

    const/4 v10, 0x1

    if-le v4, v14, :cond_206

    if-ge v4, v13, :cond_206

    .line 356
    iget-object v13, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v14, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v11, v14, 0x1

    iput v11, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v11, v13, v14

    int-to-char v11, v11

    invoke-static {v11, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v11

    mul-int/2addr v11, v2

    .line 357
    .local v11, "second":I
    iget-object v13, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v14, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v12, v14, 0x1

    iput v12, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v12, v13, v14

    int-to-char v12, v12

    invoke-static {v12, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v12

    add-int/2addr v11, v12

    .line 358
    add-int/lit8 v4, v4, -0x2

    .line 360
    iget-object v12, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v13, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v12, v12, v13

    const/16 v13, 0x2e

    if-eq v12, v13, :cond_142

    iget-object v12, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v13, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v12, v12, v13

    const/16 v13, 0x2c

    if-ne v12, v13, :cond_207

    .line 361
    :cond_142
    add-int/lit8 v4, v4, -0x1

    .line 362
    iget v12, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/2addr v12, v10

    iput v12, v0, Lsun/security/util/DerInputBuffer;->pos:I

    .line 364
    const/4 v12, 0x0

    .line 365
    .local v12, "precision":I
    iget v13, v0, Lsun/security/util/DerInputBuffer;->pos:I

    .line 366
    .local v13, "peek":I
    :goto_14c
    iget-object v14, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    aget-byte v14, v14, v13

    const/16 v2, 0x5a

    if-eq v14, v2, :cond_16b

    iget-object v2, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    aget-byte v2, v2, v13

    const/16 v14, 0x2b

    if-eq v2, v14, :cond_16b

    iget-object v2, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    aget-byte v2, v2, v13

    const/16 v14, 0x2d

    if-eq v2, v14, :cond_16b

    .line 369
    add-int/lit8 v13, v13, 0x1

    .line 370
    add-int/lit8 v12, v12, 0x1

    const/16 v2, 0xa

    goto :goto_14c

    .line 372
    :cond_16b
    if-eq v12, v10, :cond_1ef

    const/4 v2, 0x2

    if-eq v12, v2, :cond_1c7

    const/4 v2, 0x3

    if-ne v12, v2, :cond_1ad

    .line 374
    iget-object v2, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v14, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v10, v14, 0x1

    iput v10, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v2, v2, v14

    int-to-char v2, v2

    const/16 v10, 0xa

    invoke-static {v2, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v9, v2

    .line 375
    iget-object v2, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v14, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v10, v14, 0x1

    iput v10, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v2, v2, v14

    int-to-char v2, v2

    const/16 v10, 0xa

    invoke-static {v2, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    mul-int/2addr v2, v10

    add-int/2addr v9, v2

    .line 376
    iget-object v2, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v14, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v10, v14, 0x1

    iput v10, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v2, v2, v14

    int-to-char v2, v2

    const/16 v10, 0xa

    invoke-static {v2, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    add-int/2addr v9, v2

    .line 377
    goto :goto_204

    .line 386
    :cond_1ad
    new-instance v2, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " time, unsupported precision for seconds value"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 379
    :cond_1c7
    iget-object v2, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v10, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v14, v10, 0x1

    iput v14, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v2, v2, v10

    int-to-char v2, v2

    const/16 v10, 0xa

    invoke-static {v2, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v9, v2

    .line 380
    iget-object v2, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v14, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v10, v14, 0x1

    iput v10, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v2, v2, v14

    int-to-char v2, v2

    const/16 v10, 0xa

    invoke-static {v2, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    mul-int/2addr v2, v10

    add-int/2addr v9, v2

    .line 381
    goto :goto_204

    .line 383
    :cond_1ef
    iget-object v2, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v10, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v14, v10, 0x1

    iput v14, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v2, v2, v10

    int-to-char v2, v2

    const/16 v10, 0xa

    invoke-static {v2, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v9, v2

    .line 384
    nop

    .line 389
    :goto_204
    sub-int/2addr v4, v12

    .line 390
    .end local v12    # "precision":I
    .end local v13    # "peek":I
    goto :goto_207

    .line 392
    .end local v11    # "second":I
    :cond_206
    const/4 v11, 0x0

    .line 394
    .restart local v11    # "second":I
    :cond_207
    :goto_207
    if-eqz v5, :cond_37e

    if-eqz v6, :cond_37e

    const/16 v2, 0xc

    if-gt v5, v2, :cond_37e

    const/16 v2, 0x1f

    if-gt v6, v2, :cond_37e

    const/16 v2, 0x18

    if-ge v7, v2, :cond_37e

    const/16 v10, 0x3c

    if-ge v8, v10, :cond_37e

    if-ge v11, v10, :cond_37e

    .line 403
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v12

    .line 404
    .local v12, "gcal":Lsun/util/calendar/CalendarSystem;
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lsun/util/calendar/CalendarSystem;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v13

    .line 405
    .local v13, "date":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v13, v3, v5, v6}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 406
    invoke-virtual {v13, v7, v8, v11, v9}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 407
    invoke-virtual {v12, v13}, Lsun/util/calendar/CalendarSystem;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v18

    .line 412
    .local v18, "time":J
    const/4 v14, 0x1

    if-eq v4, v14, :cond_251

    const/4 v14, 0x5

    if-ne v4, v14, :cond_237

    goto :goto_251

    .line 413
    :cond_237
    new-instance v2, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " time, invalid offset"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 417
    :cond_251
    :goto_251
    iget-object v14, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v10, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v2, v10, 0x1

    iput v2, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v2, v14, v10

    const/16 v10, 0x2b

    if-eq v2, v10, :cond_303

    const/16 v10, 0x2d

    if-eq v2, v10, :cond_289

    const/16 v10, 0x5a

    if-ne v2, v10, :cond_26f

    .line 443
    move/from16 v16, v3

    move/from16 v17, v4

    move-wide/from16 v2, v18

    goto/16 :goto_35e

    .line 446
    :cond_26f
    new-instance v2, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " time, garbage offset"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    :cond_289
    iget-object v2, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v10, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v14, v10, 0x1

    iput v14, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v2, v2, v10

    int-to-char v2, v2

    const/16 v10, 0xa

    invoke-static {v2, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    mul-int/2addr v2, v10

    .line 432
    .local v2, "hr":I
    iget-object v14, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v10, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v16, v3

    .end local v3    # "year":I
    .local v16, "year":I
    add-int/lit8 v3, v10, 0x1

    iput v3, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v3, v14, v10

    int-to-char v3, v3

    const/16 v10, 0xa

    invoke-static {v3, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v2, v3

    .line 433
    iget-object v3, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v14, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v10, v14, 0x1

    iput v10, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v3, v3, v14

    int-to-char v3, v3

    const/16 v10, 0xa

    invoke-static {v3, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    mul-int/2addr v3, v10

    .line 434
    .local v3, "min":I
    iget-object v14, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v10, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v17, v4

    .end local v4    # "len":I
    .local v17, "len":I
    add-int/lit8 v4, v10, 0x1

    iput v4, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v4, v14, v10

    int-to-char v4, v4

    const/16 v10, 0xa

    invoke-static {v4, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v3, v4

    .line 436
    const/16 v4, 0x18

    if-ge v2, v4, :cond_2e9

    const/16 v4, 0x3c

    if-ge v3, v4, :cond_2e9

    .line 439
    mul-int/lit8 v10, v2, 0x3c

    add-int/2addr v10, v3

    mul-int/2addr v10, v4

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v14, v10

    add-long v18, v18, v14

    .line 440
    move-wide/from16 v2, v18

    goto :goto_35e

    .line 437
    :cond_2e9
    new-instance v4, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " time, -hhmm"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 419
    .end local v2    # "hr":I
    .end local v16    # "year":I
    .end local v17    # "len":I
    .local v3, "year":I
    .restart local v4    # "len":I
    :cond_303
    move/from16 v16, v3

    move/from16 v17, v4

    .end local v3    # "year":I
    .end local v4    # "len":I
    .restart local v16    # "year":I
    .restart local v17    # "len":I
    iget-object v2, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v3, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v2, v2, v3

    int-to-char v2, v2

    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    mul-int/2addr v2, v3

    .line 420
    .restart local v2    # "hr":I
    iget-object v4, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v10, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v14, v10, 0x1

    iput v14, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v4, v4, v10

    int-to-char v4, v4

    invoke-static {v4, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    add-int/2addr v2, v4

    .line 421
    iget-object v4, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v10, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v14, v10, 0x1

    iput v14, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v4, v4, v10

    int-to-char v4, v4

    invoke-static {v4, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    mul-int/2addr v4, v3

    .line 422
    .local v4, "min":I
    iget-object v10, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v14, v0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v3, v14, 0x1

    iput v3, v0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v3, v10, v14

    int-to-char v3, v3

    const/16 v10, 0xa

    invoke-static {v3, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    add-int/2addr v4, v3

    .line 424
    const/16 v3, 0x18

    if-ge v2, v3, :cond_364

    const/16 v3, 0x3c

    if-ge v4, v3, :cond_364

    .line 427
    mul-int/lit8 v10, v2, 0x3c

    add-int/2addr v10, v4

    mul-int/2addr v10, v3

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v14, v10

    sub-long v18, v18, v14

    .line 428
    move-wide/from16 v2, v18

    .line 448
    .end local v4    # "min":I
    .end local v18    # "time":J
    .local v2, "time":J
    :goto_35e
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v4

    .line 425
    .local v2, "hr":I
    .restart local v4    # "min":I
    .restart local v18    # "time":J
    :cond_364
    new-instance v3, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " time, +hhmm"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 394
    .end local v2    # "hr":I
    .end local v12    # "gcal":Lsun/util/calendar/CalendarSystem;
    .end local v13    # "date":Lsun/util/calendar/CalendarDate;
    .end local v16    # "year":I
    .end local v17    # "len":I
    .end local v18    # "time":J
    .restart local v3    # "year":I
    .local v4, "len":I
    :cond_37e
    move/from16 v16, v3

    move/from16 v17, v4

    .line 397
    .end local v3    # "year":I
    .end local v4    # "len":I
    .restart local v16    # "year":I
    .restart local v17    # "len":I
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " time, invalid format"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method greylist-max-o dup()Lsun/security/util/DerInputBuffer;
    .registers 4

    .line 55
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/DerInputBuffer;

    .line 57
    .local v0, "retval":Lsun/security/util/DerInputBuffer;
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lsun/security/util/DerInputBuffer;->mark(I)V
    :try_end_c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_c} :catch_d

    .line 58
    return-object v0

    .line 59
    .end local v0    # "retval":Lsun/security/util/DerInputBuffer;
    :catch_d
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 98
    instance-of v0, p1, Lsun/security/util/DerInputBuffer;

    if-eqz v0, :cond_c

    .line 99
    move-object v0, p1

    check-cast v0, Lsun/security/util/DerInputBuffer;

    invoke-virtual {p0, v0}, Lsun/security/util/DerInputBuffer;->equals(Lsun/security/util/DerInputBuffer;)Z

    move-result v0

    return v0

    .line 101
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method greylist-max-o equals(Lsun/security/util/DerInputBuffer;)Z
    .registers 9
    .param p1, "other"    # Lsun/security/util/DerInputBuffer;

    .line 105
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 106
    return v0

    .line 108
    :cond_4
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v1

    .line 109
    .local v1, "max":I
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_10

    .line 110
    return v3

    .line 111
    :cond_10
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v1, :cond_27

    .line 112
    iget-object v4, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v5, p0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/2addr v5, v2

    aget-byte v4, v4, v5

    iget-object v5, p1, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v6, p1, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/2addr v6, v2

    aget-byte v5, v5, v6

    if-eq v4, v5, :cond_24

    .line 113
    return v3

    .line 111
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 116
    .end local v2    # "i":I
    :cond_27
    return v0
.end method

.method greylist-max-o getBigInteger(IZ)Ljava/math/BigInteger;
    .registers 7
    .param p1, "len"    # I
    .param p2, "makePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    if-gt p1, v0, :cond_41

    .line 153
    if-eqz p1, :cond_39

    .line 157
    new-array v0, p1, [B

    .line 159
    .local v0, "bytes":[B
    iget-object v1, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v2, p0, Lsun/security/util/DerInputBuffer;->pos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    int-to-long v1, p1

    invoke-virtual {p0, v1, v2}, Lsun/security/util/DerInputBuffer;->skip(J)J

    .line 163
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-lt p1, v1, :cond_2b

    aget-byte v1, v0, v3

    if-nez v1, :cond_2b

    aget-byte v1, v0, v2

    if-gez v1, :cond_23

    goto :goto_2b

    .line 164
    :cond_23
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid encoding: redundant leading 0s"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_2b
    :goto_2b
    if-eqz p2, :cond_33

    .line 168
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1

    .line 170
    :cond_33
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v1

    .line 154
    .end local v0    # "bytes":[B
    :cond_39
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding: zero length Int value"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_41
    new-instance v0, Ljava/io/IOException;

    const-string v1, "short read of integer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getBitString()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerInputBuffer;->getBitString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getBitString(I)[B
    .registers 8
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    if-gt p1, v0, :cond_45

    .line 203
    if-eqz p1, :cond_3d

    .line 207
    iget-object v0, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v1, p0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v0, v0, v1

    .line 208
    .local v0, "numOfPadBits":I
    if-ltz v0, :cond_35

    const/4 v1, 0x7

    if-gt v0, v1, :cond_35

    .line 212
    add-int/lit8 v1, p1, -0x1

    new-array v1, v1, [B

    .line 213
    .local v1, "retval":[B
    iget-object v2, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    add-int/lit8 v5, p1, -0x1

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 214
    if-eqz v0, :cond_30

    .line 216
    add-int/lit8 v2, p1, -0x2

    aget-byte v3, v1, v2

    const/16 v4, 0xff

    shl-int/2addr v4, v0

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 218
    :cond_30
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lsun/security/util/DerInputBuffer;->skip(J)J

    .line 219
    return-object v1

    .line 209
    .end local v1    # "retval":[B
    :cond_35
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid number of padding bits"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 204
    .end local v0    # "numOfPadBits":I
    :cond_3d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid encoding: zero length bit string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_45
    new-instance v0, Ljava/io/IOException;

    const-string v1, "short read of bit string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getGeneralizedTime(I)Ljava/util/Date;
    .registers 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    if-gt p1, v0, :cond_1c

    .line 280
    const/16 v0, 0xd

    if-lt p1, v0, :cond_14

    const/16 v0, 0x17

    if-gt p1, v0, :cond_14

    .line 283
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsun/security/util/DerInputBuffer;->getTime(IZ)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 281
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER Generalized Time length error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "short read of DER Generalized Time"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o getInteger(I)I
    .registers 5
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    .line 186
    .local v0, "result":Ljava/math/BigInteger;
    const-wide/32 v1, -0x80000000

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_2c

    .line 189
    const-wide/32 v1, 0x7fffffff

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_24

    .line 192
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    return v1

    .line 190
    :cond_24
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Integer exceeds maximum valid value"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_2c
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Integer below minimum valid value"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method greylist-max-o getPos()I
    .registers 2

    .line 76
    iget v0, p0, Lsun/security/util/DerInputBuffer;->pos:I

    return v0
.end method

.method greylist-max-o getSlice(II)[B
    .registers 6
    .param p1, "startPos"    # I
    .param p2, "size"    # I

    .line 80
    new-array v0, p2, [B

    .line 81
    .local v0, "result":[B
    iget-object v1, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    return-object v0
.end method

.method public greylist-max-o getUTCTime(I)Ljava/util/Date;
    .registers 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    if-gt p1, v0, :cond_1c

    .line 265
    const/16 v0, 0xb

    if-lt p1, v0, :cond_14

    const/16 v0, 0x11

    if-gt p1, v0, :cond_14

    .line 268
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/util/DerInputBuffer;->getTime(IZ)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 266
    :cond_14
    new-instance v0, Ljava/io/IOException;

    const-string v1, "DER UTC Time length error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_1c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "short read of DER UTC Time"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o getUnalignedBitString()Lsun/security/util/BitArray;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    iget v0, p0, Lsun/security/util/DerInputBuffer;->pos:I

    iget v1, p0, Lsun/security/util/DerInputBuffer;->count:I

    if-lt v0, v1, :cond_8

    .line 235
    const/4 v0, 0x0

    return-object v0

    .line 240
    :cond_8
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    .line 241
    .local v0, "len":I
    iget-object v1, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v2, p0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 242
    .local v1, "unusedBits":I
    const/4 v2, 0x7

    if-gt v1, v2, :cond_3a

    .line 245
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [B

    .line 247
    .local v2, "bits":[B
    array-length v3, v2

    const/4 v4, 0x0

    if-nez v3, :cond_21

    move v3, v4

    goto :goto_25

    :cond_21
    array-length v3, v2

    mul-int/lit8 v3, v3, 0x8

    sub-int/2addr v3, v1

    .line 249
    .local v3, "length":I
    :goto_25
    iget-object v5, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v6, p0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v0, -0x1

    invoke-static {v5, v6, v2, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    new-instance v4, Lsun/security/util/BitArray;

    invoke-direct {v4, v3, v2}, Lsun/security/util/BitArray;-><init>(I[B)V

    .line 252
    .local v4, "bitArray":Lsun/security/util/BitArray;
    iget v5, p0, Lsun/security/util/DerInputBuffer;->count:I

    iput v5, p0, Lsun/security/util/DerInputBuffer;->pos:I

    .line 253
    return-object v4

    .line 243
    .end local v2    # "bits":[B
    .end local v3    # "length":I
    .end local v4    # "bitArray":Lsun/security/util/BitArray;
    :cond_3a
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid value for unused bits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 7

    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "retval":I
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v1

    .line 128
    .local v1, "len":I
    iget v2, p0, Lsun/security/util/DerInputBuffer;->pos:I

    .line 130
    .local v2, "p":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v1, :cond_15

    .line 131
    iget-object v4, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    add-int v5, v2, v3

    aget-byte v4, v4, v5

    mul-int/2addr v4, v3

    add-int/2addr v0, v4

    .line 130
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 132
    .end local v3    # "i":I
    :cond_15
    return v0
.end method

.method greylist-max-o peek()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget v0, p0, Lsun/security/util/DerInputBuffer;->pos:I

    iget v1, p0, Lsun/security/util/DerInputBuffer;->count:I

    if-ge v0, v1, :cond_d

    .line 90
    iget-object v0, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v1, p0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v0, v0, v1

    return v0

    .line 88
    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "out of data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o toByteArray()[B
    .registers 6

    .line 65
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    .line 66
    .local v0, "len":I
    if-gtz v0, :cond_8

    .line 67
    const/4 v1, 0x0

    return-object v1

    .line 68
    :cond_8
    new-array v1, v0, [B

    .line 70
    .local v1, "retval":[B
    iget-object v2, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun/security/util/DerInputBuffer;->pos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    return-object v1
.end method

.method greylist-max-o truncate(I)V
    .registers 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    if-gt p1, v0, :cond_c

    .line 138
    iget v0, p0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/security/util/DerInputBuffer;->count:I

    .line 139
    return-void

    .line 137
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "insufficient data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
