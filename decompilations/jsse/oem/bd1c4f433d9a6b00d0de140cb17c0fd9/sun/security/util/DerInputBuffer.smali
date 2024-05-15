.class Lsun/security/util/DerInputBuffer;
.super Ljava/io/ByteArrayInputStream;
.source "DerInputBuffer.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method constructor <init>([B)V
    .registers 2
    .param p1, "buf"    # [B

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-void
.end method

.method constructor <init>([BII)V
    .registers 4
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 51
    return-void
.end method

.method private getTime(IZ)Ljava/util/Date;
    .registers 24
    .param p1, "len"    # I
    .param p2, "generalized"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    const/16 v16, 0x0

    .line 316
    .local v16, "type":Ljava/lang/String;
    if-eqz p2, :cond_286

    .line 317
    const-string/jumbo v16, "Generalized"

    .line 318
    .local v16, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v17, v0

    .line 319
    .local v17, "year":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v18, v18, 0x64

    add-int v17, v17, v18

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v18, v18, 0xa

    add-int v17, v17, v18

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v17, v17, v18

    .line 322
    add-int/lit8 p1, p1, -0x2

    .line 334
    :goto_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v10, v18, 0xa

    .line 335
    .local v10, "month":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v10, v10, v18

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v3, v18, 0xa

    .line 338
    .local v3, "day":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v3, v3, v18

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v5, v18, 0xa

    .line 341
    .local v5, "hour":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v5, v5, v18

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v9, v18, 0xa

    .line 344
    .local v9, "minute":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v9, v9, v18

    .line 346
    add-int/lit8 p1, p1, -0xa

    .line 354
    const/4 v7, 0x0

    .line 355
    .local v7, "millis":I
    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-le v0, v1, :cond_419

    const/16 v18, 0xc

    move/from16 v0, p1

    move/from16 v1, v18

    if-ge v0, v1, :cond_419

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v13, v18, 0xa

    .line 357
    .local v13, "second":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v13, v13, v18

    .line 358
    add-int/lit8 p1, p1, -0x2

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    aget-byte v18, v18, v19

    const/16 v19, 0x2e

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_23c

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    aget-byte v18, v18, v19

    const/16 v19, 0x2c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_37e

    .line 361
    :cond_23c
    add-int/lit8 p1, p1, -0x1

    .line 362
    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    .line 364
    const/4 v12, 0x0

    .line 365
    .local v12, "precision":I
    move-object/from16 v0, p0

    iget v11, v0, Lsun/security/util/DerInputBuffer;->pos:I

    .line 366
    .local v11, "peek":I
    :goto_251
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    aget-byte v18, v18, v11

    const/16 v19, 0x5a

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2e7

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    aget-byte v18, v18, v11

    const/16 v19, 0x2b

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2e7

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    aget-byte v18, v18, v11

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2e7

    .line 369
    add-int/lit8 v11, v11, 0x1

    .line 370
    add-int/lit8 v12, v12, 0x1

    goto :goto_251

    .line 324
    .end local v3    # "day":I
    .end local v5    # "hour":I
    .end local v7    # "millis":I
    .end local v9    # "minute":I
    .end local v10    # "month":I
    .end local v11    # "peek":I
    .end local v12    # "precision":I
    .end local v13    # "second":I
    .end local v17    # "year":I
    .local v16, "type":Ljava/lang/String;
    :cond_286
    const-string/jumbo v16, "UTC"

    .line 325
    .local v16, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v17, v18, 0xa

    .line 326
    .restart local v17    # "year":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v17, v17, v18

    .line 328
    const/16 v18, 0x32

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2df

    .line 329
    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v17, v0

    goto/16 :goto_9d

    .line 331
    :cond_2df
    move/from16 v0, v17

    add-int/lit16 v0, v0, 0x76c

    move/from16 v17, v0

    goto/16 :goto_9d

    .line 372
    .restart local v3    # "day":I
    .restart local v5    # "hour":I
    .restart local v7    # "millis":I
    .restart local v9    # "minute":I
    .restart local v10    # "month":I
    .restart local v11    # "peek":I
    .restart local v12    # "precision":I
    .restart local v13    # "second":I
    :cond_2e7
    packed-switch v12, :pswitch_data_670

    .line 386
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Parse "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 387
    const-string/jumbo v20, " time, unsupported precision for seconds value"

    .line 386
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 374
    :pswitch_30f
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v18, v18, 0x64

    add-int/lit8 v7, v18, 0x0

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v18, v18, 0xa

    add-int v7, v7, v18

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v7, v7, v18

    .line 389
    :goto_37c
    sub-int p1, p1, v12

    .line 394
    .end local v11    # "peek":I
    .end local v12    # "precision":I
    :cond_37e
    :goto_37e
    if-eqz v10, :cond_382

    if-nez v3, :cond_41c

    .line 397
    :cond_382
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Parse "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " time, invalid format"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 379
    .restart local v11    # "peek":I
    .restart local v12    # "precision":I
    :pswitch_3a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v18, v18, 0x64

    add-int/lit8 v7, v18, 0x0

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v18, v18, 0xa

    add-int v7, v7, v18

    .line 381
    goto :goto_37c

    .line 383
    :pswitch_3f2
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v18, v18, 0x64

    add-int/lit8 v7, v18, 0x0

    .line 384
    goto/16 :goto_37c

    .line 392
    .end local v11    # "peek":I
    .end local v12    # "precision":I
    .end local v13    # "second":I
    :cond_419
    const/4 v13, 0x0

    .restart local v13    # "second":I
    goto/16 :goto_37e

    .line 395
    :cond_41c
    const/16 v18, 0xc

    move/from16 v0, v18

    if-gt v10, v0, :cond_382

    const/16 v18, 0x1f

    move/from16 v0, v18

    if-gt v3, v0, :cond_382

    .line 396
    const/16 v18, 0x18

    move/from16 v0, v18

    if-ge v5, v0, :cond_382

    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ge v9, v0, :cond_382

    const/16 v18, 0x3c

    move/from16 v0, v18

    if-ge v13, v0, :cond_382

    .line 403
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v4

    .line 404
    .local v4, "gcal":Lsun/util/calendar/CalendarSystem;
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lsun/util/calendar/CalendarSystem;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v2

    .line 405
    .local v2, "date":Lsun/util/calendar/CalendarDate;
    move/from16 v0, v17

    invoke-virtual {v2, v0, v10, v3}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 406
    invoke-virtual {v2, v5, v9, v13, v7}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 407
    invoke-virtual {v4, v2}, Lsun/util/calendar/CalendarSystem;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v14

    .line 412
    .local v14, "time":J
    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_487

    const/16 v18, 0x5

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_487

    .line 413
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Parse "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " time, invalid offset"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 417
    :cond_487
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    sparse-switch v18, :sswitch_data_67a

    .line 446
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Parse "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " time, garbage offset"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 419
    :sswitch_4c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v6, v18, 0xa

    .line 420
    .local v6, "hr":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v6, v6, v18

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v8, v18, 0xa

    .line 422
    .local v8, "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v8, v8, v18

    .line 424
    const/16 v18, 0x18

    move/from16 v0, v18

    if-ge v6, v0, :cond_55d

    const/16 v18, 0x3c

    move/from16 v0, v18

    if-lt v8, v0, :cond_582

    .line 425
    :cond_55d
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Parse "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " time, +hhmm"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 427
    :cond_582
    mul-int/lit8 v18, v6, 0x3c

    add-int v18, v18, v8

    mul-int/lit8 v18, v18, 0x3c

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    .line 448
    .end local v6    # "hr":I
    .end local v8    # "min":I
    :goto_595
    :sswitch_595
    new-instance v18, Ljava/util/Date;

    move-object/from16 v0, v18

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    return-object v18

    .line 431
    :sswitch_59d
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v6, v18, 0xa

    .line 432
    .restart local v6    # "hr":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v6, v6, v18

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    mul-int/lit8 v8, v18, 0xa

    .line 434
    .restart local v8    # "min":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/util/DerInputBuffer;->buf:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/security/util/DerInputBuffer;->pos:I

    move/from16 v19, v0

    add-int/lit8 v20, v19, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    const/16 v19, 0xa

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->digit(CI)I

    move-result v18

    add-int v8, v8, v18

    .line 436
    const/16 v18, 0x18

    move/from16 v0, v18

    if-ge v6, v0, :cond_635

    const/16 v18, 0x3c

    move/from16 v0, v18

    if-lt v8, v0, :cond_65a

    .line 437
    :cond_635
    new-instance v18, Ljava/io/IOException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Parse "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " time, -hhmm"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 439
    :cond_65a
    mul-int/lit8 v18, v6, 0x3c

    add-int v18, v18, v8

    mul-int/lit8 v18, v18, 0x3c

    move/from16 v0, v18

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v14, v14, v18

    .line 440
    goto/16 :goto_595

    .line 372
    nop

    :pswitch_data_670
    .packed-switch 0x1
        :pswitch_3f2
        :pswitch_3a7
        :pswitch_30f
    .end packed-switch

    .line 417
    :sswitch_data_67a
    .sparse-switch
        0x2b -> :sswitch_4c5
        0x2d -> :sswitch_59d
        0x5a -> :sswitch_595
    .end sparse-switch
.end method


# virtual methods
.method dup()Lsun/security/util/DerInputBuffer;
    .registers 5

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/util/DerInputBuffer;

    .line 57
    .local v1, "retval":Lsun/security/util/DerInputBuffer;
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Lsun/security/util/DerInputBuffer;->mark(I)V
    :try_end_c
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_c} :catch_d

    .line 58
    return-object v1

    .line 59
    .end local v1    # "retval":Lsun/security/util/DerInputBuffer;
    :catch_d
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 98
    instance-of v0, p1, Lsun/security/util/DerInputBuffer;

    if-eqz v0, :cond_b

    .line 99
    check-cast p1, Lsun/security/util/DerInputBuffer;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lsun/security/util/DerInputBuffer;->equals(Lsun/security/util/DerInputBuffer;)Z

    move-result v0

    return v0

    .line 101
    .restart local p1    # "other":Ljava/lang/Object;
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method equals(Lsun/security/util/DerInputBuffer;)Z
    .registers 9
    .param p1, "other"    # Lsun/security/util/DerInputBuffer;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 105
    if-ne p0, p1, :cond_5

    .line 106
    return v6

    .line 108
    :cond_5
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v1

    .line 109
    .local v1, "max":I
    invoke-virtual {p1}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v2

    if-eq v2, v1, :cond_10

    .line 110
    return v5

    .line 111
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v1, :cond_27

    .line 112
    iget-object v2, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    iget-object v3, p1, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v4, p1, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    if-eq v2, v3, :cond_24

    .line 113
    return v5

    .line 111
    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 116
    :cond_27
    return v6
