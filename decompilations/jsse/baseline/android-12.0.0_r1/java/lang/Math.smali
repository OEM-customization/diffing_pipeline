.class public final Ljava/lang/Math;
.super Ljava/lang/Object;
.source "Math.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Math$RandomNumberGeneratorHolder;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist DEGREES_TO_RADIANS:D = 0.017453292519943295

.field public static final whitelist test-api E:D = 2.718281828459045

.field public static final whitelist test-api PI:D = 3.141592653589793

.field private static final blacklist RADIANS_TO_DEGREES:D = 57.29577951308232

.field private static greylist-max-o negativeZeroDoubleBits:J

.field private static greylist-max-o negativeZeroFloatBits:J

.field static greylist-max-o twoToTheDoubleScaleDown:D

.field static greylist-max-o twoToTheDoubleScaleUp:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 112
    nop

    .line 1434
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Ljava/lang/Math;->negativeZeroFloatBits:J

    .line 1435
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Ljava/lang/Math;->negativeZeroDoubleBits:J

    .line 2506
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v0

    sput-wide v0, Ljava/lang/Math;->twoToTheDoubleScaleUp:D

    .line 2507
    const/16 v0, -0x200

    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v0

    sput-wide v0, Ljava/lang/Math;->twoToTheDoubleScaleDown:D

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native whitelist test-api IEEEremainder(DD)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api abs(D)D
    .registers 6
    .param p0, "a"    # D

    .line 1402
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api abs(F)F
    .registers 3
    .param p0, "a"    # F

    .line 1378
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api abs(I)I
    .registers 2
    .param p0, "a"    # I

    .line 1337
    if-gez p0, :cond_4

    neg-int v0, p0

    goto :goto_5

    :cond_4
    move v0, p0

    :goto_5
    return v0
.end method

.method public static whitelist test-api abs(J)J
    .registers 4
    .param p0, "a"    # J

    .line 1354
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_8

    neg-long v0, p0

    goto :goto_9

    :cond_8
    move-wide v0, p0

    :goto_9
    return-wide v0
.end method

