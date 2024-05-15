.class Lcom/android/org/bouncycastle/math/ec/Tnaf;
.super Ljava/lang/Object;
.source "Tnaf.java"


# static fields
.field private static final MINUS_ONE:Ljava/math/BigInteger;

.field private static final MINUS_THREE:Ljava/math/BigInteger;

.field private static final MINUS_TWO:Ljava/math/BigInteger;

.field public static final POW_2_WIDTH:B = 0x10t

.field public static final WIDTH:B = 0x4t

.field public static final alpha0:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

.field public static final alpha0Tnaf:[[B

.field public static final alpha1:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

.field public static final alpha1Tnaf:[[B


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 14
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    .line 15
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    .line 16
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    .line 39
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .line 40
    aput-object v4, v0, v7

    .line 41
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    aput-object v4, v0, v1

    .line 42
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v6

    aput-object v4, v0, v8

    .line 43
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    aput-object v4, v0, v1

    .line 44
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    aput-object v4, v0, v1

    .line 39
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [[B

    .line 52
    aput-object v4, v0, v7

    new-array v1, v5, [B

    aput-byte v5, v1, v7

    aput-object v1, v0, v5

    const/4 v1, 0x2

    aput-object v4, v0, v1

    new-array v1, v6, [B

    fill-array-data v1, :array_fc

    aput-object v1, v0, v6

    aput-object v4, v0, v8

    new-array v1, v6, [B

    fill-array-data v1, :array_102

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    aput-object v4, v0, v1

    new-array v1, v8, [B

    fill-array-data v1, :array_108

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 51
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    .line 59
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    aput-object v4, v0, v7

    .line 60
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v5

    const/4 v1, 0x2

    aput-object v4, v0, v1

    .line 61
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v6

    aput-object v4, v0, v8

    .line 62
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    aput-object v4, v0, v1

    .line 63
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0x8

    aput-object v4, v0, v1

    .line 59
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .line 70
    const/16 v0, 0x8

    new-array v0, v0, [[B

    .line 71
    aput-object v4, v0, v7

    new-array v1, v5, [B

    aput-byte v5, v1, v7

    aput-object v1, v0, v5

    const/4 v1, 0x2

    aput-object v4, v0, v1

    new-array v1, v6, [B

    fill-array-data v1, :array_10e

    aput-object v1, v0, v6

    aput-object v4, v0, v8

    new-array v1, v6, [B

    fill-array-data v1, :array_114

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    aput-object v4, v0, v1

    new-array v1, v8, [B

    fill-array-data v1, :array_11a

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 70
    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    .line 12
    return-void

    .line 52
    :array_fc
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_102
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_108
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 71
    :array_10e
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_114
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_11a
    .array-data 1
        -0x1t
        0x0t
        0x0t
        -0x1t
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 14
    .param p0, "k"    # Ljava/math/BigInteger;
    .param p1, "s"    # Ljava/math/BigInteger;
    .param p2, "vm"    # Ljava/math/BigInteger;
    .param p3, "a"    # B
    .param p4, "m"    # I
    .param p5, "c"    # I

    .prologue
    .line 286
    add-int/lit8 v7, p4, 0x5

    div-int/lit8 v7, v7, 0x2

    add-int v0, v7, p5

    .line 287
    .local v0, "_k":I
    sub-int v7, p4, v0

    add-int/lit8 v7, v7, -0x2

    add-int/2addr v7, p3

    invoke-virtual {p0, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 289
    .local v6, "ns":Ljava/math/BigInteger;
    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 291
    .local v1, "gs":Ljava/math/BigInteger;
    invoke-virtual {v1, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 293
    .local v3, "hs":Ljava/math/BigInteger;
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 295
    .local v4, "js":Ljava/math/BigInteger;
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 296
    .local v2, "gsPlusJs":Ljava/math/BigInteger;
    sub-int v7, v0, p5

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 297
    .local v5, "ls":Ljava/math/BigInteger;
    sub-int v7, v0, p5

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 300
    sget-object v7, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 303
    :cond_35
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-direct {v7, v5, p5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v7
.end method

.method public static getLucas(BIZ)[Ljava/math/BigInteger;
    .registers 15
    .param p0, "mu"    # B
    .param p1, "k"    # I
    .param p2, "doV"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 449
    if-eq p0, v7, :cond_7

    const/4 v6, -0x1

    if-ne p0, v6, :cond_13

    :cond_7
    move v6, v7

    :goto_8
    if-nez v6, :cond_15

    .line 451
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "mu must be 1 or -1"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_13
    move v6, v8

    .line 449
    goto :goto_8

    .line 458
    :cond_15
    if-eqz p2, :cond_32

    .line 460
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    .line 461
    .local v3, "u0":Ljava/math/BigInteger;
    int-to-long v10, p0

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 469
    .local v4, "u1":Ljava/math/BigInteger;
    :goto_1e
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1f
    if-ge v0, p1, :cond_3c

    .line 472
    const/4 v2, 0x0

    .line 473
    .local v2, "s":Ljava/math/BigInteger;
    if-ne p0, v7, :cond_37

    .line 475
    move-object v2, v4

    .line 483
    .local v2, "s":Ljava/math/BigInteger;
    :goto_25
    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 484
    .local v5, "u2":Ljava/math/BigInteger;
    move-object v3, v4

    .line 485
    move-object v4, v5

    .line 469
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 465
    .end local v0    # "i":I
    .end local v2    # "s":Ljava/math/BigInteger;
    .end local v3    # "u0":Ljava/math/BigInteger;
    .end local v4    # "u1":Ljava/math/BigInteger;
    .end local v5    # "u2":Ljava/math/BigInteger;
    :cond_32
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 466
    .restart local v3    # "u0":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .restart local v4    # "u1":Ljava/math/BigInteger;
    goto :goto_1e

    .line 480
    .restart local v0    # "i":I
    .local v2, "s":Ljava/math/BigInteger;
    :cond_37
    invoke-virtual {v4}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    .local v2, "s":Ljava/math/BigInteger;
    goto :goto_25

    .line 490
    .end local v2    # "s":Ljava/math/BigInteger;
    :cond_3c
    const/4 v6, 0x2

    new-array v1, v6, [Ljava/math/BigInteger;

    aput-object v3, v1, v8

    aput-object v4, v1, v7

    .line 491
    .local v1, "retVal":[Ljava/math/BigInteger;
    return-object v1
.end method

.method public static getMu(I)B
    .registers 2
    .param p0, "curveA"    # I

    .prologue
    .line 430
    if-nez p0, :cond_5

    const/4 v0, -0x1

    :goto_3
    int-to-byte v0, v0

    return v0

    :cond_5
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static getMu(Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;)B
    .registers 3
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-nez v0, :cond_f

    .line 412
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No Koblitz curve (ABC), TNAF multiplication not possible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 417
    const/4 v0, -0x1

    return v0

    .line 420
    :cond_1b
    const/4 v0, 0x1

    return v0
.end method

.method public static getMu(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)B
    .registers 2
    .param p0, "curveA"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 425
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, -0x1

    :goto_7
    int-to-byte v0, v0

    return v0

    :cond_9
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static getPreComp(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;B)[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 8
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "a"    # B

    .prologue
    const/4 v5, 0x0

    .line 834
    if-nez p1, :cond_1f

    sget-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    .line 836
    .local v0, "alphaTnaf":[[B
    :goto_5
    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    ushr-int/lit8 v4, v4, 0x1

    new-array v3, v4, [Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 837
    .local v3, "pu":[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    aput-object p0, v3, v5

    .line 839
    array-length v2, v0

    .line 840
    .local v2, "precompLen":I
    const/4 v1, 0x3

    .local v1, "i":I
    :goto_10
    if-ge v1, v2, :cond_22

    .line 842
    ushr-int/lit8 v4, v1, 0x1

    aget-object v5, v0, v1

    invoke-static {p0, v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v5

    aput-object v5, v3, v4

    .line 840
    add-int/lit8 v1, v1, 0x2

    goto :goto_10

    .line 834
    .end local v0    # "alphaTnaf":[[B
    .end local v1    # "i":I
    .end local v2    # "precompLen":I
    .end local v3    # "pu":[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    :cond_1f
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    .restart local v0    # "alphaTnaf":[[B
    goto :goto_5

    .line 845
    .restart local v1    # "i":I
    .restart local v2    # "precompLen":I
    .restart local v3    # "pu":[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    :cond_22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 847
    return-object v3
.end method

.method protected static getShiftsForCofactor(Ljava/math/BigInteger;)I
    .registers 3
    .param p0, "h"    # Ljava/math/BigInteger;

    .prologue
    .line 583
    if-eqz p0, :cond_16

    .line 585
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 587
    const/4 v0, 0x1

    return v0

    .line 589
    :cond_c
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 591
    const/4 v0, 0x2

    return v0

    .line 595
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "h (Cofactor) must be 2 or 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSi(IILjava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 13
    .param p0, "fieldSize"    # I
    .param p1, "curveA"    # I
    .param p2, "cofactor"    # Ljava/math/BigInteger;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 565
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v3

    .line 566
    .local v3, "mu":B
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getShiftsForCofactor(Ljava/math/BigInteger;)I

    move-result v4

    .line 567
    .local v4, "shifts":I
    add-int/lit8 v6, p0, 0x3

    sub-int v2, v6, p1

    .line 568
    .local v2, "index":I
    invoke-static {v3, v2, v8}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v5

    .line 569
    .local v5, "ui":[Ljava/math/BigInteger;
    if-ne v3, v9, :cond_24

    .line 571
    aget-object v6, v5, v8

    invoke-virtual {v6}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    aput-object v6, v5, v8

    .line 572
    aget-object v6, v5, v9

    invoke-virtual {v6}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    aput-object v6, v5, v9

    .line 575
    :cond_24
    sget-object v6, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v7, v5, v9

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 576
    .local v0, "dividend0":Ljava/math/BigInteger;
    sget-object v6, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v7, v5, v8

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    .line 578
    .local v1, "dividend1":Ljava/math/BigInteger;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/math/BigInteger;

    aput-object v0, v6, v8

    aput-object v1, v6, v9

    return-object v6
.end method

.method public static getSi(Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;)[Ljava/math/BigInteger;
    .registers 13
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 540
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v8

    if-nez v8, :cond_11

    .line 542
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "si is defined for Koblitz curves only"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 545
    :cond_11
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v4

    .line 546
    .local v4, "m":I
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    .line 547
    .local v0, "a":I
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v5

    .line 548
    .local v5, "mu":B
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getCofactor()Ljava/math/BigInteger;

    move-result-object v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getShiftsForCofactor(Ljava/math/BigInteger;)I

    move-result v6

    .line 549
    .local v6, "shifts":I
    add-int/lit8 v8, v4, 0x3

    sub-int v3, v8, v0

    .line 550
    .local v3, "index":I
    invoke-static {v5, v3, v10}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v7

    .line 551
    .local v7, "ui":[Ljava/math/BigInteger;
    if-ne v5, v11, :cond_47

    .line 553
    aget-object v8, v7, v10

    invoke-virtual {v8}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v7, v10

    .line 554
    aget-object v8, v7, v11

    invoke-virtual {v8}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v7, v11

    .line 557
    :cond_47
    sget-object v8, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v9, v7, v11

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 558
    .local v1, "dividend0":Ljava/math/BigInteger;
    sget-object v8, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v9, v7, v10

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    .line 560
    .local v2, "dividend1":Ljava/math/BigInteger;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/math/BigInteger;

    aput-object v1, v8, v10

    aput-object v2, v8, v11

    return-object v8
.end method

.method public static getTw(BI)Ljava/math/BigInteger;
    .registers 9
    .param p0, "mu"    # B
    .param p1, "w"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 504
    const/4 v4, 0x4

    if-ne p1, v4, :cond_15

    .line 506
    if-ne p0, v6, :cond_e

    .line 508
    const-wide/16 v4, 0x6

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    return-object v4

    .line 513
    :cond_e
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    return-object v4

    .line 519
    :cond_15
    invoke-static {p0, p1, v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v3

    .line 520
    .local v3, "us":[Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 521
    .local v1, "twoToW":Ljava/math/BigInteger;
    aget-object v4, v3, v6

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 523
    .local v2, "u1invert":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    aget-object v5, v3, v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 526
    .local v0, "tw":Ljava/math/BigInteger;
    return-object v0
.end method

.method public static multiplyFromTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 10
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "u"    # [B

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 698
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 699
    .local v3, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 700
    .local v2, "pNeg":Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    const/4 v4, 0x0

    .line 701
    .local v4, "tauCount":I
    array-length v7, p1

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_2f

    .line 703
    add-int/lit8 v4, v4, 0x1

    .line 704
    aget-byte v5, p1, v1

    .line 705
    .local v5, "ui":B
    if-eqz v5, :cond_2a

    .line 707
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v3

    .line 708
    const/4 v4, 0x0

    .line 710
    if-lez v5, :cond_2d

    move-object v6, p0

    .line 711
    .local v6, "x":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_24
    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .end local v3    # "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    check-cast v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 701
    .end local v6    # "x":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v3    # "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    :cond_2a
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 710
    :cond_2d
    move-object v6, v2

    .restart local v6    # "x":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_24

    .line 714
    .end local v5    # "ui":B
    .end local v6    # "x":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_2f
    if-lez v4, :cond_35

    .line 716
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v3

    .line 718
    :cond_35
    return-object v3
.end method

.method public static multiplyRTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 11
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 657
    .local v7, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v1

    .line 658
    .local v1, "m":I
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    .line 659
    .local v6, "a":I
    invoke-static {v6}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v4

    .line 660
    .local v4, "mu":B
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v3

    .line 661
    .local v3, "s":[Ljava/math/BigInteger;
    int-to-byte v2, v6

    const/16 v5, 0xa

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v8

    .line 663
    .local v8, "rho":Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    invoke-static {p0, v8}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->multiplyTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v0

    return-object v0
.end method

.method public static multiplyTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 7
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "lambda"    # Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 678
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-static {v4}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getMu(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)B

    move-result v1

    .line 679
    .local v1, "mu":B
    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->tauAdicNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object v3

    .line 681
    .local v3, "u":[B
    invoke-static {p0, v3}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v2

    .line 683
    .local v2, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    return-object v2
.end method

.method public static norm(BLcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 9
    .param p0, "mu"    # B
    .param p1, "u"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .param p2, "v"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    .prologue
    const/4 v5, 0x1

    .line 129
    invoke-virtual {p1, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    .line 132
    .local v1, "s1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 135
    .local v2, "s2":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p2, p2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->shiftLeft(I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    .line 137
    .local v3, "s3":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    if-ne p0, v5, :cond_1c

    .line 139
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    .line 150
    .local v0, "norm":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :goto_1b
    return-object v0

    .line 141
    .end local v0    # "norm":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_1c
    const/4 v4, -0x1

    if-ne p0, v4, :cond_28

    .line 143
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    .restart local v0    # "norm":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    goto :goto_1b

    .line 147
    .end local v0    # "norm":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_28
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "mu must be 1 or -1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static norm(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;
    .registers 9
    .param p0, "mu"    # B
    .param p1, "lambda"    # Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .prologue
    const/4 v6, 0x1

    .line 87
    iget-object v4, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 90
    .local v1, "s1":Ljava/math/BigInteger;
    iget-object v4, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 93
    .local v2, "s2":Ljava/math/BigInteger;
    iget-object v4, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 95
    .local v3, "s3":Ljava/math/BigInteger;
    if-ne p0, v6, :cond_28

    .line 97
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 108
    .local v0, "norm":Ljava/math/BigInteger;
    :goto_27
    return-object v0

    .line 99
    .end local v0    # "norm":Ljava/math/BigInteger;
    :cond_28
    const/4 v4, -0x1

    if-ne p0, v4, :cond_34

    .line 101
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .restart local v0    # "norm":Ljava/math/BigInteger;
    goto :goto_27

    .line 105
    .end local v0    # "norm":Ljava/math/BigInteger;
    :cond_34
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "mu must be 1 or -1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .registers 21
    .param p0, "k"    # Ljava/math/BigInteger;
    .param p1, "m"    # I
    .param p2, "a"    # B
    .param p3, "s"    # [Ljava/math/BigInteger;
    .param p4, "mu"    # B
    .param p5, "c"    # B

    .prologue
    .line 616
    const/4 v2, 0x1

    move/from16 v0, p4

    if-ne v0, v2, :cond_7a

    .line 618
    const/4 v2, 0x0

    aget-object v2, p3, v2

    const/4 v3, 0x1

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 625
    .local v8, "d0":Ljava/math/BigInteger;
    :goto_f
    const/4 v2, 0x1

    move/from16 v0, p4

    move/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v14

    .line 626
    .local v14, "v":[Ljava/math/BigInteger;
    const/4 v2, 0x1

    aget-object v4, v14, v2

    .line 629
    .local v4, "vm":Ljava/math/BigInteger;
    const/4 v2, 0x0

    aget-object v3, p3, v2

    move-object v2, p0

    move/from16 v5, p2

    move/from16 v6, p1

    move/from16 v7, p5

    .line 628
    invoke-static/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    .line 632
    .local v9, "lambda0":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    const/4 v2, 0x1

    aget-object v3, p3, v2

    move-object v2, p0

    move/from16 v5, p2

    move/from16 v6, p1

    move/from16 v7, p5

    .line 631
    invoke-static/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v10

    .line 634
    .local v10, "lambda1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    move/from16 v0, p4

    invoke-static {v9, v10, v0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->round(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v11

    .line 637
    .local v11, "q":Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    iget-object v2, v11, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 638
    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v5, 0x1

    aget-object v5, p3, v5

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v5, v11, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 637
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 641
    .local v12, "r0":Ljava/math/BigInteger;
    const/4 v2, 0x1

    aget-object v2, p3, v2

    iget-object v3, v11, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p3, v3

    iget-object v5, v11, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 643
    .local v13, "r1":Ljava/math/BigInteger;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v2, v12, v13}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2

    .line 622
    .end local v4    # "vm":Ljava/math/BigInteger;
    .end local v8    # "d0":Ljava/math/BigInteger;
    .end local v9    # "lambda0":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v10    # "lambda1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v11    # "q":Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .end local v12    # "r0":Ljava/math/BigInteger;
    .end local v13    # "r1":Ljava/math/BigInteger;
    .end local v14    # "v":[Ljava/math/BigInteger;
    :cond_7a
    const/4 v2, 0x0

    aget-object v2, p3, v2

    const/4 v3, 0x1

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .restart local v8    # "d0":Ljava/math/BigInteger;
    goto :goto_f
.end method

.method public static round(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .registers 21
    .param p0, "lambda0"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .param p1, "lambda1"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .param p2, "mu"    # B

    .prologue
    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v14

    .line 170
    .local v14, "scale":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v14, :cond_15

    .line 172
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v17, "lambda0 and lambda1 do not have same scale"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 176
    :cond_15
    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-eq v0, v1, :cond_25

    const/16 v16, -0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_32

    :cond_25
    const/16 v16, 0x1

    :goto_27
    if-nez v16, :cond_35

    .line 178
    new-instance v16, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v17, "mu must be 1 or -1"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 176
    :cond_32
    const/16 v16, 0x0

    goto :goto_27

    .line 181
    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v7

    .line 182
    .local v7, "f0":Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v8

    .line 184
    .local v8, "f1":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    .line 185
    .local v5, "eta0":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v6

    .line 188
    .local v6, "eta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v5, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    .line 189
    .local v4, "eta":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_cd

    .line 191
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    .line 201
    :goto_59
    invoke-virtual {v6, v6}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v15

    .line 202
    .local v15, "threeEta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v15, v6}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    .line 205
    .local v9, "fourEta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    const/16 v16, 0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_d2

    .line 207
    invoke-virtual {v5, v15}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 208
    .local v2, "check1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v5, v9}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    .line 217
    .local v3, "check2":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :goto_77
    const/4 v10, 0x0

    .line 218
    .local v10, "h0":B
    const/4 v11, 0x0

    .line 221
    .local v11, "h1":B
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-ltz v16, :cond_dd

    .line 223
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-gez v16, :cond_db

    .line 225
    move/from16 v11, p2

    .line 242
    .end local v11    # "h1":B
    :cond_8f
    :goto_8f
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-gez v16, :cond_ec

    .line 244
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-ltz v16, :cond_ea

    .line 246
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v11, v0

    .line 262
    :cond_ab
    :goto_ab
    int-to-long v0, v10

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 263
    .local v12, "q0":Ljava/math/BigInteger;
    int-to-long v0, v11

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 264
    .local v13, "q1":Ljava/math/BigInteger;
    new-instance v16, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    move-object/from16 v0, v16

    invoke-direct {v0, v12, v13}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v16

    .line 196
    .end local v2    # "check1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v3    # "check2":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v9    # "fourEta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v10    # "h0":B
    .end local v12    # "q0":Ljava/math/BigInteger;
    .end local v13    # "q1":Ljava/math/BigInteger;
    .end local v15    # "threeEta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_cd
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    goto :goto_59

    .line 213
    .restart local v9    # "fourEta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .restart local v15    # "threeEta1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_d2
    invoke-virtual {v5, v15}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 214
    .restart local v2    # "check1":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v5, v9}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    .restart local v3    # "check2":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    goto :goto_77

    .line 229
    .restart local v10    # "h0":B
    .restart local v11    # "h1":B
    :cond_db
    const/4 v10, 0x1

    goto :goto_8f

    .line 235
    :cond_dd
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-ltz v16, :cond_8f

    .line 237
    move/from16 v11, p2

    .local v11, "h1":B
    goto :goto_8f

    .line 250
    .end local v11    # "h1":B
    :cond_ea
    const/4 v10, -0x1

    goto :goto_ab

    .line 256
    :cond_ec
    sget-object v16, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-gez v16, :cond_ab

    .line 258
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-byte v11, v0

    .restart local v11    # "h1":B
    goto :goto_ab
.end method

.method public static tau(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 2
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .prologue
    .line 395
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tau()Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v0

    return-object v0
.end method

.method public static tauAdicNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)[B
    .registers 16
    .param p0, "mu"    # B
    .param p1, "lambda"    # Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .prologue
    .line 316
    const/4 v11, 0x1

    if-eq p0, v11, :cond_6

    const/4 v11, -0x1

    if-ne p0, v11, :cond_12

    :cond_6
    const/4 v11, 0x1

    :goto_7
    if-nez v11, :cond_14

    .line 318
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "mu must be 1 or -1"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 316
    :cond_12
    const/4 v11, 0x0

    goto :goto_7

    .line 321
    :cond_14
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v4

    .line 324
    .local v4, "norm":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 327
    .local v2, "log2Norm":I
    const/16 v11, 0x1e

    if-le v2, v11, :cond_81

    add-int/lit8 v3, v2, 0x4

    .line 330
    .local v3, "maxLength":I
    :goto_22
    new-array v10, v3, [B

    .line 331
    .local v10, "u":[B
    const/4 v0, 0x0

    .line 334
    .local v0, "i":I
    const/4 v1, 0x0

    .line 336
    .local v1, "length":I
    iget-object v5, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 337
    .local v5, "r0":Ljava/math/BigInteger;
    iget-object v6, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 339
    .local v6, "r1":Ljava/math/BigInteger;
    :goto_2a
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_84

    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    :goto_38
    if-nez v11, :cond_96

    .line 342
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v11

    if-eqz v11, :cond_8d

    .line 344
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    sget-object v13, Lcom/android/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v10, v0

    .line 347
    aget-byte v11, v10, v0

    const/4 v12, 0x1

    if-ne v11, v12, :cond_86

    .line 349
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 356
    :goto_67
    move v1, v0

    .line 363
    :goto_68
    move-object v8, v5

    .line 364
    .local v8, "t":Ljava/math/BigInteger;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v7

    .line 365
    .local v7, "s":Ljava/math/BigInteger;
    const/4 v11, 0x1

    if-ne p0, v11, :cond_91

    .line 367
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 375
    :goto_75
    const/4 v11, 0x1

    invoke-virtual {v8, v11}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    .line 376
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 327
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v3    # "maxLength":I
    .end local v5    # "r0":Ljava/math/BigInteger;
    .end local v6    # "r1":Ljava/math/BigInteger;
    .end local v7    # "s":Ljava/math/BigInteger;
    .end local v8    # "t":Ljava/math/BigInteger;
    .end local v10    # "u":[B
    :cond_81
    const/16 v3, 0x22

    .restart local v3    # "maxLength":I
    goto :goto_22

    .line 339
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v5    # "r0":Ljava/math/BigInteger;
    .restart local v6    # "r1":Ljava/math/BigInteger;
    .restart local v10    # "u":[B
    :cond_84
    const/4 v11, 0x0

    goto :goto_38

    .line 354
    :cond_86
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_67

    .line 360
    :cond_8d
    const/4 v11, 0x0

    aput-byte v11, v10, v0

    goto :goto_68

    .line 372
    .restart local v7    # "s":Ljava/math/BigInteger;
    .restart local v8    # "t":Ljava/math/BigInteger;
    :cond_91
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_75

    .line 379
    .end local v7    # "s":Ljava/math/BigInteger;
    .end local v8    # "t":Ljava/math/BigInteger;
    :cond_96
    add-int/lit8 v1, v1, 0x1

    .line 382
    new-array v9, v1, [B

    .line 383
    .local v9, "tnaf":[B
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v10, v11, v9, v12, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 384
    return-object v9
.end method

.method public static tauAdicWNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lcom/android/org/bouncycastle/math/ec/ZTauElement;)[B
    .registers 21
    .param p0, "mu"    # B
    .param p1, "lambda"    # Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .param p2, "width"    # B
    .param p3, "pow2w"    # Ljava/math/BigInteger;
    .param p4, "tw"    # Ljava/math/BigInteger;
    .param p5, "alpha"    # [Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .prologue
    .line 738
    const/4 v13, 0x1

    if-eq p0, v13, :cond_6

    const/4 v13, -0x1

    if-ne p0, v13, :cond_12

    :cond_6
    const/4 v13, 0x1

    :goto_7
    if-nez v13, :cond_14

    .line 740
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "mu must be 1 or -1"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 738
    :cond_12
    const/4 v13, 0x0

    goto :goto_7

    .line 743
    :cond_14
    invoke-static/range {p0 .. p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v4

    .line 746
    .local v4, "norm":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 749
    .local v2, "log2Norm":I
    const/16 v13, 0x1e

    if-le v2, v13, :cond_a1

    add-int/lit8 v13, v2, 0x4

    add-int v3, v13, p2

    .line 752
    .local v3, "maxLength":I
    :goto_24
    new-array v10, v3, [B

    .line 755
    .local v10, "u":[B
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v5

    .line 758
    .local v5, "pow2wMin1":Ljava/math/BigInteger;
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 759
    .local v6, "r0":Ljava/math/BigInteger;
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 760
    .local v7, "r1":Ljava/math/BigInteger;
    const/4 v1, 0x0

    .line 763
    .local v1, "i":I
    :goto_36
    sget-object v13, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a4

    sget-object v13, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    :goto_44
    if-nez v13, :cond_cb

    .line 766
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v13

    if-eqz v13, :cond_bd

    .line 770
    move-object/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 774
    .local v12, "uUnMod":Ljava/math/BigInteger;
    invoke-virtual {v12, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v13

    if-ltz v13, :cond_a6

    .line 776
    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->intValue()I

    move-result v13

    int-to-byte v11, v13

    .line 784
    .local v11, "uLocal":B
    :goto_6e
    aput-byte v11, v10, v1

    .line 785
    const/4 v8, 0x1

    .line 786
    .local v8, "s":Z
    if-gez v11, :cond_76

    .line 788
    const/4 v8, 0x0

    .line 789
    neg-int v13, v11

    int-to-byte v11, v13

    .line 793
    :cond_76
    if-eqz v8, :cond_ac

    .line 795
    aget-object v13, p5, v11

    iget-object v13, v13, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 796
    aget-object v13, p5, v11

    iget-object v13, v13, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 809
    .end local v8    # "s":Z
    .end local v11    # "uLocal":B
    .end local v12    # "uUnMod":Ljava/math/BigInteger;
    :goto_88
    move-object v9, v6

    .line 811
    .local v9, "t":Ljava/math/BigInteger;
    const/4 v13, 0x1

    if-ne p0, v13, :cond_c1

    .line 813
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 820
    :goto_95
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v7

    .line 821
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 749
    .end local v1    # "i":I
    .end local v3    # "maxLength":I
    .end local v5    # "pow2wMin1":Ljava/math/BigInteger;
    .end local v6    # "r0":Ljava/math/BigInteger;
    .end local v7    # "r1":Ljava/math/BigInteger;
    .end local v9    # "t":Ljava/math/BigInteger;
    .end local v10    # "u":[B
    :cond_a1
    add-int/lit8 v3, p2, 0x22

    .restart local v3    # "maxLength":I
    goto :goto_24

    .line 763
    .restart local v1    # "i":I
    .restart local v5    # "pow2wMin1":Ljava/math/BigInteger;
    .restart local v6    # "r0":Ljava/math/BigInteger;
    .restart local v7    # "r1":Ljava/math/BigInteger;
    .restart local v10    # "u":[B
    :cond_a4
    const/4 v13, 0x0

    goto :goto_44

    .line 780
    .restart local v12    # "uUnMod":Ljava/math/BigInteger;
    :cond_a6
    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    move-result v13

    int-to-byte v11, v13

    .restart local v11    # "uLocal":B
    goto :goto_6e

    .line 800
    .restart local v8    # "s":Z
    :cond_ac
    aget-object v13, p5, v11

    iget-object v13, v13, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 801
    aget-object v13, p5, v11

    iget-object v13, v13, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_88

    .line 806
    .end local v8    # "s":Z
    .end local v11    # "uLocal":B
    .end local v12    # "uUnMod":Ljava/math/BigInteger;
    :cond_bd
    const/4 v13, 0x0

    aput-byte v13, v10, v1

    goto :goto_88

    .line 818
    .restart local v9    # "t":Ljava/math/BigInteger;
    :cond_c1
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_95

    .line 823
    .end local v9    # "t":Ljava/math/BigInteger;
    :cond_cb
    return-object v10
.end method
