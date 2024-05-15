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

.field private static final blacklist DEGREES_TO_RADIANS:D = 0.017453292519943295

.field public static final whitelist test-api E:D = 2.718281828459045

.field public static final whitelist test-api PI:D = 3.141592653589793

.field private static final blacklist RADIANS_TO_DEGREES:D = 57.29577951308232


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 81
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native whitelist test-api IEEEremainder(DD)D
.end method

.method public static whitelist test-api abs(D)D
    .registers 4
    .param p0, "a"    # D

    .line 1095
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api abs(F)F
    .registers 2
    .param p0, "a"    # F

    .line 1076
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api abs(I)I
    .registers 2
    .param p0, "a"    # I

    .line 1040
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api abs(J)J
    .registers 4
    .param p0, "a"    # J

    .line 1057
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native whitelist test-api acos(D)D
.end method

.method public static whitelist test-api addExact(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 738
    invoke-static {p0, p1}, Ljava/lang/Math;->addExact(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api addExact(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 753
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native whitelist test-api asin(D)D
.end method

.method public static native whitelist test-api atan(D)D
.end method

.method public static native whitelist test-api atan2(DD)D
.end method

.method public static native whitelist test-api cbrt(D)D
.end method

.method public static whitelist test-api ceil(D)D
    .registers 10
    .param p0, "a"    # D

    .line 354
    const-wide/high16 v2, -0x8000000000000000L

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide v0, p0

    invoke-static/range {v0 .. v7}, Ljava/lang/StrictMath;->floorOrCeil(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api copySign(DD)D
    .registers 6
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    .line 1497
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

.method public static whitelist test-api copySign(FF)F
    .registers 3
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    .line 1513
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

.method public static native whitelist test-api cos(D)D
.end method

.method public static native whitelist test-api cosh(D)D
.end method

.method public static native whitelist test-api exp(D)D
.end method

.method public static native whitelist test-api expm1(D)D
.end method

.method public static whitelist test-api floor(D)D
    .registers 10
    .param p0, "a"    # D

    .line 373
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    move-wide v0, p0

    invoke-static/range {v0 .. v7}, Ljava/lang/StrictMath;->floorOrCeil(DDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api floorDiv(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 893
    invoke-static {p0, p1}, Ljava/lang/Math;->floorDiv(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api floorDiv(JI)J
    .registers 5
    .param p0, "x"    # J
    .param p2, "y"    # I

    .line 917
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->floorDiv(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api floorDiv(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 941
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api floorMod(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 968
    invoke-static {p0, p1}, Ljava/lang/Math;->floorMod(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api floorMod(JI)I
    .registers 4
    .param p0, "x"    # J
    .param p2, "y"    # I

    .line 996
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->floorMod(JI)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api floorMod(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1023
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

    .line 388
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 390
    .local v0, "exponent":I
    const-wide/16 v1, 0x0

    if-gez v0, :cond_16

    .line 396
    cmpl-double v3, p0, v1

    if-nez v3, :cond_e

    move-wide v1, p0

    goto :goto_15

    .line 397
    :cond_e
    cmpg-double v1, p0, v1

    if-gez v1, :cond_14

    move-wide v1, p2

    goto :goto_15

    :cond_14
    move-wide v1, p4

    .line 396
    :goto_15
    return-wide v1

    .line 398
    :cond_16
    const/16 v3, 0x34

    if-lt v0, v3, :cond_1b

    .line 402
    return-wide p0

    .line 406
    :cond_1b
    nop

    .line 408
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v3

    .line 409
    .local v3, "doppel":J
    const-wide v5, 0xfffffffffffffL

    shr-long/2addr v5, v0

    .line 411
    .local v5, "mask":J
    and-long v7, v5, v3

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_2f

    .line 412
    return-wide p0

    .line 414
    :cond_2f
    not-long v7, v5

    and-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    .line 415
    .local v7, "result":D
    mul-double v9, p6, p0

    cmpl-double v1, v9, v1

    if-lez v1, :cond_3d

    .line 416
    add-double v7, v7, p6

    .line 417
    :cond_3d
    return-wide v7
.end method

.method public static whitelist test-api getExponent(D)I
    .registers 3
    .param p0, "d"    # D

    .line 1548
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getExponent(F)I
    .registers 2
    .param p0, "f"    # F

    .line 1530
    invoke-static {p0}, Ljava/lang/Math;->getExponent(F)I

    move-result v0

    return v0
.end method

.method public static native whitelist test-api hypot(DD)D
.end method

.method public static native whitelist test-api log(D)D
.end method

.method public static native whitelist test-api log10(D)D
.end method

.method public static native whitelist test-api log1p(D)D
.end method

.method public static whitelist test-api max(DD)D
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 1159
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api max(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 1141
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api max(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 1109
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api max(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 1123
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api min(DD)D
    .registers 6
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 1223
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api min(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 1205
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api min(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 1173
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api min(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 1187
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api multiplyExact(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 798
    invoke-static {p0, p1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api multiplyExact(JI)J
    .registers 5
    .param p0, "x"    # J
    .param p2, "y"    # I

    .line 813
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api multiplyExact(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 828
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api multiplyFull(II)J
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 855
    invoke-static {p0, p1}, Ljava/lang/Math;->multiplyFull(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api multiplyHigh(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 869
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->multiplyHigh(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api nextAfter(DD)D
    .registers 6
    .param p0, "start"    # D
    .param p2, "direction"    # D

    .line 1591
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->nextAfter(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api nextAfter(FD)F
    .registers 4
    .param p0, "start"    # F
    .param p1, "direction"    # D

    .line 1633
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->nextAfter(FD)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api nextDown(D)D
    .registers 4
    .param p0, "d"    # D

    .line 1720
    invoke-static {p0, p1}, Ljava/lang/Math;->nextDown(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api nextDown(F)F
    .registers 2
    .param p0, "f"    # F

    .line 1749
    invoke-static {p0}, Ljava/lang/Math;->nextDown(F)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api nextUp(D)D
    .registers 4
    .param p0, "d"    # D

    .line 1662
    invoke-static {p0, p1}, Ljava/lang/Math;->nextUp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api nextUp(F)F
    .registers 2
    .param p0, "f"    # F

    .line 1691
    invoke-static {p0}, Ljava/lang/Math;->nextUp(F)F

    move-result v0

    return v0
.end method

.method public static native whitelist test-api pow(DD)D
.end method

.method public static whitelist test-api random()D
    .registers 2

    .line 723
    sget-object v0, Ljava/lang/StrictMath$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api rint(D)D
    .registers 8
    .param p0, "a"    # D

    .line 463
    const-wide/high16 v0, 0x4330000000000000L    # 4.503599627370496E15

    .line 464
    .local v0, "twoToThe52":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v2

    .line 465
    .local v2, "sign":D
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    .line 467
    cmpg-double v4, p0, v0

    if-gez v4, :cond_14

    .line 468
    add-double v4, v0, p0

    sub-double p0, v4, v0

    .line 471
    :cond_14
    mul-double v4, v2, p0

    return-wide v4
.end method

.method public static whitelist test-api round(F)I
    .registers 2
    .param p0, "a"    # F

    .line 668
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api round(D)J
    .registers 4
    .param p0, "a"    # D

    .line 692
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api scalb(DI)D
    .registers 5
    .param p0, "d"    # D
    .param p2, "scaleFactor"    # I

    .line 1783
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->scalb(DI)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api scalb(FI)F
    .registers 3
    .param p0, "f"    # F
    .param p1, "scaleFactor"    # I

    .line 1817
    invoke-static {p0, p1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api signum(D)D
    .registers 4
    .param p0, "d"    # D

    .line 1298
    invoke-static {p0, p1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api signum(F)F
    .registers 2
    .param p0, "f"    # F

    .line 1319
    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    return v0
.end method

.method public static native whitelist test-api sin(D)D
.end method

.method public static native whitelist test-api sinh(D)D
.end method

.method public static native whitelist test-api sqrt(D)D
.end method

.method public static whitelist test-api subtractExact(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 768
    invoke-static {p0, p1}, Ljava/lang/Math;->subtractExact(II)I

    move-result v0

    return v0
.end method

.method public static whitelist test-api subtractExact(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 783
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->subtractExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static native whitelist test-api tan(D)D
.end method

.method public static native whitelist test-api tanh(D)D
.end method

.method public static strictfp whitelist test-api toDegrees(D)D
    .registers 4
    .param p0, "angrad"    # D

    .line 213
    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static whitelist test-api toIntExact(J)I
    .registers 3
    .param p0, "value"    # J

    .line 842
    invoke-static {p0, p1}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    return v0
.end method

.method public static strictfp whitelist test-api toRadians(D)D
    .registers 4
    .param p0, "angdeg"    # D

    .line 196
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static whitelist test-api ulp(D)D
    .registers 4
    .param p0, "d"    # D

    .line 1250
    invoke-static {p0, p1}, Ljava/lang/Math;->ulp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api ulp(F)F
    .registers 2
    .param p0, "f"    # F

    .line 1277
    invoke-static {p0}, Ljava/lang/Math;->ulp(F)F

    move-result v0

    return v0
.end method