.method public static native whitelist test-api acos(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api addExact(II)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 823
    add-int v0, p0, p1

    .line 825
    .local v0, "r":I
    xor-int v1, p0, v0

    xor-int v2, p1, v0

    and-int/2addr v1, v2

    if-ltz v1, :cond_a

    .line 828
    return v0

    .line 826
    :cond_a
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api addExact(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 842
    add-long v0, p0, p2

    .line 844
    .local v0, "r":J
    xor-long v2, p0, v0

    xor-long v4, p2, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    .line 847
    return-wide v0

    .line 845
    :cond_e
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "long overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static native whitelist test-api asin(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api atan(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api atan2(DD)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api cbrt(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api ceil(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api copySign(DD)D
    .registers 10
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    .line 1924
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    .line 1926
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 1924
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api copySign(FF)F
    .registers 5
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    .line 1947
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    .line 1949
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 1947
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static native whitelist test-api cos(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api cosh(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api decrementExact(I)I
    .registers 3
    .param p0, "a"    # I

    .line 992
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_7

    .line 996
    add-int/lit8 v0, p0, -0x1

    return v0

    .line 993
    :cond_7
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api decrementExact(J)J
    .registers 4
    .param p0, "a"    # J

    .line 1009
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_b

    .line 1013
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    return-wide v0

    .line 1010
    :cond_b
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native whitelist test-api exp(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api expm1(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api floor(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api floorDiv(II)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1151
    div-int v0, p0, p1

    .line 1153
    .local v0, "r":I
    xor-int v1, p0, p1

    if-gez v1, :cond_c

    mul-int v1, v0, p1

    if-eq v1, p0, :cond_c

    .line 1154
    add-int/lit8 v0, v0, -0x1

    .line 1156
    :cond_c
    return v0
.end method

.method public static whitelist test-api floorDiv(JI)J
    .registers 5
    .param p0, "x"    # J
    .param p2, "y"    # I

    .line 1185
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api floorDiv(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1214
    div-long v0, p0, p2

    .line 1216
    .local v0, "r":J
    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_13

    mul-long v2, v0, p2

    cmp-long v2, v2, p0

    if-eqz v2, :cond_13

    .line 1217
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 1219
    :cond_13
    return-wide v0
.end method

.method public static whitelist test-api floorMod(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1267
    invoke-static {p0, p1}, Ljava/lang/Math;->floorDiv(II)I

    move-result v0

    mul-int/2addr v0, p1

    sub-int v0, p0, v0

    return v0
.end method

.method public static whitelist test-api floorMod(JI)I
    .registers 7
    .param p0, "x"    # J
    .param p2, "y"    # I

    .line 1294
    invoke-static {p0, p1, p2}, Ljava/lang/Math;->floorDiv(JI)J

    move-result-wide v0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    sub-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static whitelist test-api floorMod(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1320
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    mul-long/2addr v0, p2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static whitelist test-api getExponent(D)I
    .registers 6
    .param p0, "d"    # D

    .line 1998
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, v2

    const/16 v2, 0x34

    shr-long/2addr v0, v2

    const-wide/16 v2, 0x3ff

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static whitelist test-api getExponent(F)I
    .registers 3
    .param p0, "f"    # F

    .line 1974
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x17

    add-int/lit8 v0, v0, -0x7f

    return v0
.end method

.method public static native whitelist test-api hypot(DD)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api incrementExact(I)I
    .registers 3
    .param p0, "a"    # I

    .line 958
    const v0, 0x7fffffff

    if-eq p0, v0, :cond_8

    .line 962
    add-int/lit8 v0, p0, 0x1

    return v0

    .line 959
    :cond_8
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api incrementExact(J)J
    .registers 4
    .param p0, "a"    # J

    .line 975
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-eqz v0, :cond_d

    .line 979
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    return-wide v0

    .line 976
    :cond_d
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native whitelist test-api log(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api log10(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api log1p(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api max(DD)D
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 1478
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_5

    .line 1479
    return-wide p0

    .line 1480
    :cond_5
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1a

    cmpl-double v0, p2, v0

    if-nez v0, :cond_1a

    .line 1482
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroDoubleBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 1484
    return-wide p2

    .line 1486
    :cond_1a
    cmpl-double v0, p0, p2

    if-ltz v0, :cond_20

    move-wide v0, p0

    goto :goto_21

    :cond_20
    move-wide v0, p2

    :goto_21
    return-wide v0
.end method

.method public static whitelist test-api max(FF)F
    .registers 6
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 1452
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_5

    .line 1453
    return p0

    .line 1454
    :cond_5
    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_1a

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1a

    .line 1456
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroFloatBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 1458
    return p1

    .line 1460
    :cond_1a
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_20

    move v0, p0

    goto :goto_21

    :cond_20
    move v0, p1

    :goto_21
    return v0
.end method

.method public static whitelist test-api max(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 1416
    if-lt p0, p1, :cond_4

    move v0, p0

    goto :goto_5

    :cond_4
    move v0, p1

    :goto_5
    return v0
.end method

.method public static whitelist test-api max(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 1430
    cmp-long v0, p0, p2

    if-ltz v0, :cond_6

    move-wide v0, p0

    goto :goto_7

    :cond_6
    move-wide v0, p2

    :goto_7
    return-wide v0
.end method

.method public static whitelist test-api min(DD)D
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 1558
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_5

    .line 1559
    return-wide p0

    .line 1560
    :cond_5
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1a

    cmpl-double v0, p2, v0

    if-nez v0, :cond_1a

    .line 1562
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroDoubleBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 1564
    return-wide p2

    .line 1566
    :cond_1a
    cmpg-double v0, p0, p2

    if-gtz v0, :cond_20

    move-wide v0, p0

    goto :goto_21

    :cond_20
    move-wide v0, p2

    :goto_21
    return-wide v0
.end method

.method public static whitelist test-api min(FF)F
    .registers 6
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 1532
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_5

    .line 1533
    return p0

    .line 1534
    :cond_5
    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_1a

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1a

    .line 1536
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroFloatBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 1538
    return p1

    .line 1540
    :cond_1a
    cmpg-float v0, p0, p1

    if-gtz v0, :cond_20

    move v0, p0

    goto :goto_21

    :cond_20
    move v0, p1

    :goto_21
    return v0
.end method

.method public static whitelist test-api min(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 1500
    if-gt p0, p1, :cond_4

    move v0, p0

    goto :goto_5

    :cond_4
    move v0, p1

    :goto_5
    return v0
.end method

.method public static whitelist test-api min(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 1514
    cmp-long v0, p0, p2

    if-gtz v0, :cond_6

    move-wide v0, p0

    goto :goto_7

    :cond_6
    move-wide v0, p2

    :goto_7
    return-wide v0
.end method

.method public static whitelist test-api multiplyExact(II)I
    .registers 6
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 901
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 902
    .local v0, "r":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_b

    .line 905
    long-to-int v2, v0

    return v2

    .line 903
    :cond_b
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "integer overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist test-api multiplyExact(JI)J
    .registers 5
    .param p0, "x"    # J
    .param p2, "y"    # I

    .line 919
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist test-api multiplyExact(JJ)J
    .registers 14
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 933
    mul-long v0, p0, p2

    .line 934
    .local v0, "r":J
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 935
    .local v2, "ax":J
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 936
    .local v4, "ay":J
    or-long v6, v2, v4

    const/16 v8, 0x1f

    ushr-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_34

    .line 940
    cmp-long v6, p2, v8

    if-eqz v6, :cond_1f

    div-long v6, v0, p2

    cmp-long v6, v6, p0

    if-nez v6, :cond_2c

    :cond_1f
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, p0, v6

    if-nez v6, :cond_34

    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-eqz v6, :cond_2c

    goto :goto_34

    .line 942
    :cond_2c
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "long overflow"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 945
    :cond_34
    :goto_34
    return-wide v0
.end method

.method public static whitelist test-api multiplyFull(II)J
    .registers 6
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1075
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist test-api multiplyHigh(JJ)J
    .registers 24
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1088
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const-wide v3, 0xffffffffL

    const/16 v5, 0x20

    if-ltz v2, :cond_30

    cmp-long v0, p2, v0

    if-gez v0, :cond_12

    goto :goto_30

    .line 1103
    :cond_12
    ushr-long v0, p0, v5

    .line 1104
    .local v0, "x1":J
    ushr-long v6, p2, v5

    .line 1105
    .local v6, "y1":J
    and-long v8, p0, v3

    .line 1106
    .local v8, "x2":J
    and-long v2, p2, v3

    .line 1107
    .local v2, "y2":J
    mul-long v10, v0, v6

    .line 1108
    .local v10, "A":J
    mul-long v12, v8, v2

    .line 1109
    .local v12, "B":J
    add-long v14, v0, v8

    add-long v16, v6, v2

    mul-long v14, v14, v16

    .line 1110
    .local v14, "C":J
    sub-long v16, v14, v10

    sub-long v16, v16, v12

    .line 1111
    .local v16, "K":J
    ushr-long v18, v12, v5

    add-long v18, v18, v16

    ushr-long v4, v18, v5

    add-long/2addr v4, v10

    return-wide v4

    .line 1091
    .end local v0    # "x1":J
    .end local v2    # "y2":J
    .end local v6    # "y1":J
    .end local v8    # "x2":J
    .end local v10    # "A":J
    .end local v12    # "B":J
    .end local v14    # "C":J
    .end local v16    # "K":J
    :cond_30
    :goto_30
    shr-long v0, p0, v5

    .line 1092
    .restart local v0    # "x1":J
    and-long v6, p0, v3

    .line 1093
    .local v6, "x2":J
    shr-long v8, p2, v5

    .line 1094
    .local v8, "y1":J
    and-long v10, p2, v3

    .line 1095
    .local v10, "y2":J
    mul-long v12, v6, v10

    .line 1096
    .local v12, "z2":J
    mul-long v14, v0, v10

    ushr-long v16, v12, v5

    add-long v14, v14, v16

    .line 1097
    .local v14, "t":J
    and-long v2, v14, v3

    .line 1098
    .local v2, "z1":J
    shr-long v16, v14, v5

    .line 1099
    .local v16, "z0":J
    mul-long v18, v6, v8

    add-long v2, v2, v18

    .line 1100
    mul-long v18, v0, v8

    add-long v18, v18, v16

    shr-long v4, v2, v5

    add-long v18, v18, v4

    return-wide v18
.end method

.method public static whitelist test-api negateExact(I)I
    .registers 3
    .param p0, "a"    # I

    .line 1026
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_6

    .line 1030
    neg-int v0, p0

    return v0

    .line 1027
    :cond_6
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api negateExact(J)J
    .registers 4
    .param p0, "a"    # J

    .line 1043
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_8

    .line 1047
    neg-long v0, p0

    return-wide v0

    .line 1044
    :cond_8
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api nextAfter(DD)D
    .registers 11
    .param p0, "start"    # D
    .param p2, "direction"    # D

    .line 2055
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_41

    .line 2058
    :cond_d
    cmpl-double v0, p0, p2

    if-nez v0, :cond_12

    .line 2059
    return-wide p2

    .line 2063
    :cond_12
    const-wide/16 v0, 0x0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 2077
    .local v0, "transducer":J
    cmpl-double v2, p2, p0

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    if-lez v2, :cond_2a

    .line 2078
    cmp-long v2, v0, v5

    if-ltz v2, :cond_26

    goto :goto_28

    :cond_26
    const-wide/16 v3, -0x1

    :goto_28
    add-long/2addr v0, v3

    goto :goto_3c

    .line 2080
    :cond_2a
    nop

    .line 2081
    cmp-long v2, v0, v5

    if-lez v2, :cond_31

    .line 2082
    sub-long/2addr v0, v3

    goto :goto_3c

    .line 2084
    :cond_31
    cmp-long v2, v0, v5

    if-gez v2, :cond_37

    .line 2085
    add-long/2addr v0, v3

    goto :goto_3c

    .line 2095
    :cond_37
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 2098
    :goto_3c
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2

    .line 2057
    .end local v0    # "transducer":J
    :cond_41
    :goto_41
    add-double v0, p0, p2

    return-wide v0
.end method

.method public static whitelist test-api nextAfter(FD)F
    .registers 7
    .param p0, "start"    # F
    .param p1, "direction"    # D

    .line 2154
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_38

    .line 2157
    :cond_d
    float-to-double v0, p0

    cmpl-double v0, v0, p1

    if-nez v0, :cond_14

    .line 2158
    double-to-float v0, p1

    return v0

    .line 2162
    :cond_14
    const/4 v0, 0x0

    add-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 2176
    .local v0, "transducer":I
    float-to-double v1, p0

    cmpl-double v1, p1, v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-lez v1, :cond_27

    .line 2177
    if-ltz v0, :cond_24

    goto :goto_25

    :cond_24
    move v2, v3

    :goto_25
    add-int/2addr v0, v2

    goto :goto_33

    .line 2179
    :cond_27
    nop

    .line 2180
    if-lez v0, :cond_2c

    .line 2181
    add-int/2addr v0, v3

    goto :goto_33

    .line 2183
    :cond_2c
    if-gez v0, :cond_30

    .line 2184
    add-int/2addr v0, v2

    goto :goto_33

    .line 2194
    :cond_30
    const v0, -0x7fffffff

    .line 2197
    :goto_33
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    .line 2156
    .end local v0    # "transducer":I
    :cond_38
    :goto_38
    double-to-float v0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static whitelist test-api nextDown(D)D
    .registers 6
    .param p0, "d"    # D

    .line 2297
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2c

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_d

    goto :goto_2c

    .line 2300
    :cond_d
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_19

    .line 2301
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 2303
    :cond_19
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 2304
    cmpl-double v0, p0, v0

    if-lez v0, :cond_24

    const-wide/16 v0, -0x1

    goto :goto_26

    :cond_24
    const-wide/16 v0, 0x1

    :goto_26
    add-long/2addr v2, v0

    .line 2303
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 2298
    :cond_2c
    :goto_2c
    return-wide p0
.end method

.method public static whitelist test-api nextDown(F)F
    .registers 3
    .param p0, "f"    # F

    .line 2334
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_d

    goto :goto_27

    .line 2337
    :cond_d
    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_16

    .line 2338
    const v0, -0x7fffffff

    return v0

    .line 2340
    :cond_16
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 2341
    cmpl-float v0, p0, v0

    if-lez v0, :cond_20

    const/4 v0, -0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x1

    :goto_21
    add-int/2addr v1, v0

    .line 2340
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    .line 2335
    :cond_27
    :goto_27
    return p0
.end method

.method public static whitelist test-api nextUp(D)D
    .registers 6
    .param p0, "d"    # D

    .line 2227
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_23

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_d

    goto :goto_23

    .line 2230
    :cond_d
    const-wide/16 v0, 0x0

    add-double/2addr p0, v0

    .line 2231
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 2232
    cmpl-double v0, p0, v0

    if-ltz v0, :cond_1b

    const-wide/16 v0, 0x1

    goto :goto_1d

    :cond_1b
    const-wide/16 v0, -0x1

    :goto_1d
    add-long/2addr v2, v0

    .line 2231
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 2228
    :cond_23
    :goto_23
    return-wide p0
.end method

.method public static whitelist test-api nextUp(F)F
    .registers 3
    .param p0, "f"    # F

    .line 2262
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_20

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_d

    goto :goto_20

    .line 2265
    :cond_d
    const/4 v0, 0x0

    add-float/2addr p0, v0

    .line 2266
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 2267
    cmpl-float v0, p0, v0

    if-ltz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, -0x1

    :goto_1a
    add-int/2addr v1, v0

    .line 2266
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    .line 2263
    :cond_20
    :goto_20
    return p0
.end method

.method public static native whitelist test-api pow(DD)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method static greylist-max-o powerOfTwoD(I)D
    .registers 5
    .param p0, "n"    # I

    .line 2513
    nop

    .line 2514
    int-to-long v0, p0

    const-wide/16 v2, 0x3ff

    add-long/2addr v0, v2

    const/16 v2, 0x34

    shl-long/2addr v0, v2

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static greylist-max-o powerOfTwoF(I)F
    .registers 3
    .param p0, "n"    # I

    .line 2523
    nop

    .line 2524
    add-int/lit8 v0, p0, 0x7f

    shl-int/lit8 v0, v0, 0x17

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static whitelist test-api random()D
    .registers 2

    .line 781
    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist-max-o randomIntInternal()I
    .registers 1

    .line 801
    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public static greylist-max-o randomLongInternal()J
    .registers 2

    .line 809
    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static native whitelist test-api rint(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api round(F)I
    .registers 6
    .param p0, "a"    # F

    .line 676
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 677
    .local v0, "intBits":I
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x17

    .line 679
    .local v1, "biasedExp":I
    rsub-int v2, v1, 0x95

    .line 681
    .local v2, "shift":I
    and-int/lit8 v3, v2, -0x20

    if-nez v3, :cond_20

    .line 683
    const v3, 0x7fffff

    and-int/2addr v3, v0

    const/high16 v4, 0x800000

    or-int/2addr v3, v4

    .line 685
    .local v3, "r":I
    if-gez v0, :cond_19

    .line 686
    neg-int v3, v3

    .line 694
    :cond_19
    shr-int v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v4, v4, 0x1

    return v4

    .line 700
    .end local v3    # "r":I
    :cond_20
    float-to-int v3, p0

    return v3
.end method

.method public static whitelist test-api round(D)J
    .registers 14
    .param p0, "a"    # D

    .line 725
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 726
    .local v0, "longBits":J
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v2, v0

    const/16 v4, 0x34

    shr-long/2addr v2, v4

    .line 728
    .local v2, "biasedExp":J
    const-wide/16 v4, 0x432

    sub-long/2addr v4, v2

    .line 730
    .local v4, "shift":J
    const-wide/16 v6, -0x40

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2d

    .line 732
    const-wide v6, 0xfffffffffffffL

    and-long/2addr v6, v0

    const-wide/high16 v10, 0x10000000000000L

    or-long/2addr v6, v10

    .line 734
    .local v6, "r":J
    cmp-long v8, v0, v8

    if-gez v8, :cond_24

    .line 735
    neg-long v6, v6

    .line 743
    :cond_24
    long-to-int v8, v4

    shr-long v8, v6, v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    const/4 v10, 0x1

    shr-long/2addr v8, v10

    return-wide v8

    .line 749
    .end local v6    # "r":J
    :cond_2d
    double-to-long v6, p0

    return-wide v6
.end method

.method public static whitelist test-api scalb(DI)D
    .registers 12
    .param p0, "d"    # D
    .param p2, "scaleFactor"    # I

    .line 2418
    const/16 v0, 0x833

    .line 2420
    .local v0, "MAX_SCALE":I
    const/4 v1, 0x0

    .line 2421
    .local v1, "exp_adjust":I
    const/4 v2, 0x0

    .line 2422
    .local v2, "scale_increment":I
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    .line 2426
    .local v3, "exp_delta":D
    if-gez p2, :cond_13

    .line 2427
    const/16 v5, -0x833

    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2428
    const/16 v2, -0x200

    .line 2429
    sget-wide v3, Ljava/lang/Math;->twoToTheDoubleScaleDown:D

    goto :goto_1d

    .line 2432
    :cond_13
    const/16 v5, 0x833

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2433
    const/16 v2, 0x200

    .line 2434
    sget-wide v3, Ljava/lang/Math;->twoToTheDoubleScaleUp:D

    .line 2439
    :goto_1d
    shr-int/lit8 v5, p2, 0x8

    ushr-int/lit8 v5, v5, 0x17

    .line 2440
    .local v5, "t":I
    add-int v6, p2, v5

    and-int/lit16 v6, v6, 0x1ff

    sub-int/2addr v6, v5

    .line 2442
    .end local v1    # "exp_adjust":I
    .local v6, "exp_adjust":I
    invoke-static {v6}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v7

    mul-double/2addr p0, v7

    .line 2443
    sub-int/2addr p2, v6

    .line 2445
    :goto_2c
    if-eqz p2, :cond_31

    .line 2446
    mul-double/2addr p0, v3

    .line 2447
    sub-int/2addr p2, v2

    goto :goto_2c

    .line 2449
    :cond_31
    return-wide p0
.end method

.method public static whitelist test-api scalb(FI)F
    .registers 7
    .param p0, "f"    # F
    .param p1, "scaleFactor"    # I

    .line 2487
    const/16 v0, 0x116

    .line 2491
    .local v0, "MAX_SCALE":I
    const/16 v1, 0x116

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, -0x116

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2502
    float-to-double v1, p0

    invoke-static {p1}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v3

    mul-double/2addr v1, v3

    double-to-float v1, v1

    return v1
.end method

.method public static greylist-max-o setRandomSeedInternal(J)V
    .registers 3
    .param p0, "seed"    # J

    .line 793
    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    .line 794
    return-void
.end method

.method public static whitelist test-api signum(D)D
    .registers 4
    .param p0, "d"    # D

    .line 1689
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_14

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    :cond_d
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    goto :goto_15

    :cond_14
    :goto_14
    move-wide v0, p0

    :goto_15
    return-wide v0
.end method

.method public static whitelist test-api signum(F)F
    .registers 2
    .param p0, "f"    # F

    .line 1710
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_13

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_13

    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->copySign(FF)F

    move-result v0

    goto :goto_14

    :cond_13
    :goto_13
    move v0, p0

    :goto_14
    return v0
.end method

.method public static native whitelist test-api sin(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api sinh(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api sqrt(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api subtractExact(II)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 861
    sub-int v0, p0, p1

    .line 864
    .local v0, "r":I
    xor-int v1, p0, p1

    xor-int v2, p0, v0

    and-int/2addr v1, v2

    if-ltz v1, :cond_a

    .line 867
    return v0

    .line 865
    :cond_a
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist test-api subtractExact(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 881
    sub-long v0, p0, p2

    .line 884
    .local v0, "r":J
    xor-long v2, p0, p2

    xor-long v4, p0, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    .line 887
    return-wide v0

    .line 885
    :cond_e
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "long overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static native whitelist test-api tan(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist test-api tanh(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist test-api toDegrees(D)D
    .registers 4
    .param p0, "angrad"    # D

    .line 268
    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static whitelist test-api toIntExact(J)I
    .registers 4
    .param p0, "value"    # J

    .line 1060
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_8

    .line 1063
    long-to-int v0, p0

    return v0

    .line 1061
    :cond_8
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api toRadians(D)D
    .registers 4
    .param p0, "angdeg"    # D

    .line 252
    const-wide v0, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static whitelist test-api ulp(D)D
    .registers 6
    .param p0, "d"    # D

    .line 1593
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 1595
    .local v0, "exp":I
    sparse-switch v0, :sswitch_data_26

    .line 1603
    goto :goto_10

    .line 1597
    :sswitch_8
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    return-wide v1

    .line 1600
    :sswitch_d
    const-wide/16 v1, 0x1

    return-wide v1

    .line 1606
    :goto_10
    add-int/lit8 v0, v0, -0x34

    .line 1607
    const/16 v1, -0x3fe

    if-lt v0, v1, :cond_1b

    .line 1608
    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v1

    return-wide v1

    .line 1614
    :cond_1b
    const-wide/16 v1, 0x1

    add-int/lit16 v3, v0, 0x432

    shl-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    return-wide v1

    nop

    :sswitch_data_26
    .sparse-switch
        -0x3ff -> :sswitch_d
        0x400 -> :sswitch_8
    .end sparse-switch
.end method

.method public static whitelist test-api ulp(F)F
    .registers 4
    .param p0, "f"    # F

    .line 1644
    invoke-static {p0}, Ljava/lang/Math;->getExponent(F)I

    move-result v0

    .line 1646
    .local v0, "exp":I
    sparse-switch v0, :sswitch_data_24

    .line 1654
    goto :goto_f

    .line 1648
    :sswitch_8
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    return v1

    .line 1651
    :sswitch_d
    const/4 v1, 0x1

    return v1

    .line 1657
    :goto_f
    add-int/lit8 v0, v0, -0x17

    .line 1658
    const/16 v1, -0x7e

    if-lt v0, v1, :cond_1a

    .line 1659
    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoF(I)F

    move-result v1

    return v1

    .line 1665
    :cond_1a
    const/4 v1, 0x1

    add-int/lit16 v2, v0, 0x95

    shl-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    nop

    :sswitch_data_24
    .sparse-switch
        -0x7f -> :sswitch_d
        0x80 -> :sswitch_8
    .end sparse-switch
.end method
