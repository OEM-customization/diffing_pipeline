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
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist core-platform-api test-api E:D = 2.718281828459045

.field public static final whitelist core-platform-api test-api PI:D = 3.141592653589793


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 80
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native whitelist core-platform-api test-api IEEEremainder(DD)D
.end method

.method public static whitelist core-platform-api test-api abs(D)D
    .registers 4
    .param p0, "a"    # D

    .line 986
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api abs(F)F
    .registers 2
    .param p0, "a"    # F

    .line 967
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api abs(I)I
    .registers 2
    .param p0, "a"    # I

    .line 931
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api abs(J)J
    .registers 4
    .param p0, "a"    # J

    .line 948
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native whitelist core-platform-api test-api acos(D)D
.end method

.method public static whitelist core-platform-api test-api addExact(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 724
    invoke-static {p0, p1}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api addExact(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 739
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native whitelist core-platform-api test-api asin(D)D
.end method

.method public static native whitelist core-platform-api test-api atan(D)D
.end method

.method public static native whitelist core-platform-api test-api atan2(DD)D
.end method

.method public static native whitelist core-platform-api test-api cbrt(D)D
.end method

.method public static whitelist core-platform-api test-api ceil(D)D
    .registers 10
    .param p0, "a"    # D

    .line 340
    const-wide/high16 v2, -0x8000000000000000L

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide v0, p0

    invoke-static/range {v0 .. v7}, Ljava/lang/StrictMath;->floorOrCeil(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api copySign(DD)D
    .registers 6
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    .line 1388
    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_a

    :cond_9
    move-wide v0, p2

    :goto_a
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api copySign(FF)F
    .registers 3
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    .line 1404
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_9
    move v0, p1

    :goto_a
    invoke-static {p0, v0}, Ljava/lang/Math;->copySign(FF)F

    move-result v0

    return v0
.end method

.method public static native whitelist core-platform-api test-api cos(D)D
.end method

.method public static native whitelist core-platform-api test-api cosh(D)D
.end method

.method public static native whitelist core-platform-api test-api exp(D)D
.end method

.method public static native whitelist core-platform-api test-api expm1(D)D
.end method

.method public static whitelist core-platform-api test-api floor(D)D
    .registers 10
    .param p0, "a"    # D

    .line 359
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-wide v0, p0

    invoke-static/range {v0 .. v7}, Ljava/lang/StrictMath;->floorOrCeil(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api floorDiv(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 837
    invoke-static {p0, p1}, Ljava/lang/Math;->floorDiv(II)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api floorDiv(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 861
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api floorMod(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 888
    invoke-static {p0, p1}, Ljava/lang/Math;->floorMod(II)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api floorMod(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 914
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorMod(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static greylist-max-o floorOrCeil(DDDD)D
    .registers 19
    .param p0, "a"    # D
    .param p2, "negativeBoundary"    # D
    .param p4, "positiveBoundary"    # D
    .param p6, "sign"    # D

    .line 374
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 376
    .local v0, "exponent":I
    const-wide/16 v1, 0x0

    if-gez v0, :cond_16

    .line 382
    cmpl-double v3, p0, v1

    if-nez v3, :cond_e

    move-wide v1, p0

    goto :goto_15

    .line 383
    :cond_e
    cmpg-double v1, p0, v1

    if-gez v1, :cond_14

    move-wide v1, p2

    goto :goto_15

    :cond_14
    move-wide v1, p4

    .line 382
    :goto_15
    return-wide v1

    .line 384
    :cond_16
    const/16 v3, 0x34

    if-lt v0, v3, :cond_1b

    .line 388
    return-wide p0

    .line 392
    :cond_1b
    nop

    .line 394
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    .line 395
    .local v3, "doppel":J
    const-wide v5, 0xfffffffffffffL

    shr-long/2addr v5, v0

    .line 397
    .local v5, "mask":J
    and-long v7, v5, v3

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_2f

    .line 398
    return-wide p0

    .line 400
    :cond_2f
    not-long v7, v5

    and-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    .line 401
    .local v7, "result":D
    mul-double v9, p6, p0

    cmpl-double v1, v9, v1

    if-lez v1, :cond_3d

    .line 402
    add-double v7, v7, p6

    .line 403
    :cond_3d
    return-wide v7
.end method

.method public static whitelist core-platform-api test-api getExponent(D)I
    .registers 3
    .param p0, "d"    # D

    .line 1439
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api getExponent(F)I
    .registers 2
    .param p0, "f"    # F

    .line 1421
    invoke-static {p0}, Ljava/lang/Math;->getExponent(F)I

    move-result v0

    return v0
.end method

.method public static native whitelist core-platform-api test-api hypot(DD)D
.end method

.method public static native whitelist core-platform-api test-api log(D)D
.end method

.method public static native whitelist core-platform-api test-api log10(D)D
.end method

.method public static native whitelist core-platform-api test-api log1p(D)D
.end method

.method public static whitelist core-platform-api test-api max(DD)D
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 1050
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api max(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 1032
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api max(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 1000
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api max(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 1014
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api min(DD)D
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 1114
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api min(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 1096
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api min(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 1064
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api min(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 1078
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api multiplyExact(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 784
    invoke-static {p0, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api multiplyExact(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 799
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api nextAfter(DD)D
    .registers 6
    .param p0, "start"    # D
    .param p2, "direction"    # D

    .line 1482
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->nextAfter(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api nextAfter(FD)F
    .registers 4
    .param p0, "start"    # F
    .param p1, "direction"    # D

    .line 1524
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->nextAfter(FD)F

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api nextDown(D)D
    .registers 4
    .param p0, "d"    # D

    .line 1611
    invoke-static {p0, p1}, Ljava/lang/Math;->nextDown(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api nextDown(F)F
    .registers 2
    .param p0, "f"    # F

    .line 1640
    invoke-static {p0}, Ljava/lang/Math;->nextDown(F)F

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api nextUp(D)D
    .registers 4
    .param p0, "d"    # D

    .line 1553
    invoke-static {p0, p1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api nextUp(F)F
    .registers 2
    .param p0, "f"    # F

    .line 1582
    invoke-static {p0}, Ljava/lang/Math;->nextUp(F)F

    move-result v0

    return v0
.end method

.method public static native whitelist core-platform-api test-api pow(DD)D
.end method

.method public static whitelist core-platform-api test-api random()D
    .registers 2

    .line 709
    sget-object v0, Ljava/lang/StrictMath$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api rint(D)D
    .registers 8
    .param p0, "a"    # D

    .line 449
    const-wide/high16 v0, 0x4330000000000000L    # 4.503599627370496E15

    .line 450
    .local v0, "twoToThe52":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v2

    .line 451
    .local v2, "sign":D
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 453
    cmpg-double v4, p0, v0

    if-gez v4, :cond_14

    .line 454
    add-double v4, v0, p0

    sub-double p0, v4, v0

    .line 457
    :cond_14
    mul-double v4, v2, p0

    return-wide v4
.end method

.method public static whitelist core-platform-api test-api round(F)I
    .registers 2
    .param p0, "a"    # F

    .line 654
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api round(D)J
    .registers 4
    .param p0, "a"    # D

    .line 678
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api scalb(DI)D
    .registers 5
    .param p0, "d"    # D
    .param p2, "scaleFactor"    # I

    .line 1674
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api scalb(FI)F
    .registers 3
    .param p0, "f"    # F
    .param p1, "scaleFactor"    # I

    .line 1708
    invoke-static {p0, p1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api signum(D)D
    .registers 4
    .param p0, "d"    # D

    .line 1189
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api signum(F)F
    .registers 2
    .param p0, "f"    # F

    .line 1210
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    return v0
.end method

.method public static native whitelist core-platform-api test-api sin(D)D
.end method

.method public static native whitelist core-platform-api test-api sinh(D)D
.end method

.method public static native whitelist core-platform-api test-api sqrt(D)D
.end method

.method public static whitelist core-platform-api test-api subtractExact(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 754
    invoke-static {p0, p1}, Ljava/lang/Math;->subtractExact(II)I

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api subtractExact(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 769
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native whitelist core-platform-api test-api tan(D)D
.end method

.method public static native whitelist core-platform-api test-api tanh(D)D
.end method

.method public static strictfp whitelist core-platform-api test-api toDegrees(D)D
    .registers 6
    .param p0, "angrad"    # D

    .line 199
    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api toIntExact(J)I
    .registers 3
    .param p0, "value"    # J

    .line 813
    invoke-static {p0, p1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    return v0
.end method

.method public static strictfp whitelist core-platform-api test-api toRadians(D)D
    .registers 6
    .param p0, "angdeg"    # D

    .line 182
    const-wide v0, 0x4066800000000000L    # 180.0

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api ulp(D)D
    .registers 4
    .param p0, "d"    # D

    .line 1141
    invoke-static {p0, p1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api ulp(F)F
    .registers 2
    .param p0, "f"    # F

    .line 1168
    invoke-static {p0}, Ljava/lang/Math;->ulp(F)F

    move-result v0

    return v0
.end method
