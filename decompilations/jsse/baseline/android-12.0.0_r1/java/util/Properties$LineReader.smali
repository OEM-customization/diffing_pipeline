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
.field greylist-max-o inByteBuf:[B

.field greylist-max-o inCharBuf:[C

.field greylist-max-o inLimit:I

.field greylist-max-o inOff:I

.field greylist-max-o inStream:Ljava/io/InputStream;

.field greylist-max-o lineBuf:[C

.field greylist-max-o reader:Ljava/io/Reader;

.field final synthetic blacklist this$0:Ljava/util/Properties;


# direct methods
.method public constructor blacklist <init>(Ljava/util/Properties;Ljava/io/InputStream;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/Properties;
    .param p2, "inStream"    # Ljava/io/InputStream;

    .line 403
    iput-object p1, p0, Ljava/util/Properties$LineReader;->this$0:Ljava/util/Properties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 417
    iput v0, p0, Ljava/util/Properties$LineReader;->inOff:I

    .line 404
    iput-object p2, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    .line 405
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    .line 406
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Properties;Ljava/io/Reader;)V
    .registers 4
    .param p1, "this$0"    # Ljava/util/Properties;
    .param p2, "reader"    # Ljava/io/Reader;

    .line 408
    iput-object p1, p0, Ljava/util/Properties$LineReader;->this$0:Ljava/util/Properties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 415
    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    .line 416
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 417
    iput v0, p0, Ljava/util/Properties$LineReader;->inOff:I

    .line 409
    iput-object p2, p0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    .line 410
    const/16 v0, 0x2000

    new-array v0, v0, [C

    iput-object v0, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    .line 411
    return-void
.end method


# virtual methods
.method greylist-max-o readLine()I
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 422
    const/4 v0, 0x0

    .line 423
    .local v0, "len":I
    const/4 v1, 0x0

    .line 425
    .local v1, "c":C
    const/4 v2, 0x1

    .line 426
    .local v2, "skipWhiteSpace":Z
    const/4 v3, 0x0

    .line 427
    .local v3, "isCommentLine":Z
    const/4 v4, 0x1

    .line 428
    .local v4, "isNewLine":Z
    const/4 v5, 0x0

    .line 429
    .local v5, "appendedLineBegin":Z
    const/4 v6, 0x0

    .line 430
    .local v6, "precedingBackslash":Z
    const/4 v7, 0x0

    .line 433
    .local v7, "skipLF":Z
    :cond_8
    :goto_8
    iget v8, p0, Ljava/util/Properties$LineReader;->inOff:I

    iget v9, p0, Ljava/util/Properties$LineReader;->inLimit:I

    const/4 v10, 0x0

    if-lt v8, v9, :cond_34

    .line 434
    iget-object v8, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    if-nez v8, :cond_1c

    iget-object v8, p0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    iget-object v9, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    invoke-virtual {v8, v9}, Ljava/io/Reader;->read([C)I

    move-result v8

    goto :goto_22

    .line 435
    :cond_1c
    iget-object v9, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    invoke-virtual {v8, v9}, Ljava/io/InputStream;->read([B)I

    move-result v8

    :goto_22
    iput v8, p0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 436
    iput v10, p0, Ljava/util/Properties$LineReader;->inOff:I

    .line 437
    if-gtz v8, :cond_34

    .line 438
    if-eqz v0, :cond_32

    if-eqz v3, :cond_2d

    goto :goto_32

    .line 441
    :cond_2d
    if-eqz v6, :cond_31

    .line 442
    add-int/lit8 v0, v0, -0x1

    .line 444
    :cond_31
    return v0

    .line 439
    :cond_32
    :goto_32
    const/4 v8, -0x1

    return v8

    .line 447
    :cond_34
    iget-object v8, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    if-eqz v8, :cond_46

    .line 450
    iget-object v8, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    iget v9, p0, Ljava/util/Properties$LineReader;->inOff:I

    add-int/lit8 v11, v9, 0x1

    iput v11, p0, Ljava/util/Properties$LineReader;->inOff:I

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    int-to-char v1, v8

    goto :goto_50

    .line 452
    :cond_46
    iget-object v8, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    iget v9, p0, Ljava/util/Properties$LineReader;->inOff:I

    add-int/lit8 v11, v9, 0x1

    iput v11, p0, Ljava/util/Properties$LineReader;->inOff:I

    aget-char v1, v8, v9

    .line 454
    :goto_50
    const/16 v8, 0xa

    if-eqz v7, :cond_58

    .line 455
    const/4 v7, 0x0

    .line 456
    if-ne v1, v8, :cond_58

    .line 457
    goto :goto_8

    .line 460
    :cond_58
    const/16 v9, 0xd

    if-eqz v2, :cond_6c

    .line 463
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_63

    .line 464
    goto :goto_8

    .line 466
    :cond_63
    if-nez v5, :cond_6a

    if-eq v1, v9, :cond_8

    if-ne v1, v8, :cond_6a

    .line 467
    goto :goto_8

    .line 469
    :cond_6a
    const/4 v2, 0x0

    .line 470
    const/4 v5, 0x0

    .line 472
    :cond_6c
    if-eqz v4, :cond_79

    .line 473
    const/4 v4, 0x0

    .line 474
    const/16 v11, 0x23

    if-eq v1, v11, :cond_77

    const/16 v11, 0x21

    if-ne v1, v11, :cond_79

    .line 475
    :cond_77
    const/4 v3, 0x1

    .line 476
    goto :goto_8

    .line 480
    :cond_79
    if-eq v1, v8, :cond_a5

    if-eq v1, v9, :cond_a5

    .line 481
    iget-object v8, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    add-int/lit8 v9, v0, 0x1

    .end local v0    # "len":I
    .local v9, "len":I
    aput-char v1, v8, v0

    .line 482
    array-length v0, v8

    if-ne v9, v0, :cond_96

    .line 483
    array-length v0, v8

    mul-int/lit8 v0, v0, 0x2

    .line 484
    .local v0, "newLength":I
    if-gez v0, :cond_8e

    .line 485
    const v0, 0x7fffffff

    .line 487
    :cond_8e
    new-array v11, v0, [C

    .line 488
    .local v11, "buf":[C
    array-length v12, v8

    invoke-static {v8, v10, v11, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    iput-object v11, p0, Ljava/util/Properties$LineReader;->lineBuf:[C

    .line 492
    .end local v0    # "newLength":I
    .end local v11    # "buf":[C
    :cond_96
    const/16 v0, 0x5c

    if-ne v1, v0, :cond_a1

    .line 493
    if-nez v6, :cond_9d

    const/4 v10, 0x1

    :cond_9d
    move v6, v10

    move v0, v9

    goto/16 :goto_8

    .line 495
    :cond_a1
    const/4 v6, 0x0

    move v0, v9

    goto/16 :goto_8

    .line 500
    .end local v9    # "len":I
    .local v0, "len":I
    :cond_a5
    if-nez v3, :cond_db

    if-nez v0, :cond_aa

    goto :goto_db

    .line 507
    :cond_aa
    iget v8, p0, Ljava/util/Properties$LineReader;->inOff:I

    iget v11, p0, Ljava/util/Properties$LineReader;->inLimit:I

    if-lt v8, v11, :cond_ce

    .line 508
    iget-object v8, p0, Ljava/util/Properties$LineReader;->inStream:Ljava/io/InputStream;

    if-nez v8, :cond_bd

    .line 509
    iget-object v8, p0, Ljava/util/Properties$LineReader;->reader:Ljava/io/Reader;

    iget-object v11, p0, Ljava/util/Properties$LineReader;->inCharBuf:[C

    invoke-virtual {v8, v11}, Ljava/io/Reader;->read([C)I

    move-result v8

    goto :goto_c3

    .line 510
    :cond_bd
    iget-object v11, p0, Ljava/util/Properties$LineReader;->inByteBuf:[B

    invoke-virtual {v8, v11}, Ljava/io/InputStream;->read([B)I

    move-result v8

    :goto_c3
    iput v8, p0, Ljava/util/Properties$LineReader;->inLimit:I

    .line 511
    iput v10, p0, Ljava/util/Properties$LineReader;->inOff:I

    .line 512
    if-gtz v8, :cond_ce

    .line 513
    if-eqz v6, :cond_cd

    .line 514
    add-int/lit8 v0, v0, -0x1

    .line 516
    :cond_cd
    return v0

    .line 519
    :cond_ce
    if-eqz v6, :cond_da

    .line 520
    add-int/lit8 v0, v0, -0x1

    .line 522
    const/4 v2, 0x1

    .line 523
    const/4 v5, 0x1

    .line 524
    const/4 v6, 0x0

    .line 525
    if-ne v1, v9, :cond_8

    .line 526
    const/4 v7, 0x1

    goto/16 :goto_8

    .line 529
    :cond_da
    return v0

    .line 501
    :cond_db
    :goto_db
    const/4 v3, 0x0

    .line 502
    const/4 v4, 0x1

    .line 503
    const/4 v2, 0x1

    .line 504
    const/4 v0, 0x0

    .line 505
    goto/16 :goto_8
.end method
