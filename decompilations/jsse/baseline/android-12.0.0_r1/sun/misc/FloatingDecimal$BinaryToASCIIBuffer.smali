.class Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;
.super Ljava/lang/Object;
.source "FloatingDecimal.java"

# interfaces
.implements Lsun/misc/FloatingDecimal$BinaryToASCIIConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/FloatingDecimal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BinaryToASCIIBuffer"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z

.field private static final blacklist N_5_BITS:[I

.field private static blacklist insignificantDigitsNumber:[I


# instance fields
.field private final blacklist buffer:[C

.field private blacklist decExponent:I

.field private blacklist decimalDigitsRoundedUp:Z

.field private final blacklist digits:[C

.field private blacklist exactDecimalConversion:Z

.field private blacklist firstDigitIndex:I

.field private blacklist isNegative:Z

.field private blacklist nDigits:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 259
    const-class v0, Lsun/misc/FloatingDecimal;

    .line 865
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->insignificantDigitsNumber:[I

    .line 875
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_9a

    sput-object v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->N_5_BITS:[I

    return-void

    nop

    :array_16
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x6
        0x6
        0x6
        0x6
        0x7
        0x7
        0x7
        0x8
        0x8
        0x8
        0x9
        0x9
        0x9
        0x9
        0xa
        0xa
        0xa
        0xb
        0xb
        0xb
        0xc
        0xc
        0xc
        0xc
        0xd
        0xd
        0xd
        0xe
        0xe
        0xe
        0xf
        0xf
        0xf
        0xf
        0x10
        0x10
        0x10
        0x11
        0x11
        0x11
        0x12
        0x12
        0x12
        0x13
    .end array-data

    :array_9a
    .array-data 4
        0x0
        0x3
        0x5
        0x7
        0xa
        0xc
        0xe
        0x11
        0x13
        0x15
        0x18
        0x1a
        0x1c
        0x1f
        0x21
        0x23
        0x26
        0x28
        0x2a
        0x2d
        0x2f
        0x31
        0x34
        0x36
        0x38
        0x3b
        0x3d
    .end array-data
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/16 v0, 0x1a

    new-array v0, v0, [C

    iput-object v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    .line 278
    iput-boolean v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decimalDigitsRoundedUp:Z

    .line 285
    const/16 v0, 0x14

    new-array v0, v0, [C

    iput-object v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    .line 286
    return-void
.end method

.method constructor blacklist <init>(Z[C)V
    .registers 4
    .param p1, "isNegative"    # Z
    .param p2, "digits"    # [C

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/16 v0, 0x1a

    new-array v0, v0, [C

    iput-object v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    .line 278
    iput-boolean v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decimalDigitsRoundedUp:Z

    .line 292
    iput-boolean p1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->isNegative:Z

    .line 293
    iput v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    .line 294
    iput-object p2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    .line 295
    iput v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    .line 296
    array-length v0, p2

    iput v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    .line 297
    return-void
.end method

.method static synthetic blacklist access$000(Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;Z)V
    .registers 2
    .param p0, "x0"    # Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;
    .param p1, "x1"    # Z

    .line 259
    invoke-direct {p0, p1}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->setSign(Z)V

    return-void
.end method

.method static synthetic blacklist access$100(Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;IJIZ)V
    .registers 6
    .param p0, "x0"    # Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # I
    .param p5, "x4"    # Z

    .line 259
    invoke-direct/range {p0 .. p5}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->dtoa(IJIZ)V

    return-void
.end method

.method private blacklist developLongDigits(IJI)V
    .registers 13
    .param p1, "decExponent"    # I
    .param p2, "lvalue"    # J
    .param p4, "insignificantDigits"    # I

    .line 368
    const/4 v0, 0x1

    if-eqz p4, :cond_15

    .line 371
    sget-object v1, Lsun/misc/FDBigInteger;->LONG_5_POW:[J

    aget-wide v1, v1, p4

    shl-long/2addr v1, p4

    .line 372
    .local v1, "pow10":J
    rem-long v3, p2, v1

    .line 373
    .local v3, "residue":J
    div-long/2addr p2, v1

    .line 374
    add-int/2addr p1, p4

    .line 375
    shr-long v5, v1, v0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_15

    .line 377
    const-wide/16 v5, 0x1

    add-long/2addr p2, v5

    .line 380
    .end local v1    # "pow10":J
    .end local v3    # "residue":J
    :cond_15
    iget-object v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    array-length v1, v1

    sub-int/2addr v1, v0

    .line 382
    .local v1, "digitno":I
    const-wide/32 v2, 0x7fffffff

    cmp-long v0, p2, v2

    if-gtz v0, :cond_4a

    .line 383
    nop

    .line 386
    long-to-int v0, p2

    .line 387
    .local v0, "ivalue":I
    rem-int/lit8 v2, v0, 0xa

    .line 388
    .local v2, "c":I
    div-int/lit8 v0, v0, 0xa

    .line 389
    :goto_26
    if-nez v2, :cond_2f

    .line 390
    add-int/lit8 p1, p1, 0x1

    .line 391
    rem-int/lit8 v2, v0, 0xa

    .line 392
    div-int/lit8 v0, v0, 0xa

    goto :goto_26

    .line 394
    :cond_2f
    :goto_2f
    if-eqz v0, :cond_42

    .line 395
    iget-object v3, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v4, v1, -0x1

    .end local v1    # "digitno":I
    .local v4, "digitno":I
    add-int/lit8 v5, v2, 0x30

    int-to-char v5, v5

    aput-char v5, v3, v1

    .line 396
    add-int/lit8 p1, p1, 0x1

    .line 397
    rem-int/lit8 v2, v0, 0xa

    .line 398
    div-int/lit8 v0, v0, 0xa

    move v1, v4

    goto :goto_2f

    .line 400
    .end local v4    # "digitno":I
    .restart local v1    # "digitno":I
    :cond_42
    iget-object v3, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v4, v2, 0x30

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 401
    .end local v0    # "ivalue":I
    goto :goto_78

    .line 404
    .end local v2    # "c":I
    :cond_4a
    const-wide/16 v2, 0xa

    rem-long v4, p2, v2

    long-to-int v0, v4

    .line 405
    .local v0, "c":I
    div-long/2addr p2, v2

    .line 406
    :goto_50
    if-nez v0, :cond_59

    .line 407
    add-int/lit8 p1, p1, 0x1

    .line 408
    rem-long v4, p2, v2

    long-to-int v0, v4

    .line 409
    div-long/2addr p2, v2

    goto :goto_50

    .line 411
    :cond_59
    :goto_59
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-eqz v4, :cond_70

    .line 412
    iget-object v4, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v5, v1, -0x1

    .end local v1    # "digitno":I
    .local v5, "digitno":I
    add-int/lit8 v6, v0, 0x30

    int-to-char v6, v6

    aput-char v6, v4, v1

    .line 413
    add-int/lit8 p1, p1, 0x1

    .line 414
    rem-long v6, p2, v2

    long-to-int v0, v6

    .line 415
    div-long/2addr p2, v2

    move v1, v5

    goto :goto_59

    .line 417
    .end local v5    # "digitno":I
    .restart local v1    # "digitno":I
    :cond_70
    iget-object v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    move v2, v0

    .line 419
    .end local v0    # "c":I
    .restart local v2    # "c":I
    :goto_78
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    .line 420
    iput v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    .line 421
    iget-object v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    array-length v0, v0

    sub-int/2addr v0, v1

    iput v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    .line 422
    return-void
.end method

.method private blacklist dtoa(IJIZ)V
    .registers 45
    .param p1, "binExp"    # I
    .param p2, "fractBits"    # J
    .param p4, "nSignificantBits"    # I
    .param p5, "isCompatibleFormat"    # Z

    .line 426
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p2

    move/from16 v4, p4

    .line 427
    nop

    .line 431
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v5

    .line 434
    .local v5, "tailZeros":I
    rsub-int/lit8 v6, v5, 0x35

    .line 439
    .local v6, "nFractBits":I
    const/4 v7, 0x0

    iput-boolean v7, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decimalDigitsRoundedUp:Z

    .line 440
    iput-boolean v7, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    .line 443
    sub-int v8, v6, v1

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 444
    .local v8, "nTinyBits":I
    const/16 v10, 0x3e

    const/16 v11, 0x40

    if-gt v1, v10, :cond_4e

    const/16 v10, -0x15

    if-lt v1, v10, :cond_4e

    .line 448
    sget-object v10, Lsun/misc/FDBigInteger;->LONG_5_POW:[J

    array-length v10, v10

    if-ge v8, v10, :cond_4e

    sget-object v10, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->N_5_BITS:[I

    aget v10, v10, v8

    add-int/2addr v10, v6

    if-ge v10, v11, :cond_4e

    .line 464
    if-nez v8, :cond_4e

    .line 466
    if-le v1, v4, :cond_3e

    .line 467
    sub-int v10, v1, v4

    sub-int/2addr v10, v9

    invoke-static {v10}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->insignificantDigitsForPow2(I)I

    move-result v9

    .local v9, "insignificant":I
    goto :goto_3f

    .line 469
    .end local v9    # "insignificant":I
    :cond_3e
    const/4 v9, 0x0

    .line 471
    .restart local v9    # "insignificant":I
    :goto_3f
    const/16 v10, 0x34

    if-lt v1, v10, :cond_47

    .line 472
    add-int/lit8 v10, v1, -0x34

    shl-long/2addr v2, v10

    .end local p2    # "fractBits":J
    .local v2, "fractBits":J
    goto :goto_4a

    .line 474
    .end local v2    # "fractBits":J
    .restart local p2    # "fractBits":J
    :cond_47
    rsub-int/lit8 v10, v1, 0x34

    ushr-long/2addr v2, v10

    .line 476
    .end local p2    # "fractBits":J
    .restart local v2    # "fractBits":J
    :goto_4a
    invoke-direct {v0, v7, v2, v3, v9}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->developLongDigits(IJI)V

    .line 477
    return-void

    .line 515
    .end local v2    # "fractBits":J
    .end local v9    # "insignificant":I
    .restart local p2    # "fractBits":J
    :cond_4e
    invoke-static {v2, v3, v1}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->estimateDecExp(JI)I

    move-result v10

    .line 520
    .local v10, "decExp":I
    neg-int v12, v10

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 521
    .local v12, "B5":I
    add-int v13, v12, v8

    add-int/2addr v13, v1

    .line 523
    .local v13, "B2":I
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 524
    .local v14, "S5":I
    add-int v15, v14, v8

    .line 526
    .local v15, "S2":I
    move/from16 v16, v12

    .line 527
    .local v16, "M5":I
    sub-int v17, v13, v4

    .line 537
    .local v17, "M2":I
    ushr-long/2addr v2, v5

    .line 538
    .end local p2    # "fractBits":J
    .restart local v2    # "fractBits":J
    add-int/lit8 v18, v6, -0x1

    sub-int v13, v13, v18

    .line 539
    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 540
    .local v18, "common2factor":I
    sub-int v13, v13, v18

    .line 541
    sub-int v15, v15, v18

    .line 542
    sub-int v17, v17, v18

    .line 550
    if-ne v6, v9, :cond_77

    .line 551
    add-int/lit8 v17, v17, -0x1

    .line 554
    :cond_77
    if-gez v17, :cond_7f

    .line 558
    sub-int v13, v13, v17

    .line 559
    sub-int v15, v15, v17

    .line 560
    const/16 v17, 0x0

    .line 570
    :cond_7f
    const/16 v19, 0x0

    .line 591
    .local v19, "ndigit":I
    add-int v20, v6, v13

    sget-object v9, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->N_5_BITS:[I

    array-length v7, v9

    if-ge v12, v7, :cond_8b

    aget v7, v9, v12

    goto :goto_8d

    :cond_8b
    mul-int/lit8 v7, v12, 0x3

    :goto_8d
    add-int v7, v20, v7

    .line 594
    .local v7, "Bbits":I
    add-int/lit8 v20, v15, 0x1

    add-int/lit8 v11, v14, 0x1

    array-length v1, v9

    if-ge v11, v1, :cond_9b

    add-int/lit8 v1, v14, 0x1

    aget v1, v9, v1

    goto :goto_9f

    :cond_9b
    add-int/lit8 v1, v14, 0x1

    mul-int/lit8 v1, v1, 0x3

    :goto_9f
    add-int v1, v20, v1

    .line 595
    .local v1, "tenSbits":I
    const-wide/16 v23, 0x0

    const/16 v9, 0x40

    if-ge v7, v9, :cond_21b

    if-ge v1, v9, :cond_21b

    .line 596
    const/16 v9, 0x20

    if-ge v7, v9, :cond_168

    if-ge v1, v9, :cond_168

    .line 598
    long-to-int v9, v2

    sget-object v20, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v20, v20, v12

    mul-int v9, v9, v20

    shl-int/2addr v9, v13

    .line 599
    .local v9, "b":I
    sget-object v20, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v20, v20, v14

    shl-int v20, v20, v15

    .line 600
    .local v20, "s":I
    sget-object v22, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v22, v22, v16

    shl-int v22, v22, v17

    .line 601
    .local v22, "m":I
    mul-int/lit8 v11, v20, 0xa

    .line 607
    .local v11, "tens":I
    const/16 v19, 0x0

    .line 608
    div-int v25, v9, v20

    .line 609
    .local v25, "q":I
    rem-int v26, v9, v20

    mul-int/lit8 v9, v26, 0xa

    .line 610
    move/from16 v26, v1

    .end local v1    # "tenSbits":I
    .local v26, "tenSbits":I
    mul-int/lit8 v1, v22, 0xa

    .line 611
    .end local v22    # "m":I
    .local v1, "m":I
    if-ge v9, v1, :cond_d6

    const/16 v22, 0x1

    goto :goto_d8

    :cond_d6
    const/16 v22, 0x0

    .line 612
    .local v22, "low":Z
    :goto_d8
    add-int v4, v9, v1

    if-le v4, v11, :cond_de

    const/4 v4, 0x1

    goto :goto_df

    :cond_de
    const/4 v4, 0x0

    .line 613
    .local v4, "high":Z
    :goto_df
    nop

    .line 614
    if-nez v25, :cond_eb

    if-nez v4, :cond_eb

    .line 616
    add-int/lit8 v10, v10, -0x1

    move/from16 v27, v1

    move/from16 v29, v4

    goto :goto_fa

    .line 618
    :cond_eb
    move/from16 v27, v1

    .end local v1    # "m":I
    .local v27, "m":I
    iget-object v1, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v28, v19, 0x1

    .end local v19    # "ndigit":I
    .local v28, "ndigit":I
    move/from16 v29, v4

    .end local v4    # "high":Z
    .local v29, "high":Z
    add-int/lit8 v4, v25, 0x30

    int-to-char v4, v4

    aput-char v4, v1, v19

    move/from16 v19, v28

    .line 626
    .end local v28    # "ndigit":I
    .restart local v19    # "ndigit":I
    :goto_fa
    if-eqz p5, :cond_109

    const/4 v1, -0x3

    if-lt v10, v1, :cond_109

    const/16 v1, 0x8

    if-lt v10, v1, :cond_104

    goto :goto_109

    :cond_104
    move/from16 v1, v27

    move/from16 v4, v29

    goto :goto_10f

    .line 627
    :cond_109
    :goto_109
    const/4 v1, 0x0

    move/from16 v22, v1

    move v4, v1

    move/from16 v1, v27

    .line 629
    .end local v27    # "m":I
    .end local v29    # "high":Z
    .restart local v1    # "m":I
    .restart local v4    # "high":Z
    :goto_10f
    if-nez v22, :cond_14c

    if-nez v4, :cond_14c

    .line 630
    div-int v25, v9, v20

    .line 631
    rem-int v27, v9, v20

    mul-int/lit8 v9, v27, 0xa

    .line 632
    mul-int/lit8 v1, v1, 0xa

    .line 633
    nop

    .line 634
    move/from16 p2, v4

    move/from16 v27, v5

    .end local v4    # "high":Z
    .end local v5    # "tailZeros":I
    .local v27, "tailZeros":I
    .local p2, "high":Z
    int-to-long v4, v1

    cmp-long v4, v4, v23

    if-lez v4, :cond_135

    .line 635
    if-ge v9, v1, :cond_129

    const/4 v4, 0x1

    goto :goto_12a

    :cond_129
    const/4 v4, 0x0

    .line 636
    .end local v22    # "low":Z
    .local v4, "low":Z
    :goto_12a
    add-int v5, v9, v1

    if-le v5, v11, :cond_130

    const/4 v5, 0x1

    goto :goto_131

    :cond_130
    const/4 v5, 0x0

    :goto_131
    move/from16 v22, v4

    move v4, v5

    .end local p2    # "high":Z
    .local v5, "high":Z
    goto :goto_13a

    .line 643
    .end local v4    # "low":Z
    .end local v5    # "high":Z
    .restart local v22    # "low":Z
    .restart local p2    # "high":Z
    :cond_135
    const/4 v4, 0x1

    .line 644
    .end local v22    # "low":Z
    .restart local v4    # "low":Z
    const/4 v5, 0x1

    move/from16 v22, v4

    move v4, v5

    .line 646
    .end local p2    # "high":Z
    .local v4, "high":Z
    .restart local v22    # "low":Z
    :goto_13a
    iget-object v5, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v28, v19, 0x1

    .end local v19    # "ndigit":I
    .restart local v28    # "ndigit":I
    move/from16 p3, v1

    .end local v1    # "m":I
    .local p3, "m":I
    add-int/lit8 v1, v25, 0x30

    int-to-char v1, v1

    aput-char v1, v5, v19

    move/from16 v1, p3

    move/from16 v5, v27

    move/from16 v19, v28

    goto :goto_10f

    .line 629
    .end local v27    # "tailZeros":I
    .end local v28    # "ndigit":I
    .end local p3    # "m":I
    .restart local v1    # "m":I
    .local v5, "tailZeros":I
    .restart local v19    # "ndigit":I
    :cond_14c
    move/from16 p2, v4

    move/from16 v27, v5

    .line 648
    .end local v4    # "high":Z
    .end local v5    # "tailZeros":I
    .restart local v27    # "tailZeros":I
    .restart local p2    # "high":Z
    shl-int/lit8 v4, v9, 0x1

    sub-int/2addr v4, v11

    int-to-long v4, v4

    .line 649
    .local v4, "lowDigitDifference":J
    move/from16 p3, v1

    if-nez v9, :cond_15a

    const/4 v1, 0x1

    goto :goto_15b

    :cond_15a
    const/4 v1, 0x0

    .end local v1    # "m":I
    .restart local p3    # "m":I
    :goto_15b
    iput-boolean v1, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    .line 650
    .end local v9    # "b":I
    .end local v11    # "tens":I
    .end local v20    # "s":I
    .end local p3    # "m":I
    move-wide/from16 v28, v2

    move-wide v1, v4

    move v9, v6

    move v11, v7

    move/from16 v3, v19

    move/from16 v4, p2

    goto/16 :goto_2fc

    .line 596
    .end local v4    # "lowDigitDifference":J
    .end local v22    # "low":Z
    .end local v25    # "q":I
    .end local v26    # "tenSbits":I
    .end local v27    # "tailZeros":I
    .end local p2    # "high":Z
    .local v1, "tenSbits":I
    .restart local v5    # "tailZeros":I
    :cond_168
    move/from16 v26, v1

    move/from16 v27, v5

    .line 652
    .end local v1    # "tenSbits":I
    .end local v5    # "tailZeros":I
    .restart local v26    # "tenSbits":I
    .restart local v27    # "tailZeros":I
    sget-object v1, Lsun/misc/FDBigInteger;->LONG_5_POW:[J

    aget-wide v4, v1, v12

    mul-long/2addr v4, v2

    shl-long/2addr v4, v13

    .line 653
    .local v4, "b":J
    sget-object v1, Lsun/misc/FDBigInteger;->LONG_5_POW:[J

    aget-wide v28, v1, v14

    shl-long v28, v28, v15

    .line 654
    .local v28, "s":J
    sget-object v1, Lsun/misc/FDBigInteger;->LONG_5_POW:[J

    aget-wide v30, v1, v16

    shl-long v30, v30, v17

    .line 655
    .local v30, "m":J
    const-wide/16 v32, 0xa

    mul-long v34, v28, v32

    .line 661
    .local v34, "tens":J
    const/4 v1, 0x0

    .line 662
    .end local v19    # "ndigit":I
    .local v1, "ndigit":I
    move v9, v6

    move v11, v7

    .end local v6    # "nFractBits":I
    .end local v7    # "Bbits":I
    .local v9, "nFractBits":I
    .local v11, "Bbits":I
    div-long v6, v4, v28

    long-to-int v6, v6

    .line 663
    .local v6, "q":I
    rem-long v19, v4, v28

    mul-long v19, v19, v32

    .line 664
    .end local v4    # "b":J
    .local v19, "b":J
    mul-long v30, v30, v32

    .line 665
    cmp-long v4, v19, v30

    if-gez v4, :cond_194

    const/4 v4, 0x1

    goto :goto_195

    :cond_194
    const/4 v4, 0x0

    .line 666
    .local v4, "low":Z
    :goto_195
    add-long v36, v19, v30

    cmp-long v5, v36, v34

    if-lez v5, :cond_19d

    const/4 v5, 0x1

    goto :goto_19e

    :cond_19d
    const/4 v5, 0x0

    .line 667
    .local v5, "high":Z
    :goto_19e
    nop

    .line 668
    if-nez v6, :cond_1a8

    if-nez v5, :cond_1a8

    .line 670
    add-int/lit8 v10, v10, -0x1

    move/from16 v25, v4

    goto :goto_1b5

    .line 672
    :cond_1a8
    iget-object v7, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v22, v1, 0x1

    .end local v1    # "ndigit":I
    .local v22, "ndigit":I
    move/from16 v25, v4

    .end local v4    # "low":Z
    .local v25, "low":Z
    add-int/lit8 v4, v6, 0x30

    int-to-char v4, v4

    aput-char v4, v7, v1

    move/from16 v1, v22

    .line 680
    .end local v22    # "ndigit":I
    .restart local v1    # "ndigit":I
    :goto_1b5
    if-eqz p5, :cond_1c5

    const/4 v4, -0x3

    if-lt v10, v4, :cond_1c5

    const/16 v4, 0x8

    if-lt v10, v4, :cond_1bf

    goto :goto_1c5

    :cond_1bf
    move v4, v5

    move/from16 v22, v25

    move/from16 v25, v6

    goto :goto_1cc

    .line 681
    :cond_1c5
    :goto_1c5
    const/4 v4, 0x0

    move v7, v4

    .end local v25    # "low":Z
    .local v7, "low":Z
    move v5, v4

    move/from16 v25, v6

    move/from16 v22, v7

    .line 683
    .end local v5    # "high":Z
    .end local v6    # "q":I
    .end local v7    # "low":Z
    .local v4, "high":Z
    .local v22, "low":Z
    .local v25, "q":I
    :goto_1cc
    if-nez v22, :cond_207

    if-nez v4, :cond_207

    .line 684
    div-long v5, v19, v28

    long-to-int v5, v5

    .line 685
    .end local v25    # "q":I
    .local v5, "q":I
    rem-long v6, v19, v28

    mul-long v19, v6, v32

    .line 686
    mul-long v30, v30, v32

    .line 687
    nop

    .line 688
    cmp-long v6, v30, v23

    if-lez v6, :cond_1f2

    .line 689
    cmp-long v6, v19, v30

    if-gez v6, :cond_1e4

    const/4 v6, 0x1

    goto :goto_1e5

    :cond_1e4
    const/4 v6, 0x0

    .line 690
    .end local v22    # "low":Z
    .local v6, "low":Z
    :goto_1e5
    add-long v36, v19, v30

    cmp-long v7, v36, v34

    if-lez v7, :cond_1ed

    const/4 v7, 0x1

    goto :goto_1ee

    :cond_1ed
    const/4 v7, 0x0

    :goto_1ee
    move v4, v7

    move/from16 v22, v6

    goto :goto_1f6

    .line 697
    .end local v6    # "low":Z
    .restart local v22    # "low":Z
    :cond_1f2
    const/4 v6, 0x1

    .line 698
    .end local v22    # "low":Z
    .restart local v6    # "low":Z
    const/4 v4, 0x1

    move/from16 v22, v6

    .line 700
    .end local v6    # "low":Z
    .restart local v22    # "low":Z
    :goto_1f6
    iget-object v6, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v7, v1, 0x1

    .end local v1    # "ndigit":I
    .local v7, "ndigit":I
    move/from16 p2, v4

    .end local v4    # "high":Z
    .restart local p2    # "high":Z
    add-int/lit8 v4, v5, 0x30

    int-to-char v4, v4

    aput-char v4, v6, v1

    move/from16 v4, p2

    move/from16 v25, v5

    move v1, v7

    goto :goto_1cc

    .line 702
    .end local v5    # "q":I
    .end local v7    # "ndigit":I
    .end local p2    # "high":Z
    .restart local v1    # "ndigit":I
    .restart local v4    # "high":Z
    .restart local v25    # "q":I
    :cond_207
    const/4 v5, 0x1

    shl-long v6, v19, v5

    sub-long v5, v6, v34

    .line 703
    .local v5, "lowDigitDifference":J
    cmp-long v7, v19, v23

    if-nez v7, :cond_212

    const/4 v7, 0x1

    goto :goto_213

    :cond_212
    const/4 v7, 0x0

    :goto_213
    iput-boolean v7, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    .line 704
    .end local v19    # "b":J
    .end local v28    # "s":J
    .end local v30    # "m":J
    .end local v34    # "tens":J
    move-wide/from16 v28, v2

    move v3, v1

    move-wide v1, v5

    goto/16 :goto_2fc

    .line 595
    .end local v4    # "high":Z
    .end local v9    # "nFractBits":I
    .end local v11    # "Bbits":I
    .end local v22    # "low":Z
    .end local v25    # "q":I
    .end local v26    # "tenSbits":I
    .end local v27    # "tailZeros":I
    .local v1, "tenSbits":I
    .local v5, "tailZeros":I
    .local v6, "nFractBits":I
    .local v7, "Bbits":I
    .local v19, "ndigit":I
    :cond_21b
    move/from16 v26, v1

    move/from16 v27, v5

    move v9, v6

    move v11, v7

    .line 710
    .end local v1    # "tenSbits":I
    .end local v5    # "tailZeros":I
    .end local v6    # "nFractBits":I
    .end local v7    # "Bbits":I
    .restart local v9    # "nFractBits":I
    .restart local v11    # "Bbits":I
    .restart local v26    # "tenSbits":I
    .restart local v27    # "tailZeros":I
    invoke-static {v14, v15}, Lsun/misc/FDBigInteger;->valueOfPow52(II)Lsun/misc/FDBigInteger;

    move-result-object v1

    .line 711
    .local v1, "Sval":Lsun/misc/FDBigInteger;
    invoke-virtual {v1}, Lsun/misc/FDBigInteger;->getNormalizationBias()I

    move-result v4

    .line 712
    .local v4, "shiftBias":I
    invoke-virtual {v1, v4}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v1

    .line 714
    add-int v5, v13, v4

    invoke-static {v2, v3, v12, v5}, Lsun/misc/FDBigInteger;->valueOfMulPow52(JII)Lsun/misc/FDBigInteger;

    move-result-object v5

    .line 715
    .local v5, "Bval":Lsun/misc/FDBigInteger;
    add-int/lit8 v6, v16, 0x1

    add-int v7, v17, v4

    const/16 v20, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-static {v6, v7}, Lsun/misc/FDBigInteger;->valueOfPow52(II)Lsun/misc/FDBigInteger;

    move-result-object v6

    .line 717
    .local v6, "Mval":Lsun/misc/FDBigInteger;
    add-int/lit8 v7, v14, 0x1

    add-int v21, v15, v4

    move-wide/from16 v28, v2

    .end local v2    # "fractBits":J
    .local v28, "fractBits":J
    add-int/lit8 v2, v21, 0x1

    invoke-static {v7, v2}, Lsun/misc/FDBigInteger;->valueOfPow52(II)Lsun/misc/FDBigInteger;

    move-result-object v2

    .line 723
    .local v2, "tenSval":Lsun/misc/FDBigInteger;
    const/4 v3, 0x0

    .line 724
    .end local v19    # "ndigit":I
    .local v3, "ndigit":I
    invoke-virtual {v5, v1}, Lsun/misc/FDBigInteger;->quoRemIteration(Lsun/misc/FDBigInteger;)I

    move-result v7

    .line 725
    .local v7, "q":I
    invoke-virtual {v5, v6}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v19

    if-gez v19, :cond_259

    const/16 v19, 0x1

    goto :goto_25b

    :cond_259
    const/16 v19, 0x0

    .line 726
    .local v19, "low":Z
    :goto_25b
    invoke-virtual {v2, v5, v6}, Lsun/misc/FDBigInteger;->addAndCmp(Lsun/misc/FDBigInteger;Lsun/misc/FDBigInteger;)I

    move-result v20

    if-gtz v20, :cond_264

    const/16 v20, 0x1

    goto :goto_266

    :cond_264
    const/16 v20, 0x0

    .line 728
    .local v20, "high":Z
    :goto_266
    nop

    .line 729
    if-nez v7, :cond_272

    if-nez v20, :cond_272

    .line 731
    add-int/lit8 v10, v10, -0x1

    move/from16 v22, v4

    move-object/from16 v30, v6

    goto :goto_281

    .line 733
    :cond_272
    move/from16 v22, v4

    .end local v4    # "shiftBias":I
    .local v22, "shiftBias":I
    iget-object v4, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v25, v3, 0x1

    .end local v3    # "ndigit":I
    .local v25, "ndigit":I
    move-object/from16 v30, v6

    .end local v6    # "Mval":Lsun/misc/FDBigInteger;
    .local v30, "Mval":Lsun/misc/FDBigInteger;
    add-int/lit8 v6, v7, 0x30

    int-to-char v6, v6

    aput-char v6, v4, v3

    move/from16 v3, v25

    .line 741
    .end local v25    # "ndigit":I
    .restart local v3    # "ndigit":I
    :goto_281
    if-eqz p5, :cond_298

    const/4 v4, -0x3

    if-lt v10, v4, :cond_298

    const/16 v4, 0x8

    if-lt v10, v4, :cond_28b

    goto :goto_298

    :cond_28b
    move/from16 v25, v7

    move/from16 v4, v20

    move-object/from16 v6, v30

    move/from16 v38, v19

    move/from16 v19, v3

    move/from16 v3, v38

    goto :goto_2a3

    .line 742
    :cond_298
    :goto_298
    const/4 v4, 0x0

    move v6, v4

    .end local v19    # "low":Z
    .local v6, "low":Z
    move/from16 v19, v4

    move/from16 v25, v7

    move/from16 v19, v3

    move v3, v6

    move-object/from16 v6, v30

    .line 744
    .end local v7    # "q":I
    .end local v20    # "high":Z
    .end local v30    # "Mval":Lsun/misc/FDBigInteger;
    .local v3, "low":Z
    .local v4, "high":Z
    .local v6, "Mval":Lsun/misc/FDBigInteger;
    .local v19, "ndigit":I
    .local v25, "q":I
    :goto_2a3
    if-nez v3, :cond_2d4

    if-nez v4, :cond_2d4

    .line 745
    invoke-virtual {v5, v1}, Lsun/misc/FDBigInteger;->quoRemIteration(Lsun/misc/FDBigInteger;)I

    move-result v25

    .line 746
    nop

    .line 747
    invoke-virtual {v6}, Lsun/misc/FDBigInteger;->multBy10()Lsun/misc/FDBigInteger;

    move-result-object v6

    .line 748
    invoke-virtual {v5, v6}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v7

    if-gez v7, :cond_2b8

    const/4 v7, 0x1

    goto :goto_2b9

    :cond_2b8
    const/4 v7, 0x0

    :goto_2b9
    move v3, v7

    .line 749
    invoke-virtual {v2, v5, v6}, Lsun/misc/FDBigInteger;->addAndCmp(Lsun/misc/FDBigInteger;Lsun/misc/FDBigInteger;)I

    move-result v7

    if-gtz v7, :cond_2c2

    const/4 v7, 0x1

    goto :goto_2c3

    :cond_2c2
    const/4 v7, 0x0

    :goto_2c3
    move v4, v7

    .line 750
    iget-object v7, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v20, v19, 0x1

    .end local v19    # "ndigit":I
    .local v20, "ndigit":I
    move-object/from16 p2, v1

    .end local v1    # "Sval":Lsun/misc/FDBigInteger;
    .local p2, "Sval":Lsun/misc/FDBigInteger;
    add-int/lit8 v1, v25, 0x30

    int-to-char v1, v1

    aput-char v1, v7, v19

    move-object/from16 v1, p2

    move/from16 v19, v20

    goto :goto_2a3

    .line 744
    .end local v20    # "ndigit":I
    .end local p2    # "Sval":Lsun/misc/FDBigInteger;
    .restart local v1    # "Sval":Lsun/misc/FDBigInteger;
    .restart local v19    # "ndigit":I
    :cond_2d4
    move-object/from16 p2, v1

    .line 752
    .end local v1    # "Sval":Lsun/misc/FDBigInteger;
    .restart local p2    # "Sval":Lsun/misc/FDBigInteger;
    if-eqz v4, :cond_2e7

    if-eqz v3, :cond_2e7

    .line 753
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v5

    .line 754
    invoke-virtual {v5, v2}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v1

    move-object/from16 p3, v2

    .end local v2    # "tenSval":Lsun/misc/FDBigInteger;
    .local p3, "tenSval":Lsun/misc/FDBigInteger;
    int-to-long v1, v1

    .local v1, "lowDigitDifference":J
    goto :goto_2eb

    .line 752
    .end local v1    # "lowDigitDifference":J
    .end local p3    # "tenSval":Lsun/misc/FDBigInteger;
    .restart local v2    # "tenSval":Lsun/misc/FDBigInteger;
    :cond_2e7
    move-object/from16 p3, v2

    .line 756
    .end local v2    # "tenSval":Lsun/misc/FDBigInteger;
    .restart local p3    # "tenSval":Lsun/misc/FDBigInteger;
    const-wide/16 v1, 0x0

    .line 758
    .restart local v1    # "lowDigitDifference":J
    :goto_2eb
    sget-object v7, Lsun/misc/FDBigInteger;->ZERO:Lsun/misc/FDBigInteger;

    invoke-virtual {v5, v7}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v7

    if-nez v7, :cond_2f5

    const/4 v7, 0x1

    goto :goto_2f6

    :cond_2f5
    const/4 v7, 0x0

    :goto_2f6
    iput-boolean v7, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    move/from16 v22, v3

    move/from16 v3, v19

    .line 760
    .end local v5    # "Bval":Lsun/misc/FDBigInteger;
    .end local v6    # "Mval":Lsun/misc/FDBigInteger;
    .end local v19    # "ndigit":I
    .end local p2    # "Sval":Lsun/misc/FDBigInteger;
    .end local p3    # "tenSval":Lsun/misc/FDBigInteger;
    .local v3, "ndigit":I
    .local v22, "low":Z
    :goto_2fc
    add-int/lit8 v5, v10, 0x1

    iput v5, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    .line 761
    const/4 v5, 0x0

    iput v5, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    .line 762
    iput v3, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    .line 766
    if-eqz v4, :cond_328

    .line 767
    if-eqz v22, :cond_325

    .line 768
    cmp-long v5, v1, v23

    if-nez v5, :cond_31d

    .line 771
    iget-object v5, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    const/4 v6, 0x0

    add-int v7, v6, v3

    const/4 v6, 0x1

    sub-int/2addr v7, v6

    aget-char v5, v5, v7

    and-int/2addr v5, v6

    if-eqz v5, :cond_328

    .line 772
    invoke-direct/range {p0 .. p0}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->roundup()V

    goto :goto_328

    .line 774
    :cond_31d
    cmp-long v5, v1, v23

    if-lez v5, :cond_328

    .line 775
    invoke-direct/range {p0 .. p0}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->roundup()V

    goto :goto_328

    .line 778
    :cond_325
    invoke-direct/range {p0 .. p0}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->roundup()V

    .line 781
    :cond_328
    :goto_328
    return-void
.end method

.method static blacklist estimateDecExp(JI)I
    .registers 23
    .param p0, "fractBits"    # J
    .param p2, "binExp"    # I

    .line 820
    const-wide v0, 0xfffffffffffffL

    and-long v2, p0, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    or-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 821
    .local v2, "d2":D
    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    sub-double v4, v2, v4

    const-wide v6, 0x3fd287a762c9bd93L    # 0.289529654

    mul-double/2addr v4, v6

    const-wide v6, 0x3fc68a288b421b8cL    # 0.176091259

    add-double/2addr v4, v6

    move/from16 v6, p2

    int-to-double v7, v6

    const-wide v9, 0x3fd34413509f79fbL    # 0.301029995663981

    mul-double/2addr v7, v9

    add-double/2addr v4, v7

    .line 822
    .local v4, "d":D
    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v7

    .line 823
    .local v7, "dBits":J
    const-wide/high16 v9, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v9, v7

    const/16 v11, 0x34

    shr-long/2addr v9, v11

    long-to-int v9, v9

    add-int/lit16 v9, v9, -0x3ff

    .line 824
    .local v9, "exponent":I
    const-wide/high16 v12, -0x8000000000000000L

    and-long/2addr v12, v7

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v10, :cond_42

    move v10, v12

    goto :goto_43

    :cond_42
    move v10, v13

    .line 825
    .local v10, "isNegative":Z
    :goto_43
    if-ltz v9, :cond_61

    if-ge v9, v11, :cond_61

    .line 826
    shr-long v16, v0, v9

    .line 827
    .local v16, "mask":J
    and-long/2addr v0, v7

    const-wide/high16 v18, 0x10000000000000L

    or-long v0, v0, v18

    rsub-int/lit8 v11, v9, 0x34

    shr-long/2addr v0, v11

    long-to-int v0, v0

    .line 828
    .local v0, "r":I
    if-eqz v10, :cond_5f

    and-long v18, v16, v7

    cmp-long v1, v18, v14

    if-nez v1, :cond_5c

    neg-int v1, v0

    goto :goto_60

    :cond_5c
    neg-int v1, v0

    sub-int/2addr v1, v12

    goto :goto_60

    :cond_5f
    move v1, v0

    :goto_60
    return v1

    .line 829
    .end local v0    # "r":I
    .end local v16    # "mask":J
    :cond_61
    if-gez v9, :cond_72

    .line 830
    const-wide v0, 0x7fffffffffffffffL

    and-long/2addr v0, v7

    cmp-long v0, v0, v14

    if-nez v0, :cond_6e

    goto :goto_71

    .line 831
    :cond_6e
    if-eqz v10, :cond_71

    const/4 v13, -0x1

    .line 830
    :cond_71
    :goto_71
    return v13

    .line 833
    :cond_72
    double-to-int v0, v4

    return v0
.end method

.method private blacklist getChars([C)I
    .registers 10
    .param p1, "result"    # [C

    .line 906
    nop

    .line 907
    const/4 v0, 0x0

    .line 908
    .local v0, "i":I
    iget-boolean v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->isNegative:Z

    const/16 v2, 0x2d

    if-eqz v1, :cond_c

    .line 909
    const/4 v1, 0x0

    aput-char v2, p1, v1

    .line 910
    const/4 v0, 0x1

    .line 912
    :cond_c
    iget v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    const/16 v3, 0x2e

    const/16 v4, 0x30

    if-lez v1, :cond_53

    const/16 v5, 0x8

    if-ge v1, v5, :cond_53

    .line 914
    iget v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 915
    .local v1, "charLength":I
    iget-object v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    invoke-static {v2, v5, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 916
    add-int/2addr v0, v1

    .line 917
    iget v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    if-ge v1, v2, :cond_3a

    .line 918
    sub-int/2addr v2, v1

    .line 919
    .end local v1    # "charLength":I
    .local v2, "charLength":I
    add-int v1, v0, v2

    invoke-static {p1, v0, v1, v4}, Ljava/util/Arrays;->fill([CIIC)V

    .line 920
    add-int/2addr v0, v2

    .line 921
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-char v3, p1, v0

    .line 922
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-char v4, p1, v1

    goto :goto_51

    .line 924
    .end local v2    # "charLength":I
    .local v1, "charLength":I
    :cond_3a
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .local v2, "i":I
    aput-char v3, p1, v0

    .line 925
    iget v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    if-ge v1, v0, :cond_4d

    .line 926
    sub-int/2addr v0, v1

    .line 927
    .local v0, "t":I
    iget-object v3, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v4, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    add-int/2addr v4, v1

    invoke-static {v3, v4, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 928
    add-int/2addr v0, v2

    .line 929
    .end local v2    # "i":I
    .local v0, "i":I
    goto :goto_51

    .line 930
    .end local v0    # "i":I
    .restart local v2    # "i":I
    :cond_4d
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aput-char v4, p1, v2

    .line 933
    .end local v1    # "charLength":I
    :goto_51
    goto/16 :goto_eb

    :cond_53
    if-gtz v1, :cond_78

    const/4 v5, -0x3

    if-le v1, v5, :cond_78

    .line 934
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    aput-char v4, p1, v0

    .line 935
    add-int/lit8 v0, v2, 0x1

    .end local v2    # "i":I
    .restart local v0    # "i":I
    aput-char v3, p1, v2

    .line 936
    if-eqz v1, :cond_6a

    .line 937
    sub-int v1, v0, v1

    invoke-static {p1, v0, v1, v4}, Ljava/util/Arrays;->fill([CIIC)V

    .line 938
    iget v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    sub-int/2addr v0, v1

    .line 940
    :cond_6a
    iget-object v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    iget v3, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    invoke-static {v1, v2, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 941
    iget v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    add-int/2addr v0, v1

    goto/16 :goto_eb

    .line 943
    :cond_78
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    iget-object v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v6, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    aget-char v7, v5, v6

    aput-char v7, p1, v0

    .line 944
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    aput-char v3, p1, v1

    .line 945
    iget v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    const/4 v3, 0x1

    if-le v1, v3, :cond_95

    .line 946
    add-int/2addr v6, v3

    sub-int/2addr v1, v3

    invoke-static {v5, v6, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 947
    iget v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    sub-int/2addr v1, v3

    add-int/2addr v0, v1

    goto :goto_9a

    .line 949
    :cond_95
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    aput-char v4, p1, v0

    move v0, v1

    .line 951
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :goto_9a
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    const/16 v5, 0x45

    aput-char v5, p1, v0

    .line 953
    iget v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    if-gtz v0, :cond_ac

    .line 954
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    aput-char v2, p1, v1

    .line 955
    neg-int v0, v0

    add-int/2addr v0, v3

    move v1, v5

    .local v0, "e":I
    goto :goto_ad

    .line 957
    .end local v0    # "e":I
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_ac
    sub-int/2addr v0, v3

    .line 960
    .restart local v0    # "e":I
    :goto_ad
    const/16 v2, 0x9

    if-gt v0, v2, :cond_ba

    .line 961
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, p1, v1

    move v0, v2

    goto :goto_eb

    .line 962
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :cond_ba
    const/16 v2, 0x63

    if-gt v0, v2, :cond_d0

    .line 963
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    div-int/lit8 v3, v0, 0xa

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p1, v1

    .line 964
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    rem-int/lit8 v3, v0, 0xa

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p1, v2

    move v0, v1

    goto :goto_eb

    .line 966
    :cond_d0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    div-int/lit8 v3, v0, 0x64

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p1, v1

    .line 967
    rem-int/lit8 v0, v0, 0x64

    .line 968
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    div-int/lit8 v3, v0, 0xa

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p1, v2

    .line 969
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    rem-int/lit8 v3, v0, 0xa

    add-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p1, v1

    move v0, v2

    .line 972
    .end local v2    # "i":I
    .local v0, "i":I
    :goto_eb
    return v0
.end method

.method private static blacklist insignificantDigits(I)I
    .registers 6
    .param p0, "insignificant"    # I

    .line 839
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    int-to-long v1, p0

    const-wide/16 v3, 0xa

    cmp-long v1, v1, v3

    if-ltz v1, :cond_e

    .line 840
    int-to-long v1, p0

    div-long/2addr v1, v3

    long-to-int p0, v1

    .line 839
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 842
    :cond_e
    return v0
.end method

.method private static blacklist insignificantDigitsForPow2(I)I
    .registers 3
    .param p0, "p2"    # I

    .line 852
    const/4 v0, 0x1

    if-le p0, v0, :cond_b

    sget-object v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->insignificantDigitsNumber:[I

    array-length v1, v0

    if-ge p0, v1, :cond_b

    .line 853
    aget v0, v0, p0

    return v0

    .line 855
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist roundup()V
    .registers 7

    .line 789
    iget v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    iget v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 790
    .local v0, "i":I
    iget-object v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    aget-char v2, v2, v0

    .line 791
    .local v2, "q":I
    const/16 v3, 0x39

    if-ne v2, v3, :cond_30

    .line 792
    :goto_f
    if-ne v2, v3, :cond_20

    iget v4, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    if-le v0, v4, :cond_20

    .line 793
    iget-object v4, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    const/16 v5, 0x30

    aput-char v5, v4, v0

    .line 794
    add-int/lit8 v0, v0, -0x1

    aget-char v2, v4, v0

    goto :goto_f

    .line 796
    :cond_20
    if-ne v2, v3, :cond_30

    .line 798
    iget v3, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    add-int/2addr v3, v1

    iput v3, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    .line 799
    iget-object v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v3, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    const/16 v4, 0x31

    aput-char v4, v1, v3

    .line 800
    return-void

    .line 804
    :cond_30
    iget-object v3, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v4, v2, 0x1

    int-to-char v4, v4

    aput-char v4, v3, v0

    .line 805
    iput-boolean v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decimalDigitsRoundedUp:Z

    .line 806
    return-void
.end method

.method private blacklist setSign(Z)V
    .registers 2
    .param p1, "isNegative"    # Z

    .line 349
    iput-boolean p1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->isNegative:Z

    .line 350
    return-void
.end method


# virtual methods
.method public blacklist appendTo(Ljava/lang/Appendable;)V
    .registers 6
    .param p1, "buf"    # Ljava/lang/Appendable;

    .line 307
    iget-object v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    invoke-direct {p0, v0}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->getChars([C)I

    move-result v0

    .line 308
    .local v0, "len":I
    instance-of v1, p1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 309
    move-object v1, p1

    check-cast v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    invoke-virtual {v1, v3, v2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 310
    :cond_14
    instance-of v1, p1, Ljava/lang/StringBuffer;

    if-eqz v1, :cond_21

    .line 311
    move-object v1, p1

    check-cast v1, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    invoke-virtual {v1, v3, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_22

    .line 313
    :cond_21
    nop

    .line 315
    :goto_22
    return-void
.end method

.method public blacklist decimalDigitsExact()Z
    .registers 2

    .line 345
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    return v0
.end method

.method public blacklist digitsRoundedUp()Z
    .registers 2

    .line 340
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decimalDigitsRoundedUp:Z

    return v0
.end method

.method public blacklist getDecimalExponent()I
    .registers 2

    .line 319
    iget v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    return v0
.end method

.method public blacklist getDigits([C)I
    .registers 6
    .param p1, "digits"    # [C

    .line 324
    iget-object v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    iget v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    iget v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    return v0
.end method

.method public blacklist isExceptional()Z
    .registers 2

    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isNegative()Z
    .registers 2

    .line 330
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->isNegative:Z

    return v0
.end method

.method public blacklist toJavaFormatString()Ljava/lang/String;
    .registers 5

    .line 301
    iget-object v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    invoke-direct {p0, v0}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->getChars([C)I

    move-result v0

    .line 302
    .local v0, "len":I
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method
