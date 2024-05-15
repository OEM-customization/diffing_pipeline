.class public abstract Lcom/android/org/bouncycastle/math/ec/ECCurve;
.super Ljava/lang/Object;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;,
        Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;,
        Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;,
        Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;,
        Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    }
.end annotation


# static fields
.field public static final blacklist COORD_AFFINE:I = 0x0

.field public static final blacklist COORD_HOMOGENEOUS:I = 0x1

.field public static final blacklist COORD_JACOBIAN:I = 0x2

.field public static final blacklist COORD_JACOBIAN_CHUDNOVSKY:I = 0x3

.field public static final blacklist COORD_JACOBIAN_MODIFIED:I = 0x4

.field public static final blacklist COORD_LAMBDA_AFFINE:I = 0x5

.field public static final blacklist COORD_LAMBDA_PROJECTIVE:I = 0x6

.field public static final blacklist COORD_SKEWED:I = 0x7


# instance fields
.field protected blacklist a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected blacklist b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected blacklist cofactor:Ljava/math/BigInteger;

.field protected blacklist coord:I

.field protected blacklist endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected blacklist field:Lcom/android/org/bouncycastle/math/field/FiniteField;

.field protected blacklist multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

.field protected blacklist order:Ljava/math/BigInteger;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/math/field/FiniteField;)V
    .registers 3
    .param p1, "field"    # Lcom/android/org/bouncycastle/math/field/FiniteField;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 103
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .line 107
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->field:Lcom/android/org/bouncycastle/math/field/FiniteField;

    .line 108
    return-void
.end method

