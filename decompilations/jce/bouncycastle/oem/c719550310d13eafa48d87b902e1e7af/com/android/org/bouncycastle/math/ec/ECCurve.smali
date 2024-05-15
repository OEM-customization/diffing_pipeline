.class public abstract Lcom/android/org/bouncycastle/math/ec/ECCurve;
.super Ljava/lang/Object;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;,
        Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;,
        Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;,
        Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;,
        Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;
    }
.end annotation


# static fields
.field public static final COORD_AFFINE:I = 0x0

.field public static final COORD_HOMOGENEOUS:I = 0x1

.field public static final COORD_JACOBIAN:I = 0x2

.field public static final COORD_JACOBIAN_CHUDNOVSKY:I = 0x3

.field public static final COORD_JACOBIAN_MODIFIED:I = 0x4

.field public static final COORD_LAMBDA_AFFINE:I = 0x5

.field public static final COORD_LAMBDA_PROJECTIVE:I = 0x6

.field public static final COORD_SKEWED:I = 0x7


# instance fields
.field protected a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected cofactor:Ljava/math/BigInteger;

.field protected coord:I

.field protected endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected field:Lcom/android/org/bouncycastle/math/field/FiniteField;

.field protected multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

.field protected order:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/math/field/FiniteField;)V
    .registers 4
    .param p1, "field"    # Lcom/android/org/bouncycastle/math/field/FiniteField;

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    .line 95
    iput-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 96
    iput-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .line 100
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->field:Lcom/android/org/bouncycastle/math/field/FiniteField;

    .line 101
    return-void
.end method

