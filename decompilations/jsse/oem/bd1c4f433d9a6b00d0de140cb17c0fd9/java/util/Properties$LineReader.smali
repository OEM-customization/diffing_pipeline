.class Ljava/util/Properties$LineReader;
.super Ljava/lang/Object;
.source "Properties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LineReader"
.end annotation


# instance fields
.field inByteBuf:[B

.field inCharBuf:[C

.field inLimit:I

.field inOff:I

.field inStream:Ljava/io/InputStream;

.field lineBuf:[C

.field reader:Ljava/io/Reader;

.field final synthetic this$0:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Ljava/util/Properties;Ljava/io/InputStream;)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/Properties;
    .param p2, "inStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x0

    .line 401
    iput-object p1, p0, Ljava/util/Properties$LineReader;->this$0:Ljava/util/Properties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    .line 414
    iput v1, p0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 415
    iput v1, p0, Ljava/util/Properties$LineReader;->inOff:I

    .line 402
    iput-object p2, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    .line 403
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    .line 404
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;Ljava/io/Reader;)V
    .registers 5
    .param p1, "this$0"    # Ljava/util/Properties;
    .param p2, "reader"    # Ljava/io/Reader;

    .prologue
    const/4 v1, 0x0

    .line 406
    iput-object p1, p0, Ljava/util/Properties$LineReader;->this$0:Ljava/util/Properties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    .line 414
    iput v1, p0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 415
    iput v1, p0, Ljava/util/Properties$LineReader;->inOff:I

    .line 407
    iput-object p2, p0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    .line 408
    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    .line 409
    return-void
.end method


# virtual methods
.method readLine()I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    const/4 v5, 0x0

    .line 421
    .local v5, "len":I
    const/4 v2, 0x0

    .line 423
    .local v2, "c":C
    const/4 v10, 0x1

    .line 424
    .local v10, "skipWhiteSpace":Z
    const/4 v3, 0x0

    .line 425
    .local v3, "isCommentLine":Z
    const/4 v4, 0x1

    .line 426
    .local v4, "isNewLine":Z
    const/4 v0, 0x0

    .line 427
    .local v0, "appendedLineBegin":Z
    const/4 v8, 0x0

    .line 428
    .local v8, "precedingBackslash":Z
    const/4 v9, 0x0

    .line 431
    .end local v2    # "c":C
    .end local v8    # "precedingBackslash":Z
    .local v9, "skipLF":Z
    :cond_8
    :goto_8
    iget v11, p0, Ljava/util/Properties$LineReader;->inOff:I

    iget v12, p0, Ljava/util/Properties$LineReader;->inLimit:I

    if-lt v11, v12, :cond_37

    .line 432
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    if-nez v11, :cond_29

    iget-object v11, p0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    iget-object v12, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    invoke-virtual {v11, v12}, Ljava/io/Reader;->read([C)I

    move-result v11

    :goto_1a
    iput v11, p0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 434
    const/4 v11, 0x0

    iput v11, p0, Ljava/util/Properties$LineReader;->inOff:I

    .line 435
    iget v11, p0, Ljava/util/Properties$LineReader;->inLimit:I

    if-gtz v11, :cond_37

    .line 436
    if-eqz v5, :cond_27

    if-eqz v3, :cond_32

    .line 437
    :cond_27
    const/4 v11, -0x1

    return v11

    .line 433
    :cond_29
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    iget-object v12, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    invoke-virtual {v11, v12}, Ljava/io/InputStream;->read([B)I

    move-result v11

    goto :goto_1a

    .line 439
    :cond_32
    if-eqz v8, :cond_36

    .line 440
    add-int/lit8 v5, v5, -0x1

    .line 442
    :cond_36
    return v5

    .line 445
    :cond_37
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    if-eqz v11, :cond_70

    .line 448
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    iget v12, p0, Ljava/util/Properties$LineReader;->inOff:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Ljava/util/Properties$LineReader;->inOff:I

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    int-to-char v2, v11

    .line 452
    .local v2, "c":C
    :goto_48
    if-eqz v9, :cond_4f

    .line 453
    const/4 v9, 0x0

    .line 454
    const/16 v11, 0xa

    if-eq v2, v11, :cond_8

    .line 458
    :cond_4f
    if-eqz v10, :cond_63

    .line 460
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-nez v11, :cond_8

    .line 463
    if-nez v0, :cond_61

    const/16 v11, 0xd

    if-eq v2, v11, :cond_8

    const/16 v11, 0xa

    if-eq v2, v11, :cond_8

    .line 466
    :cond_61
    const/4 v10, 0x0

    .line 467
    const/4 v0, 0x0

    .line 469
    :cond_63
    if-eqz v4, :cond_7b

    .line 470
    const/4 v4, 0x0

    .line 471
    const/16 v11, 0x23

    if-eq v2, v11, :cond_6e

    const/16 v11, 0x21

    if-ne v2, v11, :cond_7b

    .line 472
    :cond_6e
    const/4 v3, 0x1

    .line 473
    goto :goto_8

    .line 450
    .end local v2    # "c":C
    :cond_70
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    iget v12, p0, Ljava/util/Properties$LineReader;->inOff:I

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Ljava/util/Properties$LineReader;->inOff:I

    aget-char v2, v11, v12

    .restart local v2    # "c":C
    goto :goto_48

    .line 477
    :cond_7b
    const/16 v11, 0xa

    if-eq v2, v11, :cond_b1

    const/16 v11, 0xd

    if-eq v2, v11, :cond_b1

    .line 478
    iget-object v11, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "len":I
    .local v6, "len":I
    aput-char v2, v11, v5

    .line 479
    iget-object v11, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    array-length v11, v11

    if-ne v6, v11, :cond_a6

    .line 480
    iget-object v11, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    array-length v11, v11

    mul-int/lit8 v7, v11, 0x2

    .line 481
    .local v7, "newLength":I
    if-gez v7, :cond_98

    .line 482
    const v7, 0x7fffffff

    .line 484
    :cond_98
    new-array v1, v7, [C

    .line 485
    .local v1, "buf":[C
    iget-object v11, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    iget-object v12, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    array-length v12, v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v11, v13, v1, v14, v12}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 486
    iput-object v1, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    .line 489
    .end local v1    # "buf":[C
    .end local v7    # "newLength":I
    :cond_a6
    const/16 v11, 0x5c

    if-ne v2, v11, :cond_af

    .line 490
    xor-int/lit8 v8, v8, 0x1

    :goto_ac
    move v5, v6

    .line 477
    .end local v6    # "len":I
    .restart local v5    # "len":I
    goto/16 :goto_8

    .line 492
    .end local v5    # "len":I
    .restart local v6    # "len":I
    :cond_af
    const/4 v8, 0x0

    .restart local v8    # "precedingBackslash":Z
    goto :goto_ac

    .line 497
    .end local v6    # "len":I
    .end local v8    # "precedingBackslash":Z
    .restart local v5    # "len":I
    :cond_b1
    if-nez v3, :cond_b5

    if-nez v5, :cond_bb

    .line 498
    :cond_b5
    const/4 v3, 0x0

    .line 499
    const/4 v4, 0x1

    .line 500
    const/4 v10, 0x1

    .line 501
    const/4 v5, 0x0

    .line 502
    goto/16 :goto_8

    .line 504
    :cond_bb
    iget v11, p0, Ljava/util/Properties$LineReader;->inOff:I

    iget v12, p0, Ljava/util/Properties$LineReader;->inLimit:I

    if-lt v11, v12, :cond_e4

    .line 505
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    if-nez v11, :cond_db

    .line 506
    iget-object v11, p0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    iget-object v12, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    invoke-virtual {v11, v12}, Ljava/io/Reader;->read([C)I

    move-result v11

    .line 505
    :goto_cd
    iput v11, p0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 508
    const/4 v11, 0x0

    iput v11, p0, Ljava/util/Properties$LineReader;->inOff:I

    .line 509
    iget v11, p0, Ljava/util/Properties$LineReader;->inLimit:I

    if-gtz v11, :cond_e4

    .line 510
    if-eqz v8, :cond_da

    .line 511
    add-int/lit8 v5, v5, -0x1

    .line 513
    :cond_da
    return v5

    .line 507
    :cond_db
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    iget-object v12, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    invoke-virtual {v11, v12}, Ljava/io/InputStream;->read([B)I

    move-result v11

    goto :goto_cd

    .line 516
    :cond_e4
    if-eqz v8, :cond_f2

    .line 517
    add-int/lit8 v5, v5, -0x1

    .line 519
    const/4 v10, 0x1

    .line 520
    const/4 v0, 0x1

    .line 521
    const/4 v8, 0x0

    .line 522
    .restart local v8    # "precedingBackslash":Z
    const/16 v11, 0xd

    if-ne v2, v11, :cond_8

    .line 523
    const/4 v9, 0x1

    goto/16 :goto_8

    .line 526
    .end local v8    # "precedingBackslash":Z
    :cond_f2
    return v5
.end method