.method public static blacklist getAllCoordinateSystems()[I
    .registers 1

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    return-object v0

    :array_8
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method


# virtual methods
.method protected blacklist checkPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 4
    .param p1, "point"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 535
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-ne p0, v0, :cond_9

    .line 539
    return-void

    .line 537
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'point\' must be non-null and on this curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist checkPoints([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 4
    .param p1, "points"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 543
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->checkPoints([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)V

    .line 544
    return-void
.end method

.method protected blacklist checkPoints([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)V
    .registers 8
    .param p1, "points"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 548
    if-eqz p1, :cond_2e

    .line 552
    if-ltz p2, :cond_26

    if-ltz p3, :cond_26

    array-length v0, p1

    sub-int/2addr v0, p3

    if-gt p2, v0, :cond_26

    .line 557
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    if-ge v0, p3, :cond_25

    .line 559
    add-int v1, p2, v0

    aget-object v1, p1, v1

    .line 560
    .local v1, "point":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    if-ne p0, v2, :cond_1a

    goto :goto_22

    .line 562
    :cond_1a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "\'points\' entries must be null or on this curve"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 557
    .end local v1    # "point":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 565
    .end local v0    # "i":I
    :cond_25
    return-void

    .line 554
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid range specified for \'points\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 550
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'points\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract blacklist cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end method

.method public declared-synchronized blacklist configure()Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    .registers 5

    monitor-enter p0

    .line 122
    :try_start_1
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;ILcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/org/bouncycastle/math/ec/ECMultiplier;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-object v0

    .line 122
    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist createCacheSafeLookupTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/org/bouncycastle/math/ec/ECLookupTable;
    .registers 16
    .param p1, "points"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 465
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    .line 467
    .local v0, "FE_BYTES":I
    mul-int v1, p3, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 469
    .local v1, "table":[B
    const/4 v2, 0x0

    .line 470
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, p3, :cond_4f

    .line 472
    add-int v4, p2, v3

    aget-object v4, p1, v4

    .line 473
    .local v4, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    .line 474
    .local v5, "px":[B
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    .line 476
    .local v6, "py":[B
    array-length v7, v5

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-le v7, v0, :cond_35

    move v7, v9

    goto :goto_36

    :cond_35
    move v7, v8

    .local v7, "pxStart":I
    :goto_36
    array-length v10, v5

    sub-int/2addr v10, v7

    .line 477
    .local v10, "pxLen":I
    array-length v11, v6

    if-le v11, v0, :cond_3c

    move v8, v9

    .local v8, "pyStart":I
    :cond_3c
    array-length v9, v6

    sub-int/2addr v9, v8

    .line 479
    .local v9, "pyLen":I
    add-int v11, v2, v0

    sub-int/2addr v11, v10

    invoke-static {v5, v7, v1, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v0

    .line 480
    add-int v11, v2, v0

    sub-int/2addr v11, v9

    invoke-static {v6, v8, v1, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v0

    .line 470
    .end local v4    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v5    # "px":[B
    .end local v6    # "py":[B
    .end local v7    # "pxStart":I
    .end local v8    # "pyStart":I
    .end local v9    # "pyLen":I
    .end local v10    # "pxLen":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 484
    .end local v2    # "pos":I
    .end local v3    # "i":I
    :cond_4f
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;

    invoke-direct {v2, p0, p3, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$1;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;II[B)V

    return-object v2
.end method

.method protected blacklist createDefaultMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    instance-of v1, v0, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v1, :cond_e

    .line 150
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)V

    return-object v1

    .line 153
    :cond_e
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/WNafL2RMultiplier;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/WNafL2RMultiplier;-><init>()V

    return-object v0
.end method

.method public blacklist createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method protected abstract blacklist createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method protected abstract blacklist createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 11
    .param p1, "encoded"    # [B

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v1

    const/4 v2, 0x7

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    .line 383
    .local v1, "expectedLength":I
    const/4 v3, 0x0

    aget-byte v4, p1, v3

    .line 384
    .local v4, "type":B
    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_c0

    .line 448
    :pswitch_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid point encoding 0x"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 431
    :pswitch_2d
    array-length v6, p1

    mul-int/lit8 v7, v1, 0x2

    add-int/2addr v7, v5

    if-ne v6, v7, :cond_53

    .line 436
    invoke-static {p1, v5, v1}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v6

    .line 437
    .local v6, "X":Ljava/math/BigInteger;
    add-int/lit8 v7, v1, 0x1

    invoke-static {p1, v7, v1}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v7

    .line 439
    .local v7, "Y":Ljava/math/BigInteger;
    invoke-virtual {v7, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-ne v4, v2, :cond_44

    move v3, v5

    :cond_44
    if-ne v8, v3, :cond_4b

    .line 444
    invoke-virtual {p0, v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 445
    goto :goto_a6

    .line 441
    :cond_4b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Inconsistent Y coordinate in hybrid encoding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 433
    .end local v6    # "X":Ljava/math/BigInteger;
    .end local v7    # "Y":Ljava/math/BigInteger;
    :cond_53
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Incorrect length for hybrid encoding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 417
    :pswitch_5b
    array-length v2, p1

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v3, v5

    if-ne v2, v3, :cond_70

    .line 422
    invoke-static {p1, v5, v1}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v2

    .line 423
    .local v2, "X":Ljava/math/BigInteger;
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v1}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v3

    .line 425
    .local v3, "Y":Ljava/math/BigInteger;
    invoke-virtual {p0, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 426
    goto :goto_a6

    .line 419
    .end local v2    # "X":Ljava/math/BigInteger;
    .end local v3    # "Y":Ljava/math/BigInteger;
    :cond_70
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Incorrect length for uncompressed encoding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 399
    :pswitch_78
    array-length v2, p1

    add-int/lit8 v3, v1, 0x1

    if-ne v2, v3, :cond_96

    .line 404
    and-int/lit8 v2, v4, 0x1

    .line 405
    .local v2, "yTilde":I
    invoke-static {p1, v5, v1}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v3

    .line 407
    .local v3, "X":Ljava/math/BigInteger;
    invoke-virtual {p0, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 408
    invoke-virtual {v0, v5, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->implIsValid(ZZ)Z

    move-result v5

    if-eqz v5, :cond_8e

    goto :goto_a6

    .line 410
    :cond_8e
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid point"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 401
    .end local v2    # "yTilde":I
    .end local v3    # "X":Ljava/math/BigInteger;
    :cond_96
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Incorrect length for compressed encoding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 388
    :pswitch_9e
    array-length v2, p1

    if-ne v2, v5, :cond_b8

    .line 393
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 394
    nop

    .line 451
    :goto_a6
    if-eqz v4, :cond_b7

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-nez v2, :cond_af

    goto :goto_b7

    .line 453
    :cond_af
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid infinity encoding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 456
    :cond_b7
    :goto_b7
    return-object v0

    .line 390
    :cond_b8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Incorrect length for infinity encoding"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_9e
        :pswitch_10
        :pswitch_78
        :pswitch_78
        :pswitch_5b
        :pswitch_10
        :pswitch_2d
        :pswitch_2d
    .end packed-switch
.end method

.method protected abstract blacklist decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z
    .registers 4
    .param p1, "other"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 569
    if-eq p0, p1, :cond_41

    if-eqz p1, :cond_3f

    .line 571
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 572
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 573
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    goto :goto_41

    :cond_3f
    const/4 v0, 0x0

    goto :goto_42

    :cond_41
    :goto_41
    const/4 v0, 0x1

    .line 569
    :goto_42
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 578
    if-eq p0, p1, :cond_12

    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/ECCurve;

    if-eqz v0, :cond_10

    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    :goto_13
    return v0
.end method

.method public abstract blacklist fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 328
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public blacklist getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public blacklist getCofactor()Ljava/math/BigInteger;
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getCoordinateSystem()I
    .registers 2

    .line 348
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    return v0
.end method

.method public blacklist getEndomorphism()Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    .registers 2

    .line 355
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    return-object v0
.end method

.method public blacklist getField()Lcom/android/org/bouncycastle/math/field/FiniteField;
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->field:Lcom/android/org/bouncycastle/math/field/FiniteField;

    return-object v0
.end method

.method public abstract blacklist getFieldSize()I
.end method

.method public abstract blacklist getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist getMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .registers 2

    .line 365
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    if-nez v0, :cond_a

    .line 367
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createDefaultMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .line 369
    :cond_a
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    return-object v0
.end method

.method public blacklist getOrder()Ljava/math/BigInteger;
    .registers 2

    .line 338
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .registers 5
    .param p1, "point"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "name"    # Ljava/lang/String;

    .line 163
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->checkPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 166
    monitor-enter p1

    .line 168
    :try_start_4
    iget-object v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 169
    .local v0, "table":Ljava/util/Hashtable;
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_17

    .line 171
    if-nez v0, :cond_b

    .line 173
    const/4 v1, 0x0

    return-object v1

    .line 176
    :cond_b
    monitor-enter v0

    .line 178
    :try_start_c
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    monitor-exit v0

    return-object v1

    .line 179
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_14

    throw v1

    .line 169
    .end local v0    # "table":Ljava/util/Hashtable;
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit p1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 583
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 584
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    .line 585
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    xor-int/2addr v0, v1

    .line 583
    return v0
.end method

.method public blacklist importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 224
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-ne p0, v0, :cond_7

    .line 226
    return-object p1

    .line 228
    :cond_7
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 230
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 234
    :cond_12
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 236
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist isValidFieldElement(Ljava/math/BigInteger;)Z
.end method

.method public blacklist normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 5
    .param p1, "points"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 251
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 252
    return-void
.end method

.method public blacklist normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 12
    .param p1, "points"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "iso"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 274
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->checkPoints([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)V

    .line 276
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    sparse-switch v0, :sswitch_data_56

    .line 292
    new-array v0, p3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 293
    .local v0, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-array v1, p3, [I

    .line 294
    .local v1, "indices":[I
    const/4 v2, 0x0

    .line 295
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    goto :goto_1c

    .line 281
    .end local v0    # "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v1    # "indices":[I
    .end local v2    # "count":I
    .end local v3    # "i":I
    :sswitch_11
    if-nez p4, :cond_14

    .line 285
    return-void

    .line 283
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'iso\' not valid for affine coordinates"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    .restart local v0    # "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v1    # "indices":[I
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    :goto_1c
    const/4 v4, 0x0

    if-ge v3, p3, :cond_3d

    .line 297
    add-int v5, p2, v3

    aget-object v5, p1, v5

    .line 298
    .local v5, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v5, :cond_3a

    if-nez p4, :cond_2d

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isNormalized()Z

    move-result v6

    if-nez v6, :cond_3a

    .line 300
    :cond_2d
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    aput-object v4, v0, v2

    .line 301
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "count":I
    .local v4, "count":I
    add-int v6, p2, v3

    aput v6, v1, v2

    move v2, v4

    .line 295
    .end local v4    # "count":I
    .end local v5    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v2    # "count":I
    :cond_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 305
    .end local v3    # "i":I
    :cond_3d
    if-nez v2, :cond_40

    .line 307
    return-void

    .line 310
    :cond_40
    invoke-static {v0, v4, v2, p4}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->montgomeryTrick([Lcom/android/org/bouncycastle/math/ec/ECFieldElement;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 312
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_44
    if-ge v3, v2, :cond_55

    .line 314
    aget v4, v1, v3

    .line 315
    .local v4, "index":I
    aget-object v5, p1, v4

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, p1, v4

    .line 312
    .end local v4    # "index":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    .line 317
    .end local v3    # "j":I
    :cond_55
    return-void

    :sswitch_data_56
    .sparse-switch
        0x0 -> :sswitch_11
        0x5 -> :sswitch_11
    .end sparse-switch
.end method

.method public blacklist precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .registers 7
    .param p1, "point"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/org/bouncycastle/math/ec/PreCompCallback;

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->checkPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 199
    monitor-enter p1

    .line 201
    :try_start_4
    iget-object v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 202
    .local v0, "table":Ljava/util/Hashtable;
    if-nez v0, :cond_11

    .line 204
    new-instance v1, Ljava/util/Hashtable;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    move-object v0, v1

    iput-object v1, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 206
    :cond_11
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_27

    .line 208
    monitor-enter v0

    .line 210
    :try_start_13
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .line 211
    .local v1, "existing":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    invoke-interface {p3, v1}, Lcom/android/org/bouncycastle/math/ec/PreCompCallback;->precompute(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v2

    .line 213
    .local v2, "result":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    if-eq v2, v1, :cond_22

    .line 215
    invoke-virtual {v0, p2, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_22
    monitor-exit v0

    return-object v2

    .line 219
    .end local v1    # "existing":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .end local v2    # "result":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_24

    throw v1

    .line 206
    .end local v0    # "table":Ljava/util/Hashtable;
    :catchall_27
    move-exception v0

    :try_start_28
    monitor-exit p1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public abstract blacklist randomFieldElement(Ljava/security/SecureRandom;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public abstract blacklist randomFieldElementMult(Ljava/security/SecureRandom;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public blacklist supportsCoordinateSystem(I)Z
    .registers 3
    .param p1, "coord"    # I

    .line 158
    if-nez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method public blacklist validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 6
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 128
    .local v0, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 132
    return-object v0

    .line 130
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid point coordinates"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
