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
.field static final synthetic -assertionsDisabled:Z

.field private static final N_5_BITS:[I

.field private static insignificantDigitsNumber:[I


# instance fields
.field private final buffer:[C

.field private decExponent:I

.field private decimalDigitsRoundedUp:Z

.field private final digits:[C

.field private exactDecimalConversion:Z

.field private firstDigitIndex:I

.field private isNegative:Z

.field private nDigits:I


# direct methods
.method static synthetic -wrap0(Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;IJIZ)V
    .registers 6
    .param p0, "-this"    # Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;
    .param p1, "binExp"    # I
    .param p2, "fractBits"    # J
    .param p4, "nSignificantBits"    # I
    .param p5, "isCompatibleFormat"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->dtoa(IJIZ)V

    return-void
.end method

.method static synthetic -wrap1(Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;Z)V
    .registers 2
    .param p0, "-this"    # Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;
    .param p1, "isNegative"    # Z

    .prologue
    invoke-direct {p0, p1}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->setSign(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    .line 865
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_1e

    sput-object v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->insignificantDigitsNumber:[I

    .line 875
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_a2

    sput-object v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->N_5_BITS:[I

    .line 259
    return-void

    .line 865
    nop

    :array_1e
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

    .line 875
    :array_a2
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

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/16 v0, 0x1a

    new-array v0, v0, [C

    iput-object v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    .line 274
    iput-boolean v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    .line 278
    iput-boolean v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decimalDigitsRoundedUp:Z

    .line 285
    const/16 v0, 0x14

    new-array v0, v0, [C

    iput-object v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    .line 286
    return-void
.end method

.method constructor <init>(Z[C)V
    .registers 5
    .param p1, "isNegative"    # Z
    .param p2, "digits"    # [C

    .prologue
    const/4 v1, 0x0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/16 v0, 0x1a

    new-array v0, v0, [C

    iput-object v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    .line 274
    iput-boolean v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    .line 278
    iput-boolean v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decimalDigitsRoundedUp:Z

    .line 292
    iput-boolean p1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->isNegative:Z

    .line 293
    iput v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    .line 294
    iput-object p2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    .line 295
    iput v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    .line 296
    array-length v0, p2

    iput v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    .line 297
    return-void
.end method

.method private developLongDigits(IJI)V
    .registers 15
    .param p1, "decExponent"    # I
    .param p2, "lvalue"    # J
    .param p4, "insignificantDigits"    # I

    .prologue
    .line 368
    if-eqz p4, :cond_16

    .line 371
    sget-object v8, Lsun/misc/FDBigInteger;->LONG_5_POW:[J

    aget-wide v8, v8, p4

    shl-long v4, v8, p4

    .line 372
    .local v4, "pow10":J
    rem-long v6, p2, v4

    .line 373
    .local v6, "residue":J
    div-long/2addr p2, v4

    .line 374
    add-int/2addr p1, p4

    .line 375
    const/4 v8, 0x1

    shr-long v8, v4, v8

    cmp-long v8, v6, v8

    if-ltz v8, :cond_16

    .line 377
    const-wide/16 v8, 0x1

    add-long/2addr p2, v8

    .line 380
    .end local v4    # "pow10":J
    .end local v6    # "residue":J
    :cond_16
    iget-object v8, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    array-length v8, v8

    add-int/lit8 v1, v8, -0x1

    .line 382
    .local v1, "digitno":I
    const-wide/32 v8, 0x7fffffff

    cmp-long v8, p2, v8

    if-gtz v8, :cond_6c

    .line 383
    sget-boolean v8, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v8, :cond_36

    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-gtz v8, :cond_36

    new-instance v8, Ljava/lang/AssertionError;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v8

    .line 386
    :cond_36
    long-to-int v3, p2

    .line 387
    .local v3, "ivalue":I
    rem-int/lit8 v0, v3, 0xa

    .line 388
    .local v0, "c":I
    div-int/lit8 v3, v3, 0xa

    .line 389
    :goto_3b
    if-nez v0, :cond_55

    .line 390
    add-int/lit8 p1, p1, 0x1

    .line 391
    rem-int/lit8 v0, v3, 0xa

    .line 392
    div-int/lit8 v3, v3, 0xa

    goto :goto_3b

    .line 394
    .end local v1    # "digitno":I
    .local v2, "digitno":I
    :goto_44
    if-eqz v3, :cond_57

    .line 395
    iget-object v8, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v1, v2, -0x1

    .end local v2    # "digitno":I
    .restart local v1    # "digitno":I
    add-int/lit8 v9, v0, 0x30

    int-to-char v9, v9

    aput-char v9, v8, v2

    .line 396
    add-int/lit8 p1, p1, 0x1

    .line 397
    rem-int/lit8 v0, v3, 0xa

    .line 398
    div-int/lit8 v3, v3, 0xa

    :cond_55
    move v2, v1

    .end local v1    # "digitno":I
    .restart local v2    # "digitno":I
    goto :goto_44

    .line 400
    :cond_57
    iget-object v8, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v9, v0, 0x30

    int-to-char v9, v9

    aput-char v9, v8, v2

    move v1, v2

    .line 419
    .end local v2    # "digitno":I
    .end local v3    # "ivalue":I
    .restart local v1    # "digitno":I
    :goto_5f
    add-int/lit8 v8, p1, 0x1

    iput v8, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    .line 420
    iput v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    .line 421
    iget-object v8, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    array-length v8, v8

    sub-int/2addr v8, v1

    iput v8, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    .line 422
    return-void

    .line 404
    .end local v0    # "c":I
    :cond_6c
    const-wide/16 v8, 0xa

    rem-long v8, p2, v8

    long-to-int v0, v8

    .line 405
    .restart local v0    # "c":I
    const-wide/16 v8, 0xa

    div-long/2addr p2, v8

    .line 406
    :goto_74
    if-nez v0, :cond_9a

    .line 407
    add-int/lit8 p1, p1, 0x1

    .line 408
    const-wide/16 v8, 0xa

    rem-long v8, p2, v8

    long-to-int v0, v8

    .line 409
    const-wide/16 v8, 0xa

    div-long/2addr p2, v8

    goto :goto_74

    .line 411
    .end local v1    # "digitno":I
    .restart local v2    # "digitno":I
    :goto_81
    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-eqz v8, :cond_9c

    .line 412
    iget-object v8, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v1, v2, -0x1

    .end local v2    # "digitno":I
    .restart local v1    # "digitno":I
    add-int/lit8 v9, v0, 0x30

    int-to-char v9, v9

    aput-char v9, v8, v2

    .line 413
    add-int/lit8 p1, p1, 0x1

    .line 414
    const-wide/16 v8, 0xa

    rem-long v8, p2, v8

    long-to-int v0, v8

    .line 415
    const-wide/16 v8, 0xa

    div-long/2addr p2, v8

    :cond_9a
    move v2, v1

    .end local v1    # "digitno":I
    .restart local v2    # "digitno":I
    goto :goto_81

    .line 417
    :cond_9c
    iget-object v8, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v9, v0, 0x30

    int-to-char v9, v9

    aput-char v9, v8, v2

    move v1, v2

    .end local v2    # "digitno":I
    .restart local v1    # "digitno":I
    goto :goto_5f
.end method

.method private dtoa(IJIZ)V
    .registers 54
    .param p1, "binExp"    # I
    .param p2, "fractBits"    # J
    .param p4, "nSignificantBits"    # I
    .param p5, "isCompatibleFormat"    # Z

    .prologue
    .line 426
    sget-boolean v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v44, :cond_10

    const-wide/16 v44, 0x0

    cmp-long v44, p2, v44

    if-gtz v44, :cond_10

    new-instance v44, Ljava/lang/AssertionError;

    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    throw v44

    .line 427
    :cond_10
    sget-boolean v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v44, :cond_24

    const-wide/high16 v44, 0x10000000000000L

    and-long v44, v44, p2

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-nez v44, :cond_24

    new-instance v44, Ljava/lang/AssertionError;

    invoke-direct/range {v44 .. v44}, Ljava/lang/AssertionError;-><init>()V

    throw v44

    .line 431
    :cond_24
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v38

    .line 434
    .local v38, "tailZeros":I
    rsub-int/lit8 v27, v38, 0x35

    .line 439
    .local v27, "nFractBits":I
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decimalDigitsRoundedUp:Z

    .line 440
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    .line 443
    sub-int v44, v27, p1

    add-int/lit8 v44, v44, -0x1

    const/16 v45, 0x0

    move/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v30

    .line 444
    .local v30, "nTinyBits":I
    const/16 v44, 0x3e

    move/from16 v0, p1

    move/from16 v1, v44

    if-gt v0, v1, :cond_a5

    const/16 v44, -0x15

    move/from16 v0, p1

    move/from16 v1, v44

    if-lt v0, v1, :cond_a5

    .line 448
    sget-object v44, Lsun/misc/FDBigInteger;->LONG_5_POW:[J

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v30

    move/from16 v1, v44

    if-ge v0, v1, :cond_a5

    sget-object v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->N_5_BITS:[I

    aget v44, v44, v30

    add-int v44, v44, v27

    const/16 v45, 0x40

    move/from16 v0, v44

    move/from16 v1, v45

    if-ge v0, v1, :cond_a5

    .line 464
    if-nez v30, :cond_a5

    .line 466
    move/from16 v0, p1

    move/from16 v1, p4

    if-le v0, v1, :cond_9d

    .line 467
    sub-int v44, p1, p4

    add-int/lit8 v44, v44, -0x1

    invoke-static/range {v44 .. v44}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->insignificantDigitsForPow2(I)I

    move-result v22

    .line 471
    .local v22, "insignificant":I
    :goto_83
    const/16 v44, 0x34

    move/from16 v0, p1

    move/from16 v1, v44

    if-lt v0, v1, :cond_a0

    .line 472
    add-int/lit8 v44, p1, -0x34

    shl-long p2, p2, v44

    .line 476
    :goto_8f
    const/16 v44, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v44

    move-wide/from16 v2, p2

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->developLongDigits(IJI)V

    .line 477
    return-void

    .line 469
    .end local v22    # "insignificant":I
    :cond_9d
    const/16 v22, 0x0

    .restart local v22    # "insignificant":I
    goto :goto_83

    .line 474
    :cond_a0
    rsub-int/lit8 v44, p1, 0x34

    ushr-long p2, p2, v44

    goto :goto_8f

    .line 515
    .end local v22    # "insignificant":I
    :cond_a5
    move-wide/from16 v0, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->estimateDecExp(JI)I

    move-result v20

    .line 520
    .local v20, "decExp":I
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v45

    move/from16 v1, v44

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 521
    .local v7, "B5":I
    add-int v44, v7, v30

    add-int v6, v44, p1

    .line 523
    .local v6, "B2":I
    const/16 v44, 0x0

    move/from16 v0, v44

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 524
    .local v14, "S5":I
    add-int v13, v14, v30

    .line 526
    .local v13, "S2":I
    move v11, v7

    .line 527
    .local v11, "M5":I
    sub-int v10, v6, p4

    .line 537
    .local v10, "M2":I
    ushr-long p2, p2, v38

    .line 538
    add-int/lit8 v44, v27, -0x1

    sub-int v6, v6, v44

    .line 539
    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 540
    .local v17, "common2factor":I
    sub-int v6, v6, v17

    .line 541
    sub-int v13, v13, v17

    .line 542
    sub-int v10, v10, v17

    .line 550
    const/16 v44, 0x1

    move/from16 v0, v27

    move/from16 v1, v44

    if-ne v0, v1, :cond_e9

    .line 551
    add-int/lit8 v10, v10, -0x1

    .line 554
    :cond_e9
    if-gez v10, :cond_ee

    .line 558
    sub-int/2addr v6, v10

    .line 559
    sub-int/2addr v13, v10

    .line 560
    const/4 v10, 0x0

    .line 570
    :cond_ee
    const/16 v31, 0x0

    .line 591
    .local v31, "ndigit":I
    add-int v45, v27, v6

    sget-object v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->N_5_BITS:[I

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v44, v0

    move/from16 v0, v44

    if-ge v7, v0, :cond_185

    sget-object v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->N_5_BITS:[I

    aget v44, v44, v7

    :goto_101
    add-int v8, v45, v44

    .line 594
    .local v8, "Bbits":I
    add-int/lit8 v45, v13, 0x1

    add-int/lit8 v44, v14, 0x1

    sget-object v46, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->N_5_BITS:[I

    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v46, v0

    move/from16 v0, v44

    move/from16 v1, v46

    if-ge v0, v1, :cond_189

    sget-object v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->N_5_BITS:[I

    add-int/lit8 v46, v14, 0x1

    aget v44, v44, v46

    :goto_11a
    add-int v39, v45, v44

    .line 595
    .local v39, "tenSbits":I
    const/16 v44, 0x40

    move/from16 v0, v44

    if-ge v8, v0, :cond_38a

    const/16 v44, 0x40

    move/from16 v0, v39

    move/from16 v1, v44

    if-ge v0, v1, :cond_38a

    .line 596
    const/16 v44, 0x20

    move/from16 v0, v44

    if-ge v8, v0, :cond_283

    const/16 v44, 0x20

    move/from16 v0, v39

    move/from16 v1, v44

    if-ge v0, v1, :cond_283

    .line 598
    move-wide/from16 v0, p2

    long-to-int v0, v0

    move/from16 v44, v0

    sget-object v45, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v45, v45, v7

    mul-int v44, v44, v45

    shl-int v16, v44, v6

    .line 599
    .local v16, "b":I
    sget-object v44, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v44, v44, v14

    shl-int v34, v44, v13

    .line 600
    .local v34, "s":I
    sget-object v44, Lsun/misc/FDBigInteger;->SMALL_5_POW:[I

    aget v44, v44, v7

    shl-int v26, v44, v10

    .line 601
    .local v26, "m":I
    mul-int/lit8 v41, v34, 0xa

    .line 607
    .local v41, "tens":I
    const/16 v31, 0x0

    .line 608
    div-int v33, v16, v34

    .line 609
    .local v33, "q":I
    rem-int v44, v16, v34

    mul-int/lit8 v16, v44, 0xa

    .line 610
    mul-int/lit8 v26, v26, 0xa

    .line 611
    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_18e

    const/16 v23, 0x1

    .line 612
    .local v23, "low":Z
    :goto_165
    add-int v44, v16, v26

    move/from16 v0, v44

    move/from16 v1, v41

    if-le v0, v1, :cond_191

    const/16 v21, 0x1

    .line 613
    .local v21, "high":Z
    :goto_16f
    sget-boolean v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v44, :cond_194

    const/16 v44, 0xa

    move/from16 v0, v33

    move/from16 v1, v44

    if-lt v0, v1, :cond_194

    new-instance v44, Ljava/lang/AssertionError;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v44

    .line 591
    .end local v8    # "Bbits":I
    .end local v16    # "b":I
    .end local v21    # "high":Z
    .end local v23    # "low":Z
    .end local v26    # "m":I
    .end local v33    # "q":I
    .end local v34    # "s":I
    .end local v39    # "tenSbits":I
    .end local v41    # "tens":I
    :cond_185
    mul-int/lit8 v44, v7, 0x3

    goto/16 :goto_101

    .line 594
    .restart local v8    # "Bbits":I
    :cond_189
    add-int/lit8 v44, v14, 0x1

    mul-int/lit8 v44, v44, 0x3

    goto :goto_11a

    .line 611
    .restart local v16    # "b":I
    .restart local v26    # "m":I
    .restart local v33    # "q":I
    .restart local v34    # "s":I
    .restart local v39    # "tenSbits":I
    .restart local v41    # "tens":I
    :cond_18e
    const/16 v23, 0x0

    .restart local v23    # "low":Z
    goto :goto_165

    .line 612
    :cond_191
    const/16 v21, 0x0

    .restart local v21    # "high":Z
    goto :goto_16f

    .line 614
    :cond_194
    if-nez v33, :cond_1d0

    xor-int/lit8 v44, v21, 0x1

    if-eqz v44, :cond_1d0

    .line 616
    add-int/lit8 v20, v20, -0x1

    .line 626
    :goto_19c
    if-eqz p5, :cond_1a6

    const/16 v44, -0x3

    move/from16 v0, v20

    move/from16 v1, v44

    if-ge v0, v1, :cond_1e4

    .line 627
    :cond_1a6
    const/16 v23, 0x0

    const/16 v21, 0x0

    move/from16 v32, v31

    .line 629
    .end local v31    # "ndigit":I
    .local v32, "ndigit":I
    :goto_1ac
    if-nez v23, :cond_22b

    xor-int/lit8 v44, v21, 0x1

    if-eqz v44, :cond_22b

    .line 630
    div-int v33, v16, v34

    .line 631
    rem-int v44, v16, v34

    mul-int/lit8 v16, v44, 0xa

    .line 632
    mul-int/lit8 v26, v26, 0xa

    .line 633
    sget-boolean v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v44, :cond_1ef

    const/16 v44, 0xa

    move/from16 v0, v33

    move/from16 v1, v44

    if-lt v0, v1, :cond_1ef

    new-instance v44, Ljava/lang/AssertionError;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v44

    .line 618
    .end local v32    # "ndigit":I
    .restart local v31    # "ndigit":I
    :cond_1d0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    move-object/from16 v44, v0

    .line 607
    const/16 v45, 0x0

    .line 618
    const/16 v31, 0x1

    add-int/lit8 v46, v33, 0x30

    move/from16 v0, v46

    int-to-char v0, v0

    move/from16 v46, v0

    aput-char v46, v44, v45

    goto :goto_19c

    .line 626
    :cond_1e4
    const/16 v44, 0x8

    move/from16 v0, v20

    move/from16 v1, v44

    if-ge v0, v1, :cond_1a6

    move/from16 v32, v31

    .end local v31    # "ndigit":I
    .restart local v32    # "ndigit":I
    goto :goto_1ac

    .line 634
    :cond_1ef
    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmp-long v44, v44, v46

    if-lez v44, :cond_226

    .line 635
    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_220

    const/16 v23, 0x1

    .line 636
    :goto_202
    add-int v44, v16, v26

    move/from16 v0, v44

    move/from16 v1, v41

    if-le v0, v1, :cond_223

    const/16 v21, 0x1

    .line 646
    :goto_20c
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    move-object/from16 v44, v0

    add-int/lit8 v31, v32, 0x1

    .end local v32    # "ndigit":I
    .restart local v31    # "ndigit":I
    add-int/lit8 v45, v33, 0x30

    move/from16 v0, v45

    int-to-char v0, v0

    move/from16 v45, v0

    aput-char v45, v44, v32

    move/from16 v32, v31

    .end local v31    # "ndigit":I
    .restart local v32    # "ndigit":I
    goto :goto_1ac

    .line 635
    :cond_220
    const/16 v23, 0x0

    goto :goto_202

    .line 636
    :cond_223
    const/16 v21, 0x0

    goto :goto_20c

    .line 643
    :cond_226
    const/16 v23, 0x1

    .line 644
    const/16 v21, 0x1

    goto :goto_20c

    .line 648
    :cond_22b
    shl-int/lit8 v44, v16, 0x1

    sub-int v44, v44, v41

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 649
    .local v24, "lowDigitDifference":J
    if-nez v16, :cond_280

    const/16 v44, 0x1

    :goto_238
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    move/from16 v31, v32

    .line 760
    .end local v16    # "b":I
    .end local v26    # "m":I
    .end local v32    # "ndigit":I
    .end local v34    # "s":I
    .end local v41    # "tens":I
    .restart local v31    # "ndigit":I
    :goto_240
    add-int/lit8 v44, v20, 0x1

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    .line 761
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput v0, v1, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    .line 762
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    .line 766
    if-eqz v21, :cond_27f

    .line 767
    if-eqz v23, :cond_4af

    .line 768
    const-wide/16 v44, 0x0

    cmp-long v44, v24, v44

    if-nez v44, :cond_4a4

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget v0, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    move/from16 v46, v0

    add-int v45, v45, v46

    add-int/lit8 v45, v45, -0x1

    aget-char v44, v44, v45

    and-int/lit8 v44, v44, 0x1

    if-eqz v44, :cond_27f

    .line 772
    invoke-direct/range {p0 .. p0}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->roundup()V

    .line 781
    :cond_27f
    :goto_27f
    return-void

    .line 649
    .end local v31    # "ndigit":I
    .restart local v16    # "b":I
    .restart local v26    # "m":I
    .restart local v32    # "ndigit":I
    .restart local v34    # "s":I
    .restart local v41    # "tens":I
    :cond_280
    const/16 v44, 0x0

    goto :goto_238

    .line 652
    .end local v16    # "b":I
    .end local v21    # "high":Z
    .end local v23    # "low":Z
    .end local v24    # "lowDigitDifference":J
    .end local v26    # "m":I
    .end local v32    # "ndigit":I
    .end local v33    # "q":I
    .end local v34    # "s":I
    .end local v41    # "tens":I
    .restart local v31    # "ndigit":I
    :cond_283
    sget-object v44, Lsun/misc/FDBigInteger;->LONG_5_POW:[J

    aget-wide v44, v44, v7

    mul-long v44, v44, p2

    shl-long v18, v44, v6

    .line 653
    .local v18, "b":J
    sget-object v44, Lsun/misc/FDBigInteger;->LONG_5_POW:[J

    aget-wide v44, v44, v14

    shl-long v36, v44, v13

    .line 654
    .local v36, "s":J
    sget-object v44, Lsun/misc/FDBigInteger;->LONG_5_POW:[J

    aget-wide v44, v44, v7

    shl-long v28, v44, v10

    .line 655
    .local v28, "m":J
    const-wide/16 v44, 0xa

    mul-long v42, v36, v44

    .line 661
    .local v42, "tens":J
    const/16 v31, 0x0

    .line 662
    div-long v44, v18, v36

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v33, v0

    .line 663
    .restart local v33    # "q":I
    rem-long v44, v18, v36

    const-wide/16 v46, 0xa

    mul-long v18, v46, v44

    .line 664
    const-wide/16 v44, 0xa

    mul-long v28, v28, v44

    .line 665
    cmp-long v44, v18, v28

    if-gez v44, :cond_2d2

    const/16 v23, 0x1

    .line 666
    .restart local v23    # "low":Z
    :goto_2b4
    add-long v44, v18, v28

    cmp-long v44, v44, v42

    if-lez v44, :cond_2d5

    const/16 v21, 0x1

    .line 667
    .restart local v21    # "high":Z
    :goto_2bc
    sget-boolean v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v44, :cond_2d8

    const/16 v44, 0xa

    move/from16 v0, v33

    move/from16 v1, v44

    if-lt v0, v1, :cond_2d8

    new-instance v44, Ljava/lang/AssertionError;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v44

    .line 665
    .end local v21    # "high":Z
    .end local v23    # "low":Z
    :cond_2d2
    const/16 v23, 0x0

    .restart local v23    # "low":Z
    goto :goto_2b4

    .line 666
    :cond_2d5
    const/16 v21, 0x0

    .restart local v21    # "high":Z
    goto :goto_2bc

    .line 668
    :cond_2d8
    if-nez v33, :cond_31d

    xor-int/lit8 v44, v21, 0x1

    if-eqz v44, :cond_31d

    .line 670
    add-int/lit8 v20, v20, -0x1

    .line 680
    :goto_2e0
    if-eqz p5, :cond_2ea

    const/16 v44, -0x3

    move/from16 v0, v20

    move/from16 v1, v44

    if-ge v0, v1, :cond_331

    .line 681
    :cond_2ea
    const/16 v23, 0x0

    const/16 v21, 0x0

    move/from16 v32, v31

    .line 683
    .end local v31    # "ndigit":I
    .restart local v32    # "ndigit":I
    :goto_2f0
    if-nez v23, :cond_36f

    xor-int/lit8 v44, v21, 0x1

    if-eqz v44, :cond_36f

    .line 684
    div-long v44, v18, v36

    move-wide/from16 v0, v44

    long-to-int v0, v0

    move/from16 v33, v0

    .line 685
    rem-long v44, v18, v36

    const-wide/16 v46, 0xa

    mul-long v18, v46, v44

    .line 686
    const-wide/16 v44, 0xa

    mul-long v28, v28, v44

    .line 687
    sget-boolean v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v44, :cond_33c

    const/16 v44, 0xa

    move/from16 v0, v33

    move/from16 v1, v44

    if-lt v0, v1, :cond_33c

    new-instance v44, Ljava/lang/AssertionError;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v44

    .line 672
    .end local v32    # "ndigit":I
    .restart local v31    # "ndigit":I
    :cond_31d
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    move-object/from16 v44, v0

    .line 661
    const/16 v45, 0x0

    .line 672
    const/16 v31, 0x1

    add-int/lit8 v46, v33, 0x30

    move/from16 v0, v46

    int-to-char v0, v0

    move/from16 v46, v0

    aput-char v46, v44, v45

    goto :goto_2e0

    .line 680
    :cond_331
    const/16 v44, 0x8

    move/from16 v0, v20

    move/from16 v1, v44

    if-ge v0, v1, :cond_2ea

    move/from16 v32, v31

    .end local v31    # "ndigit":I
    .restart local v32    # "ndigit":I
    goto :goto_2f0

    .line 688
    :cond_33c
    const-wide/16 v44, 0x0

    cmp-long v44, v28, v44

    if-lez v44, :cond_36a

    .line 689
    cmp-long v44, v18, v28

    if-gez v44, :cond_364

    const/16 v23, 0x1

    .line 690
    :goto_348
    add-long v44, v18, v28

    cmp-long v44, v44, v42

    if-lez v44, :cond_367

    const/16 v21, 0x1

    .line 700
    :goto_350
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    move-object/from16 v44, v0

    add-int/lit8 v31, v32, 0x1

    .end local v32    # "ndigit":I
    .restart local v31    # "ndigit":I
    add-int/lit8 v45, v33, 0x30

    move/from16 v0, v45

    int-to-char v0, v0

    move/from16 v45, v0

    aput-char v45, v44, v32

    move/from16 v32, v31

    .end local v31    # "ndigit":I
    .restart local v32    # "ndigit":I
    goto :goto_2f0

    .line 689
    :cond_364
    const/16 v23, 0x0

    goto :goto_348

    .line 690
    :cond_367
    const/16 v21, 0x0

    goto :goto_350

    .line 697
    :cond_36a
    const/16 v23, 0x1

    .line 698
    const/16 v21, 0x1

    goto :goto_350

    .line 702
    :cond_36f
    const/16 v44, 0x1

    shl-long v44, v18, v44

    sub-long v24, v44, v42

    .line 703
    .restart local v24    # "lowDigitDifference":J
    const-wide/16 v44, 0x0

    cmp-long v44, v18, v44

    if-nez v44, :cond_387

    const/16 v44, 0x1

    :goto_37d
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    move/from16 v31, v32

    .end local v32    # "ndigit":I
    .restart local v31    # "ndigit":I
    goto/16 :goto_240

    .end local v31    # "ndigit":I
    .restart local v32    # "ndigit":I
    :cond_387
    const/16 v44, 0x0

    goto :goto_37d

    .line 710
    .end local v18    # "b":J
    .end local v21    # "high":Z
    .end local v23    # "low":Z
    .end local v24    # "lowDigitDifference":J
    .end local v28    # "m":J
    .end local v32    # "ndigit":I
    .end local v33    # "q":I
    .end local v36    # "s":J
    .end local v42    # "tens":J
    .restart local v31    # "ndigit":I
    :cond_38a
    invoke-static {v14, v13}, Lsun/misc/FDBigInteger;->valueOfPow52(II)Lsun/misc/FDBigInteger;

    move-result-object v15

    .line 711
    .local v15, "Sval":Lsun/misc/FDBigInteger;
    invoke-virtual {v15}, Lsun/misc/FDBigInteger;->getNormalizationBias()I

    move-result v35

    .line 712
    .local v35, "shiftBias":I
    move/from16 v0, v35

    invoke-virtual {v15, v0}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v15

    .line 714
    add-int v44, v6, v35

    move-wide/from16 v0, p2

    move/from16 v2, v44

    invoke-static {v0, v1, v7, v2}, Lsun/misc/FDBigInteger;->valueOfMulPow52(JII)Lsun/misc/FDBigInteger;

    move-result-object v9

    .line 715
    .local v9, "Bval":Lsun/misc/FDBigInteger;
    add-int/lit8 v44, v7, 0x1

    add-int v45, v10, v35

    add-int/lit8 v45, v45, 0x1

    invoke-static/range {v44 .. v45}, Lsun/misc/FDBigInteger;->valueOfPow52(II)Lsun/misc/FDBigInteger;

    move-result-object v12

    .line 717
    .local v12, "Mval":Lsun/misc/FDBigInteger;
    add-int/lit8 v44, v14, 0x1

    add-int v45, v13, v35

    add-int/lit8 v45, v45, 0x1

    invoke-static/range {v44 .. v45}, Lsun/misc/FDBigInteger;->valueOfPow52(II)Lsun/misc/FDBigInteger;

    move-result-object v40

    .line 723
    .local v40, "tenSval":Lsun/misc/FDBigInteger;
    const/16 v31, 0x0

    .line 724
    invoke-virtual {v9, v15}, Lsun/misc/FDBigInteger;->quoRemIteration(Lsun/misc/FDBigInteger;)I

    move-result v33

    .line 725
    .restart local v33    # "q":I
    invoke-virtual {v9, v12}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v44

    if-gez v44, :cond_3e4

    const/16 v23, 0x1

    .line 726
    .restart local v23    # "low":Z
    :goto_3c4
    move-object/from16 v0, v40

    invoke-virtual {v0, v9, v12}, Lsun/misc/FDBigInteger;->addAndCmp(Lsun/misc/FDBigInteger;Lsun/misc/FDBigInteger;)I

    move-result v44

    if-gtz v44, :cond_3e7

    const/16 v21, 0x1

    .line 728
    .restart local v21    # "high":Z
    :goto_3ce
    sget-boolean v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v44, :cond_3ea

    const/16 v44, 0xa

    move/from16 v0, v33

    move/from16 v1, v44

    if-lt v0, v1, :cond_3ea

    new-instance v44, Ljava/lang/AssertionError;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v44

    .line 725
    .end local v21    # "high":Z
    .end local v23    # "low":Z
    :cond_3e4
    const/16 v23, 0x0

    .restart local v23    # "low":Z
    goto :goto_3c4

    .line 726
    :cond_3e7
    const/16 v21, 0x0

    .restart local v21    # "high":Z
    goto :goto_3ce

    .line 729
    :cond_3ea
    if-nez v33, :cond_422

    xor-int/lit8 v44, v21, 0x1

    if-eqz v44, :cond_422

    .line 731
    add-int/lit8 v20, v20, -0x1

    .line 741
    :goto_3f2
    if-eqz p5, :cond_3fc

    const/16 v44, -0x3

    move/from16 v0, v20

    move/from16 v1, v44

    if-ge v0, v1, :cond_436

    .line 742
    :cond_3fc
    const/16 v23, 0x0

    const/16 v21, 0x0

    move/from16 v32, v31

    .line 744
    .end local v31    # "ndigit":I
    .restart local v32    # "ndigit":I
    :goto_402
    if-nez v23, :cond_471

    xor-int/lit8 v44, v21, 0x1

    if-eqz v44, :cond_471

    .line 745
    invoke-virtual {v9, v15}, Lsun/misc/FDBigInteger;->quoRemIteration(Lsun/misc/FDBigInteger;)I

    move-result v33

    .line 746
    sget-boolean v44, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v44, :cond_441

    const/16 v44, 0xa

    move/from16 v0, v33

    move/from16 v1, v44

    if-lt v0, v1, :cond_441

    new-instance v44, Ljava/lang/AssertionError;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    invoke-direct/range {v44 .. v45}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v44

    .line 733
    .end local v32    # "ndigit":I
    .restart local v31    # "ndigit":I
    :cond_422
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    move-object/from16 v44, v0

    .line 723
    const/16 v45, 0x0

    .line 733
    const/16 v31, 0x1

    add-int/lit8 v46, v33, 0x30

    move/from16 v0, v46

    int-to-char v0, v0

    move/from16 v46, v0

    aput-char v46, v44, v45

    goto :goto_3f2

    .line 741
    :cond_436
    const/16 v44, 0x8

    move/from16 v0, v20

    move/from16 v1, v44

    if-ge v0, v1, :cond_3fc

    move/from16 v32, v31

    .end local v31    # "ndigit":I
    .restart local v32    # "ndigit":I
    goto :goto_402

    .line 747
    :cond_441
    invoke-virtual {v12}, Lsun/misc/FDBigInteger;->multBy10()Lsun/misc/FDBigInteger;

    move-result-object v12

    .line 748
    invoke-virtual {v9, v12}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v44

    if-gez v44, :cond_46b

    const/16 v23, 0x1

    .line 749
    :goto_44d
    move-object/from16 v0, v40

    invoke-virtual {v0, v9, v12}, Lsun/misc/FDBigInteger;->addAndCmp(Lsun/misc/FDBigInteger;Lsun/misc/FDBigInteger;)I

    move-result v44

    if-gtz v44, :cond_46e

    const/16 v21, 0x1

    .line 750
    :goto_457
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    move-object/from16 v44, v0

    add-int/lit8 v31, v32, 0x1

    .end local v32    # "ndigit":I
    .restart local v31    # "ndigit":I
    add-int/lit8 v45, v33, 0x30

    move/from16 v0, v45

    int-to-char v0, v0

    move/from16 v45, v0

    aput-char v45, v44, v32

    move/from16 v32, v31

    .end local v31    # "ndigit":I
    .restart local v32    # "ndigit":I
    goto :goto_402

    .line 748
    :cond_46b
    const/16 v23, 0x0

    goto :goto_44d

    .line 749
    :cond_46e
    const/16 v21, 0x0

    goto :goto_457

    .line 752
    :cond_471
    if-eqz v21, :cond_49e

    if-eqz v23, :cond_49e

    .line 753
    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v9, v0}, Lsun/misc/FDBigInteger;->leftShift(I)Lsun/misc/FDBigInteger;

    move-result-object v9

    .line 754
    move-object/from16 v0, v40

    invoke-virtual {v9, v0}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v44

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v24, v0

    .line 758
    .restart local v24    # "lowDigitDifference":J
    :goto_488
    sget-object v44, Lsun/misc/FDBigInteger;->ZERO:Lsun/misc/FDBigInteger;

    move-object/from16 v0, v44

    invoke-virtual {v9, v0}, Lsun/misc/FDBigInteger;->cmp(Lsun/misc/FDBigInteger;)I

    move-result v44

    if-nez v44, :cond_4a1

    const/16 v44, 0x1

    :goto_494
    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    move/from16 v31, v32

    .end local v32    # "ndigit":I
    .restart local v31    # "ndigit":I
    goto/16 :goto_240

    .line 756
    .end local v24    # "lowDigitDifference":J
    .end local v31    # "ndigit":I
    .restart local v32    # "ndigit":I
    :cond_49e
    const-wide/16 v24, 0x0

    .restart local v24    # "lowDigitDifference":J
    goto :goto_488

    .line 758
    :cond_4a1
    const/16 v44, 0x0

    goto :goto_494

    .line 774
    .end local v9    # "Bval":Lsun/misc/FDBigInteger;
    .end local v12    # "Mval":Lsun/misc/FDBigInteger;
    .end local v15    # "Sval":Lsun/misc/FDBigInteger;
    .end local v32    # "ndigit":I
    .end local v35    # "shiftBias":I
    .end local v40    # "tenSval":Lsun/misc/FDBigInteger;
    .restart local v31    # "ndigit":I
    :cond_4a4
    const-wide/16 v44, 0x0

    cmp-long v44, v24, v44

    if-lez v44, :cond_27f

    .line 775
    invoke-direct/range {p0 .. p0}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->roundup()V

    goto/16 :goto_27f

    .line 778
    :cond_4af
    invoke-direct/range {p0 .. p0}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->roundup()V

    goto/16 :goto_27f
.end method

.method static estimateDecExp(JI)I
    .registers 23
    .param p0, "fractBits"    # J
    .param p2, "binExp"    # I

    .prologue
    .line 820
    const-wide v14, 0xfffffffffffffL

    and-long v14, v14, p0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    or-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v4

    .line 821
    .local v4, "d2":D
    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    sub-double v14, v4, v14

    const-wide v16, 0x3fd287a762c9bd93L    # 0.289529654

    mul-double v14, v14, v16

    const-wide v16, 0x3fc68a288b421b8cL    # 0.176091259

    add-double v14, v14, v16

    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3fd34413509f79fbL    # 0.301029995663981

    mul-double v16, v16, v18

    add-double v2, v14, v16

    .line 822
    .local v2, "d":D
    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v6

    .line 823
    .local v6, "dBits":J
    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v14, v6

    const/16 v13, 0x34

    shr-long/2addr v14, v13

    long-to-int v13, v14

    add-int/lit16 v8, v13, -0x3ff

    .line 824
    .local v8, "exponent":I
    const-wide/high16 v14, -0x8000000000000000L

    and-long/2addr v14, v6

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_6d

    const/4 v9, 0x1

    .line 825
    .local v9, "isNegative":Z
    :goto_46
    if-ltz v8, :cond_73

    const/16 v13, 0x34

    if-ge v8, v13, :cond_73

    .line 826
    const-wide v14, 0xfffffffffffffL

    shr-long v10, v14, v8

    .line 827
    .local v10, "mask":J
    const-wide v14, 0xfffffffffffffL

    and-long/2addr v14, v6

    const-wide/high16 v16, 0x10000000000000L

    or-long v14, v14, v16

    rsub-int/lit8 v13, v8, 0x34

    shr-long/2addr v14, v13

    long-to-int v12, v14

    .line 828
    .local v12, "r":I
    if-eqz v9, :cond_6c

    and-long v14, v10, v6

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_6f

    neg-int v12, v12

    .end local v12    # "r":I
    :cond_6c
    :goto_6c
    return v12

    .line 824
    .end local v9    # "isNegative":Z
    .end local v10    # "mask":J
    :cond_6d
    const/4 v9, 0x0

    .restart local v9    # "isNegative":Z
    goto :goto_46

    .line 828
    .restart local v10    # "mask":J
    .restart local v12    # "r":I
    :cond_6f
    neg-int v13, v12

    add-int/lit8 v12, v13, -0x1

    goto :goto_6c

    .line 829
    .end local v10    # "mask":J
    .end local v12    # "r":I
    :cond_73
    if-gez v8, :cond_89

    .line 830
    const-wide v14, 0x7fffffffffffffffL

    and-long/2addr v14, v6

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_83

    const/4 v13, 0x0

    :goto_82
    return v13

    .line 831
    :cond_83
    if-eqz v9, :cond_87

    const/4 v13, -0x1

    goto :goto_82

    :cond_87
    const/4 v13, 0x0

    goto :goto_82

    .line 833
    :cond_89
    double-to-int v13, v2

    return v13
.end method

.method private getChars([C)I
    .registers 13
    .param p1, "result"    # [C

    .prologue
    const/16 v10, 0x2d

    const/16 v9, 0x2e

    const/4 v8, 0x0

    const/16 v7, 0x30

    .line 906
    sget-boolean v5, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v5, :cond_1d

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    const/16 v6, 0x13

    if-le v5, v6, :cond_1d

    new-instance v5, Ljava/lang/AssertionError;

    iget v6, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 907
    :cond_1d
    const/4 v2, 0x0

    .line 908
    .local v2, "i":I
    iget-boolean v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->isNegative:Z

    if-eqz v5, :cond_25

    .line 909
    aput-char v10, p1, v8

    .line 910
    const/4 v2, 0x1

    .line 912
    :cond_25
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    if-lez v5, :cond_72

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    const/16 v6, 0x8

    if-ge v5, v6, :cond_72

    .line 914
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    iget v6, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 915
    .local v0, "charLength":I
    iget-object v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v6, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    invoke-static {v5, v6, p1, v2, v0}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 916
    add-int/2addr v2, v0

    .line 917
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    if-ge v0, v5, :cond_56

    .line 918
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    sub-int v0, v5, v0

    .line 919
    add-int v5, v2, v0

    invoke-static {p1, v2, v5, v7}, Ljava/util/Arrays;->fill([CIIC)V

    .line 920
    add-int/2addr v2, v0

    .line 921
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    aput-char v9, p1, v2

    .line 922
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-char v7, p1, v3

    .line 972
    .end local v0    # "charLength":I
    :goto_55
    return v2

    .line 924
    .restart local v0    # "charLength":I
    :cond_56
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aput-char v9, p1, v2

    .line 925
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    if-ge v0, v5, :cond_6d

    .line 926
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    sub-int v4, v5, v0

    .line 927
    .local v4, "t":I
    iget-object v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v6, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    add-int/2addr v6, v0

    invoke-static {v5, v6, p1, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 928
    add-int v2, v3, v4

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_55

    .line 930
    .end local v2    # "i":I
    .end local v4    # "t":I
    .restart local v3    # "i":I
    :cond_6d
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-char v7, p1, v3

    goto :goto_55

    .line 933
    .end local v0    # "charLength":I
    :cond_72
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    if-gtz v5, :cond_9e

    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    const/4 v6, -0x3

    if-le v5, v6, :cond_9e

    .line 934
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aput-char v7, p1, v2

    .line 935
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-char v9, p1, v3

    .line 936
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    if-eqz v5, :cond_91

    .line 937
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    sub-int v5, v2, v5

    invoke-static {p1, v2, v5, v7}, Ljava/util/Arrays;->fill([CIIC)V

    .line 938
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    sub-int/2addr v2, v5

    .line 940
    :cond_91
    iget-object v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v6, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    iget v7, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    invoke-static {v5, v6, p1, v2, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 941
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    add-int/2addr v2, v5

    .line 933
    goto :goto_55

    .line 943
    :cond_9e
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    iget-object v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v6, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    aget-char v5, v5, v6

    aput-char v5, p1, v2

    .line 944
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-char v9, p1, v3

    .line 945
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_e4

    .line 946
    iget-object v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v6, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v5, v6, p1, v2, v7}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 947
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v2, v5

    .line 951
    :goto_c3
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    const/16 v5, 0x45

    aput-char v5, p1, v2

    .line 953
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    if-gtz v5, :cond_ea

    .line 954
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    aput-char v10, p1, v3

    .line 955
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    neg-int v5, v5

    add-int/lit8 v1, v5, 0x1

    .local v1, "e":I
    move v3, v2

    .line 960
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :goto_d7
    const/16 v5, 0x9

    if-gt v1, v5, :cond_ef

    .line 961
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    aput-char v5, p1, v3

    goto/16 :goto_55

    .line 949
    .end local v1    # "e":I
    :cond_e4
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    aput-char v7, p1, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_c3

    .line 957
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_ea
    iget v5, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    add-int/lit8 v1, v5, -0x1

    .restart local v1    # "e":I
    goto :goto_d7

    .line 962
    :cond_ef
    const/16 v5, 0x63

    if-gt v1, v5, :cond_108

    .line 963
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    div-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, p1, v3

    .line 964
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    rem-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, p1, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_55

    .line 966
    .end local v2    # "i":I
    .restart local v3    # "i":I
    :cond_108
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    div-int/lit8 v5, v1, 0x64

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, p1, v3

    .line 967
    rem-int/lit8 v1, v1, 0x64

    .line 968
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    div-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, p1, v2

    .line 969
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    rem-int/lit8 v5, v1, 0xa

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    aput-char v5, p1, v3

    goto/16 :goto_55
.end method

.method private static insignificantDigits(I)I
    .registers 7
    .param p0, "insignificant"    # I

    .prologue
    const-wide/16 v4, 0xa

    .line 839
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    int-to-long v2, p0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_e

    .line 840
    int-to-long v2, p0

    div-long/2addr v2, v4

    long-to-int p0, v2

    .line 839
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 842
    :cond_e
    return v0
.end method

.method private static insignificantDigitsForPow2(I)I
    .registers 2
    .param p0, "p2"    # I

    .prologue
    .line 852
    const/4 v0, 0x1

    if-le p0, v0, :cond_d

    sget-object v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->insignificantDigitsNumber:[I

    array-length v0, v0

    if-ge p0, v0, :cond_d

    .line 853
    sget-object v0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->insignificantDigitsNumber:[I

    aget v0, v0, p0

    return v0

    .line 855
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private roundup()V
    .registers 6

    .prologue
    const/16 v4, 0x39

    .line 789
    iget v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    iget v3, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    add-int/2addr v2, v3

    add-int/lit8 v0, v2, -0x1

    .line 790
    .local v0, "i":I
    iget-object v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    aget-char v1, v2, v0

    .line 791
    .local v1, "q":I
    if-ne v1, v4, :cond_33

    .line 792
    :goto_f
    if-ne v1, v4, :cond_22

    iget v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    if-le v0, v2, :cond_22

    .line 793
    iget-object v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    const/16 v3, 0x30

    aput-char v3, v2, v0

    .line 794
    iget-object v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v0, v0, -0x1

    aget-char v1, v2, v0

    goto :goto_f

    .line 796
    :cond_22
    if-ne v1, v4, :cond_33

    .line 798
    iget v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    .line 799
    iget-object v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v3, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    const/16 v4, 0x31

    aput-char v4, v2, v3

    .line 800
    return-void

    .line 804
    :cond_33
    iget-object v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    add-int/lit8 v3, v1, 0x1

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 805
    const/4 v2, 0x1

    iput-boolean v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decimalDigitsRoundedUp:Z

    .line 806
    return-void
.end method

.method private setSign(Z)V
    .registers 2
    .param p1, "isNegative"    # Z

    .prologue
    .line 349
    iput-boolean p1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->isNegative:Z

    .line 350
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/Appendable;)V
    .registers 5
    .param p1, "buf"    # Ljava/lang/Appendable;

    .prologue
    const/4 v2, 0x0

    .line 307
    iget-object v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    invoke-direct {p0, v1}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->getChars([C)I

    move-result v0

    .line 308
    .local v0, "len":I
    instance-of v1, p1, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_13

    .line 309
    check-cast p1, Ljava/lang/StringBuilder;

    .end local p1    # "buf":Ljava/lang/Appendable;
    iget-object v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    invoke-virtual {p1, v1, v2, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 315
    :cond_12
    :goto_12
    return-void

    .line 310
    .restart local p1    # "buf":Ljava/lang/Appendable;
    :cond_13
    instance-of v1, p1, Ljava/lang/StringBuffer;

    if-eqz v1, :cond_1f

    .line 311
    check-cast p1, Ljava/lang/StringBuffer;

    .end local p1    # "buf":Ljava/lang/Appendable;
    iget-object v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    invoke-virtual {p1, v1, v2, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_12

    .line 313
    .restart local p1    # "buf":Ljava/lang/Appendable;
    :cond_1f
    sget-boolean v1, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->-assertionsDisabled:Z

    if-nez v1, :cond_12

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public decimalDigitsExact()Z
    .registers 2

    .prologue
    .line 345
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->exactDecimalConversion:Z

    return v0
.end method

.method public digitsRoundedUp()Z
    .registers 2

    .prologue
    .line 340
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decimalDigitsRoundedUp:Z

    return v0
.end method

.method public getDecimalExponent()I
    .registers 2

    .prologue
    .line 319
    iget v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->decExponent:I

    return v0
.end method

.method public getDigits([C)I
    .registers 6
    .param p1, "digits"    # [C

    .prologue
    .line 324
    iget-object v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->digits:[C

    iget v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->firstDigitIndex:I

    iget v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    const/4 v3, 0x0

    invoke-static {v0, v1, p1, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 325
    iget v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->nDigits:I

    return v0
.end method

.method public isExceptional()Z
    .registers 2

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public isNegative()Z
    .registers 2

    .prologue
    .line 330
    iget-boolean v0, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->isNegative:Z

    return v0
.end method

.method public toJavaFormatString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 301
    iget-object v1, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    invoke-direct {p0, v1}, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->getChars([C)I

    move-result v0

    .line 302
    .local v0, "len":I
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lsun/misc/FloatingDecimal$BinaryToASCIIBuffer;->buffer:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method
