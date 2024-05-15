.class public final Ljava/lang/StrictMath;
.super Ljava/lang/Object;
.source "StrictMath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/StrictMath$RandomNumberGeneratorHolder;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Ljava/lang/StrictMath;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/lang/StrictMath;->-assertionsDisabled:Z

    .line 80
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native IEEEremainder(DD)D
.end method

.method public static abs(D)D
    .registers 4
    .param p0, "a"    # D

    .prologue
    .line 986
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static abs(F)F
    .registers 2
    .param p0, "a"    # F

    .prologue
    .line 967
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public static abs(I)I
    .registers 2
    .param p0, "a"    # I

    .prologue
    .line 931
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public static abs(J)J
    .registers 4
    .param p0, "a"    # J

    .prologue
    .line 948
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native acos(D)D
.end method

.method public static addExact(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 724
    invoke-static {p0, p1}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    return v0
.end method

.method public static addExact(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 739
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native asin(D)D
.end method

.method public static native atan(D)D
.end method

.method public static native atan2(DD)D
.end method

.method public static native cbrt(D)D
.end method

.method public static ceil(D)D
    .registers 10
    .param p0, "a"    # D

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 340
    const-wide/high16 v2, -0x8000000000000000L

    move-wide v0, p0

    move-wide v6, v4

    invoke-static/range {v0 .. v7}, Ljava/lang/StrictMath;->floorOrCeil(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static copySign(DD)D
    .registers 6
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    .prologue
    .line 1388
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_8

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    .end local p2    # "sign":D
    :cond_8
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static copySign(FF)F
    .registers 3
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    .prologue
    .line 1404
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_8

    const/high16 p1, 0x3f800000    # 1.0f

    .end local p1    # "sign":F
    :cond_8
    invoke-static {p0, p1}, Ljava/lang/Math;->copySign(FF)F

    move-result v0

    return v0
.end method

.method public static native cos(D)D
.end method

.method public static native cosh(D)D
.end method

.method public static native exp(D)D
.end method

.method public static native expm1(D)D
.end method

.method public static floor(D)D
    .registers 10
    .param p0, "a"    # D

    .prologue
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 359
    const-wide/16 v4, 0x0

    move-wide v0, p0

    move-wide v6, v2

    invoke-static/range {v0 .. v7}, Ljava/lang/StrictMath;->floorOrCeil(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static floorDiv(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 837
    invoke-static {p0, p1}, Ljava/lang/Math;->floorDiv(II)I

    move-result v0

    return v0
.end method

.method public static floorDiv(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 861
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static floorMod(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 888
    invoke-static {p0, p1}, Ljava/lang/Math;->floorMod(II)I

    move-result v0

    return v0
.end method

.method public static floorMod(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 914
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static floorOrCeil(DDDD)D
    .registers 20
    .param p0, "a"    # D
    .param p2, "negativeBoundary"    # D
    .param p4, "positiveBoundary"    # D
    .param p6, "sign"    # D

    .prologue
    .line 374
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v2

    .line 376
    .local v2, "exponent":I
    if-gez v2, :cond_18

    .line 382
    const-wide/16 v8, 0x0

    cmpl-double v3, p0, v8

    if-nez v3, :cond_d

    .end local p0    # "a":D
    :goto_c
    return-wide p0

    .line 383
    .restart local p0    # "a":D
    :cond_d
    const-wide/16 v8, 0x0

    cmpg-double v3, p0, v8

    if-gez v3, :cond_15

    move-wide p0, p2

    goto :goto_c

    :cond_15
    move-wide/from16 p0, p4

    goto :goto_c

    .line 384
    :cond_18
    const/16 v3, 0x34

    if-lt v2, v3, :cond_1d

    .line 388
    return-wide p0

    .line 392
    :cond_1d
    sget-boolean v3, Ljava/lang/StrictMath;->-assertionsDisabled:Z

    if-nez v3, :cond_2d

    if-ltz v2, :cond_27

    const/16 v3, 0x33

    if-le v2, v3, :cond_2d

    :cond_27
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 394
    :cond_2d
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 395
    .local v0, "doppel":J
    const-wide v8, 0xfffffffffffffL

    shr-long v4, v8, v2

    .line 397
    .local v4, "mask":J
    and-long v8, v4, v0

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-nez v3, :cond_41

    .line 398
    return-wide p0

    .line 400
    :cond_41
    not-long v8, v4

    and-long/2addr v8, v0

    invoke-static {v8, v9}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v6

    .line 401
    .local v6, "result":D
    mul-double v8, p6, p0

    const-wide/16 v10, 0x0

    cmpl-double v3, v8, v10

    if-lez v3, :cond_51

    .line 402
    add-double v6, v6, p6

    .line 403
    :cond_51
    return-wide v6
.end method

.method public static getExponent(D)I
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 1439
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    return v0
.end method

.method public static getExponent(F)I
    .registers 2
    .param p0, "f"    # F

    .prologue
    .line 1421
    invoke-static {p0}, Ljava/lang/Math;->getExponent(F)I

    move-result v0

    return v0
.end method

.method public static native hypot(DD)D
.end method

.method public static native log(D)D
.end method

.method public static native log10(D)D
.end method

.method public static native log1p(D)D
.end method

.method public static max(DD)D
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 1050
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 1032
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static max(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 1000
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static max(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 1014
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static min(DD)D
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    .line 1114
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 1096
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static min(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 1064
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static min(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 1078
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static multiplyExact(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 784
    invoke-static {p0, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    return v0
.end method

.method public static multiplyExact(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 799
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static nextAfter(DD)D
    .registers 6
    .param p0, "start"    # D
    .param p2, "direction"    # D

    .prologue
    .line 1482
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->nextAfter(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextAfter(FD)F
    .registers 4
    .param p0, "start"    # F
    .param p1, "direction"    # D

    .prologue
    .line 1524
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->nextAfter(FD)F

    move-result v0

    return v0
.end method

.method public static nextDown(D)D
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 1611
    invoke-static {p0, p1}, Ljava/lang/Math;->nextDown(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextDown(F)F
    .registers 2
    .param p0, "f"    # F

    .prologue
    .line 1640
    invoke-static {p0}, Ljava/lang/Math;->nextDown(F)F

    move-result v0

    return v0
.end method

.method public static nextUp(D)D
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 1553
    invoke-static {p0, p1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static nextUp(F)F
    .registers 2
    .param p0, "f"    # F

    .prologue
    .line 1582
    invoke-static {p0}, Ljava/lang/Math;->nextUp(F)F

    move-result v0

    return v0
.end method

.method public static native pow(DD)D
.end method

.method public static random()D
    .registers 2

    .prologue
    .line 709
    sget-object v0, Ljava/lang/StrictMath$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static rint(D)D
    .registers 10
    .param p0, "a"    # D

    .prologue
    const-wide/high16 v6, 0x4330000000000000L    # 4.503599627370496E15

    .line 449
    const-wide/high16 v2, 0x4330000000000000L    # 4.503599627370496E15

    .line 450
    .local v2, "twoToThe52":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    .line 451
    .local v0, "sign":D
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 453
    cmpg-double v4, p0, v6

    if-gez v4, :cond_16

    .line 454
    add-double v4, v6, p0

    sub-double p0, v4, v6

    .line 457
    :cond_16
    mul-double v4, v0, p0

    return-wide v4
.end method

.method public static round(F)I
    .registers 2
    .param p0, "a"    # F

    .prologue
    .line 654
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static round(D)J
    .registers 4
    .param p0, "a"    # D

    .prologue
    .line 678
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static scalb(DI)D
    .registers 5
    .param p0, "d"    # D
    .param p2, "scaleFactor"    # I

    .prologue
    .line 1674
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static scalb(FI)F
    .registers 3
    .param p0, "f"    # F
    .param p1, "scaleFactor"    # I

    .prologue
    .line 1708
    invoke-static {p0, p1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    return v0
.end method

.method public static signum(D)D
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 1189
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static signum(F)F
    .registers 2
    .param p0, "f"    # F

    .prologue
    .line 1210
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    return v0
.end method

.method public static native sin(D)D
.end method

.method public static native sinh(D)D
.end method

.method public static native sqrt(D)D
.end method

.method public static subtractExact(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 754
    invoke-static {p0, p1}, Ljava/lang/Math;->subtractExact(II)I

    move-result v0

    return v0
.end method

.method public static subtractExact(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 769
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native tan(D)D
.end method

.method public static native tanh(D)D
.end method

.method public static strictfp toDegrees(D)D
    .registers 6
    .param p0, "angrad"    # D

    .prologue
    .line 199
    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static toIntExact(J)I
    .registers 4
    .param p0, "value"    # J

    .prologue
    .line 813
    invoke-static {p0, p1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    return v0
.end method

.method public static strictfp toRadians(D)D
    .registers 6
    .param p0, "angdeg"    # D

    .prologue
    .line 182
    const-wide v0, 0x4066800000000000L    # 180.0

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static ulp(D)D
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 1141
    invoke-static {p0, p1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static ulp(F)F
    .registers 2
    .param p0, "f"    # F

    .prologue
    .line 1168
    invoke-static {p0}, Ljava/lang/Math;->ulp(F)F

    move-result v0

    return v0
.end method