.method public static getAllCoordinateSystems()[I
    .registers 1

    .prologue
    .line 30
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
.method protected checkPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 4
    .param p1, "point"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 446
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-eq p0, v0, :cond_11

    .line 448
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "\'point\' must be non-null and on this curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 450
    :cond_11
    return-void
.end method

.method protected checkPoints([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 4
    .param p1, "points"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 454
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->checkPoints([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)V

    .line 455
    return-void
.end method

.method protected checkPoints([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)V
    .registers 8
    .param p1, "points"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 459
    if-nez p1, :cond_b

    .line 461
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "\'points\' cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 463
    :cond_b
    if-ltz p2, :cond_f

    if-gez p3, :cond_18

    .line 465
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "invalid range specified for \'points\'"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 463
    :cond_18
    array-length v2, p1

    sub-int/2addr v2, p3

    if-gt p2, v2, :cond_f

    .line 468
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    if-ge v0, p3, :cond_37

    .line 470
    add-int v2, p2, v0

    aget-object v1, p1, v2

    .line 471
    .local v1, "point":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v1, :cond_34

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    if-eq p0, v2, :cond_34

    .line 473
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "\'points\' entries must be null or on this curve"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 468
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 476
    .end local v1    # "point":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_37
    return-void
.end method

.method protected abstract cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end method

.method public declared-synchronized configure()Lcom/android/org/bouncycastle/math/ec/ECCurve$Config;
    .registers 5

    .prologue
    monitor-enter p0

    .line 111
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

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createDefaultMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .registers 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    instance-of v0, v0, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v0, :cond_10

    .line 162
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-direct {v1, p0, v0}, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)V

    return-object v1

    .line 165
    :cond_10
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/WNafL2RMultiplier;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/WNafL2RMultiplier;-><init>()V

    return-object v0
.end method

.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 6
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "withCompression"    # Z

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method protected abstract createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method protected abstract createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 12
    .param p1, "encoded"    # [B

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 365
    const/4 v3, 0x0

    .line 366
    .local v3, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v8

    add-int/lit8 v8, v8, 0x7

    div-int/lit8 v2, v8, 0x8

    .line 368
    .local v2, "expectedLength":I
    aget-byte v4, p1, v7

    .line 369
    .local v4, "type":B
    packed-switch v4, :pswitch_data_cc

    .line 433
    :pswitch_10
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid point encoding 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v4, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 373
    :pswitch_30
    array-length v7, p1

    if-eq v7, v6, :cond_3c

    .line 375
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Incorrect length for infinity encoding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 378
    :cond_3c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 436
    .local v3, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_40
    :goto_40
    if-eqz v4, :cond_cb

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 438
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Invalid infinity encoding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 384
    .local v3, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :pswitch_51
    array-length v7, p1

    add-int/lit8 v8, v2, 0x1

    if-eq v7, v8, :cond_5f

    .line 386
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Incorrect length for compressed encoding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 389
    :cond_5f
    and-int/lit8 v5, v4, 0x1

    .line 390
    .local v5, "yTilde":I
    invoke-static {p1, v6, v2}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v0

    .line 392
    .local v0, "X":Ljava/math/BigInteger;
    invoke-virtual {p0, v5, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 393
    .local v3, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->satisfiesCofactor()Z

    move-result v6

    if-nez v6, :cond_40

    .line 395
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Invalid point"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 402
    .end local v0    # "X":Ljava/math/BigInteger;
    .end local v5    # "yTilde":I
    .local v3, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :pswitch_78
    array-length v7, p1

    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x1

    if-eq v7, v8, :cond_88

    .line 404
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Incorrect length for uncompressed encoding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 407
    :cond_88
    invoke-static {p1, v6, v2}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v0

    .line 408
    .restart local v0    # "X":Ljava/math/BigInteger;
    add-int/lit8 v6, v2, 0x1

    invoke-static {p1, v6, v2}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v1

    .line 410
    .local v1, "Y":Ljava/math/BigInteger;
    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .local v3, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_40

    .line 416
    .end local v0    # "X":Ljava/math/BigInteger;
    .end local v1    # "Y":Ljava/math/BigInteger;
    .local v3, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :pswitch_97
    array-length v8, p1

    mul-int/lit8 v9, v2, 0x2

    add-int/lit8 v9, v9, 0x1

    if-eq v8, v9, :cond_a7

    .line 418
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Incorrect length for hybrid encoding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 421
    :cond_a7
    invoke-static {p1, v6, v2}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v0

    .line 422
    .restart local v0    # "X":Ljava/math/BigInteger;
    add-int/lit8 v8, v2, 0x1

    invoke-static {p1, v8, v2}, Lcom/android/org/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v1

    .line 424
    .restart local v1    # "Y":Ljava/math/BigInteger;
    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    const/4 v9, 0x7

    if-ne v4, v9, :cond_c3

    :goto_b8
    if-eq v8, v6, :cond_c5

    .line 426
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Inconsistent Y coordinate in hybrid encoding"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_c3
    move v6, v7

    .line 424
    goto :goto_b8

    .line 429
    :cond_c5
    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .local v3, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto/16 :goto_40

    .line 441
    .end local v0    # "X":Ljava/math/BigInteger;
    .end local v1    # "Y":Ljava/math/BigInteger;
    :cond_cb
    return-object v3

    .line 369
    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_30
        :pswitch_10
        :pswitch_51
        :pswitch_51
        :pswitch_78
        :pswitch_10
        :pswitch_97
        :pswitch_97
    .end packed-switch
.end method

.method protected abstract decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z
    .registers 4
    .param p1, "other"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .prologue
    .line 480
    if-eq p0, p1, :cond_3d

    .line 481
    if-eqz p1, :cond_3f

    .line 482
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 481
    if-eqz v0, :cond_3f

    .line 483
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

    .line 481
    if-eqz v0, :cond_3f

    .line 484
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

    .line 480
    :goto_3c
    return v0

    :cond_3d
    const/4 v0, 0x1

    goto :goto_3c

    .line 481
    :cond_3f
    const/4 v0, 0x0

    goto :goto_3c
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 489
    if-eq p0, p1, :cond_d

    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/ECCurve;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    :goto_c
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_d
    const/4 v0, 0x1

    goto :goto_c

    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public abstract fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.end method

.method public getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getCofactor()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getCoordinateSystem()I
    .registers 2

    .prologue
    .line 335
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    return v0
.end method

.method public getEndomorphism()Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    .registers 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->endomorphism:Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    return-object v0
.end method

.method public getField()Lcom/android/org/bouncycastle/math/field/FiniteField;
    .registers 2

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->field:Lcom/android/org/bouncycastle/math/field/FiniteField;

    return-object v0
.end method

.method public abstract getFieldSize()I
.end method

.method public abstract getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public declared-synchronized getMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .registers 2

    .prologue
    monitor-enter p0

    .line 350
    :try_start_1
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    if-nez v0, :cond_b

    .line 352
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createDefaultMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    .line 354
    :cond_b
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->multiplier:Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOrder()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .registers 5
    .param p1, "point"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->checkPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 176
    monitor-enter p1

    .line 178
    :try_start_5
    iget-object v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_12

    .line 179
    .local v0, "table":Ljava/util/Hashtable;
    if-nez v0, :cond_b

    :goto_9
    monitor-exit p1

    return-object v1

    :cond_b
    :try_start_b
    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_12

    goto :goto_9

    .line 176
    .end local v0    # "table":Ljava/util/Hashtable;
    :catchall_12
    move-exception v1

    monitor-exit p1

    throw v1
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 495
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    .line 494
    xor-int/2addr v0, v1

    .line 496
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    .line 494
    xor-int/2addr v0, v1

    return v0
.end method

.method public importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-ne p0, v0, :cond_7

    .line 213
    return-object p1

    .line 215
    :cond_7
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 217
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 221
    :cond_12
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public abstract isValidFieldElement(Ljava/math/BigInteger;)Z
.end method

.method public normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 5
    .param p1, "points"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 238
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 239
    return-void
.end method

.method public normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 15
    .param p1, "points"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "iso"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    const/4 v9, 0x0

    .line 261
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->checkPoints([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)V

    .line 263
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v8

    sparse-switch v8, :sswitch_data_5e

    .line 279
    new-array v7, p3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 280
    .local v7, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-array v4, p3, [I

    .line 281
    .local v4, "indices":[I
    const/4 v0, 0x0

    .line 282
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v1, v0

    .end local v0    # "count":I
    .local v1, "count":I
    :goto_12
    if-ge v2, p3, :cond_42

    .line 284
    add-int v8, p2, v2

    aget-object v6, p1, v8

    .line 285
    .local v6, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v6, :cond_40

    if-nez p4, :cond_24

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isNormalized()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5b

    .line 287
    :cond_24
    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    aput-object v8, v7, v1

    .line 288
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    add-int v8, p2, v2

    aput v8, v4, v1

    .line 282
    :goto_30
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_12

    .line 268
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v4    # "indices":[I
    .end local v6    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v7    # "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_34
    if-eqz p4, :cond_3f

    .line 270
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "\'iso\' not valid for affine coordinates"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 272
    :cond_3f
    return-void

    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v4    # "indices":[I
    .restart local v6    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v7    # "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_40
    move v0, v1

    .line 286
    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_30

    .line 292
    .end local v0    # "count":I
    .end local v6    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v1    # "count":I
    :cond_42
    if-nez v1, :cond_45

    .line 294
    return-void

    .line 297
    :cond_45
    invoke-static {v7, v9, v1, p4}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->montgomeryTrick([Lcom/android/org/bouncycastle/math/ec/ECFieldElement;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 299
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_49
    if-ge v5, v1, :cond_5a

    .line 301
    aget v3, v4, v5

    .line 302
    .local v3, "index":I
    aget-object v8, p1, v3

    aget-object v9, v7, v5

    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    aput-object v8, p1, v3

    .line 299
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    .line 304
    .end local v3    # "index":I
    :cond_5a
    return-void

    .end local v5    # "j":I
    .restart local v6    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_5b
    move v0, v1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    goto :goto_30

    .line 263
    nop

    :sswitch_data_5e
    .sparse-switch
        0x0 -> :sswitch_34
        0x5 -> :sswitch_34
    .end sparse-switch
.end method

.method public setPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)V
    .registers 6
    .param p1, "point"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "preCompInfo"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->checkPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 198
    monitor-enter p1

    .line 200
    :try_start_4
    iget-object v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 201
    .local v0, "table":Ljava/util/Hashtable;
    if-nez v0, :cond_10

    .line 203
    new-instance v0, Ljava/util/Hashtable;

    .end local v0    # "table":Ljava/util/Hashtable;
    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .restart local v0    # "table":Ljava/util/Hashtable;
    iput-object v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 205
    :cond_10
    invoke-virtual {v0, p2, p3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_15

    monitor-exit p1

    .line 207
    return-void

    .line 198
    .end local v0    # "table":Ljava/util/Hashtable;
    :catchall_15
    move-exception v1

    monitor-exit p1

    throw v1
.end method

.method public supportsCoordinateSystem(I)Z
    .registers 3
    .param p1, "coord"    # I

    .prologue
    const/4 v0, 0x0

    .line 170
    if-nez p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 6
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;

    .prologue
    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 117
    .local v0, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result v1

    if-nez v1, :cond_13

    .line 119
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid point coordinates"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_13
    return-object v0
.end method

.method public validatePoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 7
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "withCompression"    # Z

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 131
    .local v0, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result v1

    if-nez v1, :cond_13

    .line 133
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid point coordinates"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    :cond_13
    return-object v0
.end method