.end method

.method getBigInteger(IZ)Ljava/math/BigInteger;
    .registers 9
    .param p1, "len"    # I
    .param p2, "makePositive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 150
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v1

    if-le p1, v1, :cond_11

    .line 151
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "short read of integer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_11
    if-nez p1, :cond_1c

    .line 154
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding: zero length Int value"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 157
    :cond_1c
    new-array v0, p1, [B

    .line 159
    .local v0, "bytes":[B
    iget-object v1, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v2, p0, Lsun/security/util/DerInputBuffer;->pos:I

    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 160
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lsun/security/util/DerInputBuffer;->skip(J)J

    .line 163
    const/4 v1, 0x2

    if-lt p1, v1, :cond_3d

    aget-byte v1, v0, v4

    if-nez v1, :cond_3d

    aget-byte v1, v0, v5

    if-ltz v1, :cond_3d

    .line 164
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding: redundant leading 0s"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_3d
    if-eqz p2, :cond_45

    .line 168
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1

    .line 170
    :cond_45
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    return-object v1
.end method

.method getBitString()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/security/util/DerInputBuffer;->getBitString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getBitString(I)[B
    .registers 8
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 200
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v2

    if-le p1, v2, :cond_10

    .line 201
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "short read of bit string"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_10
    if-nez p1, :cond_1b

    .line 204
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding: zero length bit string"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 207
    :cond_1b
    iget-object v2, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v0, v2, v3

    .line 208
    .local v0, "numOfPadBits":I
    if-ltz v0, :cond_26

    const/4 v2, 0x7

    if-le v0, v2, :cond_2f

    .line 209
    :cond_26
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid number of padding bits"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    :cond_2f
    add-int/lit8 v2, p1, -0x1

    new-array v1, v2, [B

    .line 213
    .local v1, "retval":[B
    iget-object v2, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, p1, -0x1

    invoke-static {v2, v3, v1, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 214
    if-eqz v0, :cond_4b

    .line 216
    add-int/lit8 v2, p1, -0x2

    aget-byte v3, v1, v2

    const/16 v4, 0xff

    shl-int/2addr v4, v0

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 218
    :cond_4b
    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Lsun/security/util/DerInputBuffer;->skip(J)J

    .line 219
    return-object v1
.end method

.method public getGeneralizedTime(I)Ljava/util/Date;
    .registers 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    if-le p1, v0, :cond_f

    .line 278
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "short read of DER Generalized Time"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_f
    const/16 v0, 0xd

    if-lt p1, v0, :cond_17

    const/16 v0, 0x17

    if-le p1, v0, :cond_20

    .line 281
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER Generalized Time length error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_20
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsun/security/util/DerInputBuffer;->getTime(IZ)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getInteger(I)I
    .registers 6
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-virtual {p0, p1, v1}, Lsun/security/util/DerInputBuffer;->getBigInteger(IZ)Ljava/math/BigInteger;

    move-result-object v0

    .line 186
    .local v0, "result":Ljava/math/BigInteger;
    const-wide/32 v2, -0x80000000

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_1b

    .line 187
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Integer below minimum valid value"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 189
    :cond_1b
    const-wide/32 v2, 0x7fffffff

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-lez v1, :cond_31

    .line 190
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Integer exceeds maximum valid value"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_31
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    return v1
.end method

.method getPos()I
    .registers 2

    .prologue
    .line 76
    iget v0, p0, Lsun/security/util/DerInputBuffer;->pos:I

    return v0
.end method

.method getSlice(II)[B
    .registers 6
    .param p1, "startPos"    # I
    .param p2, "size"    # I

    .prologue
    .line 80
    new-array v0, p2, [B

    .line 81
    .local v0, "result":[B
    iget-object v1, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 82
    return-object v0
.end method

.method public getUTCTime(I)Ljava/util/Date;
    .registers 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    if-le p1, v0, :cond_f

    .line 263
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "short read of DER UTC Time"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_f
    const/16 v0, 0xb

    if-lt p1, v0, :cond_17

    const/16 v0, 0x11

    if-le p1, v0, :cond_20

    .line 266
    :cond_17
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "DER UTC Time length error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/util/DerInputBuffer;->getTime(IZ)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method getUnalignedBitString()Lsun/security/util/BitArray;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 234
    iget v5, p0, Lsun/security/util/DerInputBuffer;->pos:I

    iget v6, p0, Lsun/security/util/DerInputBuffer;->count:I

    if-lt v5, v6, :cond_9

    .line 235
    const/4 v5, 0x0

    return-object v5

    .line 240
    :cond_9
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v2

    .line 241
    .local v2, "len":I
    iget-object v5, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v6, p0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v5, v5, v6

    and-int/lit16 v4, v5, 0xff

    .line 242
    .local v4, "unusedBits":I
    const/4 v5, 0x7

    if-le v4, v5, :cond_32

    .line 243
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid value for unused bits: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 245
    :cond_32
    add-int/lit8 v5, v2, -0x1

    new-array v1, v5, [B

    .line 247
    .local v1, "bits":[B
    array-length v5, v1

    if-nez v5, :cond_4f

    const/4 v3, 0x0

    .line 249
    .local v3, "length":I
    :goto_3a
    iget-object v5, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v6, p0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v2, -0x1

    invoke-static {v5, v6, v1, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 251
    new-instance v0, Lsun/security/util/BitArray;

    invoke-direct {v0, v3, v1}, Lsun/security/util/BitArray;-><init>(I[B)V

    .line 252
    .local v0, "bitArray":Lsun/security/util/BitArray;
    iget v5, p0, Lsun/security/util/DerInputBuffer;->count:I

    iput v5, p0, Lsun/security/util/DerInputBuffer;->pos:I

    .line 253
    return-object v0

    .line 247
    .end local v0    # "bitArray":Lsun/security/util/BitArray;
    .end local v3    # "length":I
    :cond_4f
    array-length v5, v1

    mul-int/lit8 v5, v5, 0x8

    sub-int v3, v5, v4

    .restart local v3    # "length":I
    goto :goto_3a
.end method

.method public hashCode()I
    .registers 7

    .prologue
    .line 125
    const/4 v3, 0x0

    .line 127
    .local v3, "retval":I
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v1

    .line 128
    .local v1, "len":I
    iget v2, p0, Lsun/security/util/DerInputBuffer;->pos:I

    .line 130
    .local v2, "p":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_15

    .line 131
    iget-object v4, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    add-int v5, v2, v0

    aget-byte v4, v4, v5

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 132
    :cond_15
    return v3
.end method

.method peek()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget v0, p0, Lsun/security/util/DerInputBuffer;->pos:I

    iget v1, p0, Lsun/security/util/DerInputBuffer;->count:I

    if-lt v0, v1, :cond_f

    .line 88
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "out of data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_f
    iget-object v0, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v1, p0, Lsun/security/util/DerInputBuffer;->pos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method toByteArray()[B
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 65
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    .line 66
    .local v0, "len":I
    if-gtz v0, :cond_9

    .line 67
    const/4 v2, 0x0

    return-object v2

    .line 68
    :cond_9
    new-array v1, v0, [B

    .line 70
    .local v1, "retval":[B
    iget-object v2, p0, Lsun/security/util/DerInputBuffer;->buf:[B

    iget v3, p0, Lsun/security/util/DerInputBuffer;->pos:I

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 71
    return-object v1
.end method

.method truncate(I)V
    .registers 4
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0}, Lsun/security/util/DerInputBuffer;->available()I

    move-result v0

    if-le p1, v0, :cond_f

    .line 137
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "insufficient data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_f
    iget v0, p0, Lsun/security/util/DerInputBuffer;->pos:I

    add-int/2addr v0, p1

    iput v0, p0, Lsun/security/util/DerInputBuffer;->count:I

    .line 139
    return-void
.end method
