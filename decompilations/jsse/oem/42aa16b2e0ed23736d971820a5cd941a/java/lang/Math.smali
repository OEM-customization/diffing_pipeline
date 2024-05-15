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

.field public static final whitelist core-platform-api test-api E:D = 2.718281828459045

.field public static final whitelist core-platform-api test-api PI:D = 3.141592653589793

.field private static greylist-max-o negativeZeroDoubleBits:J

.field private static greylist-max-o negativeZeroFloatBits:J

.field static greylist-max-o twoToTheDoubleScaleDown:D

.field static greylist-max-o twoToTheDoubleScaleUp:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 111
    nop

    .line 1303
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Ljava/lang/Math;->negativeZeroFloatBits:J

    .line 1304
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Ljava/lang/Math;->negativeZeroDoubleBits:J

    .line 2375
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v0

    sput-wide v0, Ljava/lang/Math;->twoToTheDoubleScaleUp:D

    .line 2376
    const/16 v0, -0x200

    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v0

    sput-wide v0, Ljava/lang/Math;->twoToTheDoubleScaleDown:D

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native whitelist core-platform-api test-api IEEEremainder(DD)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api abs(D)D
    .registers 6
    .param p0, "a"    # D

    .line 1271
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api abs(F)F
    .registers 3
    .param p0, "a"    # F

    .line 1247
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api abs(I)I
    .registers 2
    .param p0, "a"    # I

    .line 1206
    if-gez p0, :cond_4

    neg-int v0, p0

    goto :goto_5

    :cond_4
    move v0, p0

    :goto_5
    return v0
.end method

.method public static whitelist core-platform-api test-api abs(J)J
    .registers 4
    .param p0, "a"    # J

    .line 1223
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

.method public static native whitelist core-platform-api test-api acos(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api addExact(II)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 810
    add-int v0, p0, p1

    .line 812
    .local v0, "r":I
    xor-int v1, p0, v0

    xor-int v2, p1, v0

    and-int/2addr v1, v2

    if-ltz v1, :cond_a

    .line 815
    return v0

    .line 813
    :cond_a
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist core-platform-api test-api addExact(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 829
    add-long v0, p0, p2

    .line 831
    .local v0, "r":J
    xor-long v2, p0, v0

    xor-long v4, p2, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    .line 834
    return-wide v0

    .line 832
    :cond_e
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "long overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static native whitelist core-platform-api test-api asin(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist core-platform-api test-api atan(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist core-platform-api test-api atan2(DD)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist core-platform-api test-api cbrt(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist core-platform-api test-api ceil(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api copySign(DD)D
    .registers 10
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    .line 1793
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    and-long/2addr v0, v2

    .line 1795
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    const-wide v4, 0x7fffffffffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 1793
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api copySign(FF)F
    .registers 5
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    .line 1816
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    .line 1818
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 1816
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static native whitelist core-platform-api test-api cos(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist core-platform-api test-api cosh(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api decrementExact(I)I
    .registers 3
    .param p0, "a"    # I

    .line 965
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_7

    .line 969
    add-int/lit8 v0, p0, -0x1

    return v0

    .line 966
    :cond_7
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist core-platform-api test-api decrementExact(J)J
    .registers 4
    .param p0, "a"    # J

    .line 982
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_b

    .line 986
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    return-wide v0

    .line 983
    :cond_b
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native whitelist core-platform-api test-api exp(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist core-platform-api test-api expm1(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist core-platform-api test-api floor(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api floorDiv(II)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1075
    div-int v0, p0, p1

    .line 1077
    .local v0, "r":I
    xor-int v1, p0, p1

    if-gez v1, :cond_c

    mul-int v1, v0, p1

    if-eq v1, p0, :cond_c

    .line 1078
    add-int/lit8 v0, v0, -0x1

    .line 1080
    :cond_c
    return v0
.end method

.method public static whitelist core-platform-api test-api floorDiv(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1109
    div-long v0, p0, p2

    .line 1111
    .local v0, "r":J
    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_13

    mul-long v2, v0, p2

    cmp-long v2, v2, p0

    if-eqz v2, :cond_13

    .line 1112
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 1114
    :cond_13
    return-wide v0
.end method

.method public static whitelist core-platform-api test-api floorMod(II)I
    .registers 3
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 1162
    invoke-static {p0, p1}, Ljava/lang/Math;->floorDiv(II)I

    move-result v0

    mul-int/2addr v0, p1

    sub-int v0, p0, v0

    .line 1163
    .local v0, "r":I
    return v0
.end method

.method public static whitelist core-platform-api test-api floorMod(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 1189
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    mul-long/2addr v0, p2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api getExponent(D)I
    .registers 6
    .param p0, "d"    # D

    .line 1867
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

.method public static whitelist core-platform-api test-api getExponent(F)I
    .registers 3
    .param p0, "f"    # F

    .line 1843
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x17

    add-int/lit8 v0, v0, -0x7f

    return v0
.end method

.method public static native whitelist core-platform-api test-api hypot(DD)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api incrementExact(I)I
    .registers 3
    .param p0, "a"    # I

    .line 931
    const v0, 0x7fffffff

    if-eq p0, v0, :cond_8

    .line 935
    add-int/lit8 v0, p0, 0x1

    return v0

    .line 932
    :cond_8
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist core-platform-api test-api incrementExact(J)J
    .registers 4
    .param p0, "a"    # J

    .line 948
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-eqz v0, :cond_d

    .line 952
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    return-wide v0

    .line 949
    :cond_d
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native whitelist core-platform-api test-api log(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist core-platform-api test-api log10(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist core-platform-api test-api log1p(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api max(DD)D
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 1347
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_5

    .line 1348
    return-wide p0

    .line 1349
    :cond_5
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1a

    cmpl-double v0, p2, v0

    if-nez v0, :cond_1a

    .line 1351
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroDoubleBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 1353
    return-wide p2

    .line 1355
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

.method public static whitelist core-platform-api test-api max(FF)F
    .registers 6
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 1321
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_5

    .line 1322
    return p0

    .line 1323
    :cond_5
    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_1a

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1a

    .line 1325
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroFloatBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 1327
    return p1

    .line 1329
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

.method public static whitelist core-platform-api test-api max(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 1285
    if-lt p0, p1, :cond_4

    move v0, p0

    goto :goto_5

    :cond_4
    move v0, p1

    :goto_5
    return v0
.end method

.method public static whitelist core-platform-api test-api max(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 1299
    cmp-long v0, p0, p2

    if-ltz v0, :cond_6

    move-wide v0, p0

    goto :goto_7

    :cond_6
    move-wide v0, p2

    :goto_7
    return-wide v0
.end method

.method public static whitelist core-platform-api test-api min(DD)D
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 1427
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_5

    .line 1428
    return-wide p0

    .line 1429
    :cond_5
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_1a

    cmpl-double v0, p2, v0

    if-nez v0, :cond_1a

    .line 1431
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroDoubleBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 1433
    return-wide p2

    .line 1435
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

.method public static whitelist core-platform-api test-api min(FF)F
    .registers 6
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 1401
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_5

    .line 1402
    return p0

    .line 1403
    :cond_5
    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_1a

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1a

    .line 1405
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroFloatBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 1407
    return p1

    .line 1409
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

.method public static whitelist core-platform-api test-api min(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 1369
    if-gt p0, p1, :cond_4

    move v0, p0

    goto :goto_5

    :cond_4
    move v0, p1

    :goto_5
    return v0
.end method

.method public static whitelist core-platform-api test-api min(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .line 1383
    cmp-long v0, p0, p2

    if-gtz v0, :cond_6

    move-wide v0, p0

    goto :goto_7

    :cond_6
    move-wide v0, p2

    :goto_7
    return-wide v0
.end method

.method public static whitelist core-platform-api test-api multiplyExact(II)I
    .registers 6
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 888
    int-to-long v0, p0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    .line 889
    .local v0, "r":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-nez v2, :cond_b

    .line 892
    long-to-int v2, v0

    return v2

    .line 890
    :cond_b
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "integer overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static whitelist core-platform-api test-api multiplyExact(JJ)J
    .registers 14
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 906
    mul-long v0, p0, p2

    .line 907
    .local v0, "r":J
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 908
    .local v2, "ax":J
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 909
    .local v4, "ay":J
    or-long v6, v2, v4

    const/16 v8, 0x1f

    ushr-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_34

    .line 913
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

    .line 915
    :cond_2c
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "long overflow"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 918
    :cond_34
    :goto_34
    return-wide v0
.end method

.method public static whitelist core-platform-api test-api negateExact(I)I
    .registers 3
    .param p0, "a"    # I

    .line 999
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_6

    .line 1003
    neg-int v0, p0

    return v0

    .line 1000
    :cond_6
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist core-platform-api test-api negateExact(J)J
    .registers 4
    .param p0, "a"    # J

    .line 1016
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-eqz v0, :cond_8

    .line 1020
    neg-long v0, p0

    return-wide v0

    .line 1017
    :cond_8
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist core-platform-api test-api nextAfter(DD)D
    .registers 11
    .param p0, "start"    # D
    .param p2, "direction"    # D

    .line 1924
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_41

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_41

    .line 1927
    :cond_d
    cmpl-double v0, p0, p2

    if-nez v0, :cond_12

    .line 1928
    return-wide p2

    .line 1932
    :cond_12
    const-wide/16 v0, 0x0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 1946
    .local v0, "transducer":J
    cmpl-double v2, p2, p0

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    if-lez v2, :cond_2a

    .line 1947
    cmp-long v2, v0, v5

    if-ltz v2, :cond_26

    goto :goto_28

    :cond_26
    const-wide/16 v3, -0x1

    :goto_28
    add-long/2addr v0, v3

    goto :goto_3c

    .line 1949
    :cond_2a
    nop

    .line 1950
    cmp-long v2, v0, v5

    if-lez v2, :cond_31

    .line 1951
    sub-long/2addr v0, v3

    goto :goto_3c

    .line 1953
    :cond_31
    cmp-long v2, v0, v5

    if-gez v2, :cond_37

    .line 1954
    add-long/2addr v0, v3

    goto :goto_3c

    .line 1964
    :cond_37
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1967
    :goto_3c
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2

    .line 1926
    .end local v0    # "transducer":J
    :cond_41
    :goto_41
    add-double v0, p0, p2

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api nextAfter(FD)F
    .registers 7
    .param p0, "start"    # F
    .param p1, "direction"    # D

    .line 2023
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_38

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_38

    .line 2026
    :cond_d
    float-to-double v0, p0

    cmpl-double v0, v0, p1

    if-nez v0, :cond_14

    .line 2027
    double-to-float v0, p1

    return v0

    .line 2031
    :cond_14
    const/4 v0, 0x0

    add-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 2045
    .local v0, "transducer":I
    float-to-double v1, p0

    cmpl-double v1, p1, v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-lez v1, :cond_27

    .line 2046
    if-ltz v0, :cond_24

    goto :goto_25

    :cond_24
    move v2, v3

    :goto_25
    add-int/2addr v0, v2

    goto :goto_33

    .line 2048
    :cond_27
    nop

    .line 2049
    if-lez v0, :cond_2c

    .line 2050
    add-int/2addr v0, v3

    goto :goto_33

    .line 2052
    :cond_2c
    if-gez v0, :cond_30

    .line 2053
    add-int/2addr v0, v2

    goto :goto_33

    .line 2063
    :cond_30
    const v0, -0x7fffffff

    .line 2066
    :goto_33
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    .line 2025
    .end local v0    # "transducer":I
    :cond_38
    :goto_38
    double-to-float v0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method public static whitelist core-platform-api test-api nextDown(D)D
    .registers 6
    .param p0, "d"    # D

    .line 2166
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2c

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_d

    goto :goto_2c

    .line 2169
    :cond_d
    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_19

    .line 2170
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 2172
    :cond_19
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 2173
    cmpl-double v0, p0, v0

    if-lez v0, :cond_24

    const-wide/16 v0, -0x1

    goto :goto_26

    :cond_24
    const-wide/16 v0, 0x1

    :goto_26
    add-long/2addr v2, v0

    .line 2172
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 2167
    :cond_2c
    :goto_2c
    return-wide p0
.end method

.method public static whitelist core-platform-api test-api nextDown(F)F
    .registers 3
    .param p0, "f"    # F

    .line 2203
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_d

    goto :goto_27

    .line 2206
    :cond_d
    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    if-nez v1, :cond_16

    .line 2207
    const v0, -0x7fffffff

    return v0

    .line 2209
    :cond_16
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 2210
    cmpl-float v0, p0, v0

    if-lez v0, :cond_20

    const/4 v0, -0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x1

    :goto_21
    add-int/2addr v1, v0

    .line 2209
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    .line 2204
    :cond_27
    :goto_27
    return p0
.end method

.method public static whitelist core-platform-api test-api nextUp(D)D
    .registers 6
    .param p0, "d"    # D

    .line 2096
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_23

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_d

    goto :goto_23

    .line 2099
    :cond_d
    const-wide/16 v0, 0x0

    add-double/2addr p0, v0

    .line 2100
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 2101
    cmpl-double v0, p0, v0

    if-ltz v0, :cond_1b

    const-wide/16 v0, 0x1

    goto :goto_1d

    :cond_1b
    const-wide/16 v0, -0x1

    :goto_1d
    add-long/2addr v2, v0

    .line 2100
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 2097
    :cond_23
    :goto_23
    return-wide p0
.end method

.method public static whitelist core-platform-api test-api nextUp(F)F
    .registers 3
    .param p0, "f"    # F

    .line 2131
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_20

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_d

    goto :goto_20

    .line 2134
    :cond_d
    const/4 v0, 0x0

    add-float/2addr p0, v0

    .line 2135
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 2136
    cmpl-float v0, p0, v0

    if-ltz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, -0x1

    :goto_1a
    add-int/2addr v1, v0

    .line 2135
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    .line 2132
    :cond_20
    :goto_20
    return p0
.end method

.method public static native whitelist core-platform-api test-api pow(DD)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method static greylist-max-o powerOfTwoD(I)D
    .registers 5
    .param p0, "n"    # I

    .line 2382
    nop

    .line 2383
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

    .line 2392
    nop

    .line 2393
    add-int/lit8 v0, p0, 0x7f

    shl-int/lit8 v0, v0, 0x17

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static whitelist core-platform-api test-api random()D
    .registers 2

    .line 768
    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist-max-o randomIntInternal()I
    .registers 1

    .line 788
    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public static greylist-max-o core-platform-api randomLongInternal()J
    .registers 2

    .line 796
    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static native whitelist core-platform-api test-api rint(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api round(F)I
    .registers 6
    .param p0, "a"    # F

    .line 663
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 664
    .local v0, "intBits":I
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x17

    .line 666
    .local v1, "biasedExp":I
    rsub-int v2, v1, 0x95

    .line 668
    .local v2, "shift":I
    and-int/lit8 v3, v2, -0x20

    if-nez v3, :cond_20

    .line 670
    const v3, 0x7fffff

    and-int/2addr v3, v0

    const/high16 v4, 0x800000

    or-int/2addr v3, v4

    .line 672
    .local v3, "r":I
    if-gez v0, :cond_19

    .line 673
    neg-int v3, v3

    .line 681
    :cond_19
    shr-int v4, v3, v2

    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v4, v4, 0x1

    return v4

    .line 687
    .end local v3    # "r":I
    :cond_20
    float-to-int v3, p0

    return v3
.end method

.method public static whitelist core-platform-api test-api round(D)J
    .registers 14
    .param p0, "a"    # D

    .line 712
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 713
    .local v0, "longBits":J
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v2, v0

    const/16 v4, 0x34

    shr-long/2addr v2, v4

    .line 715
    .local v2, "biasedExp":J
    const-wide/16 v4, 0x432

    sub-long/2addr v4, v2

    .line 717
    .local v4, "shift":J
    const-wide/16 v6, -0x40

    and-long/2addr v6, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2d

    .line 719
    const-wide v6, 0xfffffffffffffL

    and-long/2addr v6, v0

    const-wide/high16 v10, 0x10000000000000L

    or-long/2addr v6, v10

    .line 721
    .local v6, "r":J
    cmp-long v8, v0, v8

    if-gez v8, :cond_24

    .line 722
    neg-long v6, v6

    .line 730
    :cond_24
    long-to-int v8, v4

    shr-long v8, v6, v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    const/4 v10, 0x1

    shr-long/2addr v8, v10

    return-wide v8

    .line 736
    .end local v6    # "r":J
    :cond_2d
    double-to-long v6, p0

    return-wide v6
.end method

.method public static whitelist core-platform-api test-api scalb(DI)D
    .registers 12
    .param p0, "d"    # D
    .param p2, "scaleFactor"    # I

    .line 2287
    const/16 v0, 0x833

    .line 2289
    .local v0, "MAX_SCALE":I
    const/4 v1, 0x0

    .line 2290
    .local v1, "exp_adjust":I
    const/4 v2, 0x0

    .line 2291
    .local v2, "scale_increment":I
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    .line 2295
    .local v3, "exp_delta":D
    if-gez p2, :cond_13

    .line 2296
    const/16 v5, -0x833

    invoke-static {p2, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2297
    const/16 v2, -0x200

    .line 2298
    sget-wide v3, Ljava/lang/Math;->twoToTheDoubleScaleDown:D

    goto :goto_1d

    .line 2301
    :cond_13
    const/16 v5, 0x833

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2302
    const/16 v2, 0x200

    .line 2303
    sget-wide v3, Ljava/lang/Math;->twoToTheDoubleScaleUp:D

    .line 2308
    :goto_1d
    shr-int/lit8 v5, p2, 0x8

    ushr-int/lit8 v5, v5, 0x17

    .line 2309
    .local v5, "t":I
    add-int v6, p2, v5

    and-int/lit16 v6, v6, 0x1ff

    sub-int/2addr v6, v5

    .line 2311
    .end local v1    # "exp_adjust":I
    .local v6, "exp_adjust":I
    invoke-static {v6}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v7

    mul-double/2addr p0, v7

    .line 2312
    sub-int/2addr p2, v6

    .line 2314
    :goto_2c
    if-eqz p2, :cond_31

    .line 2315
    mul-double/2addr p0, v3

    .line 2316
    sub-int/2addr p2, v2

    goto :goto_2c

    .line 2318
    :cond_31
    return-wide p0
.end method

.method public static whitelist core-platform-api test-api scalb(FI)F
    .registers 7
    .param p0, "f"    # F
    .param p1, "scaleFactor"    # I

    .line 2356
    const/16 v0, 0x116

    .line 2360
    .local v0, "MAX_SCALE":I
    const/16 v1, 0x116

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, -0x116

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2371
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

    .line 780
    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    .line 781
    return-void
.end method

.method public static whitelist core-platform-api test-api signum(D)D
    .registers 4
    .param p0, "d"    # D

    .line 1558
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

.method public static whitelist core-platform-api test-api signum(F)F
    .registers 2
    .param p0, "f"    # F

    .line 1579
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

.method public static native whitelist core-platform-api test-api sin(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist core-platform-api test-api sinh(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist core-platform-api test-api sqrt(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api subtractExact(II)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    .line 848
    sub-int v0, p0, p1

    .line 851
    .local v0, "r":I
    xor-int v1, p0, p1

    xor-int v2, p0, v0

    and-int/2addr v1, v2

    if-ltz v1, :cond_a

    .line 854
    return v0

    .line 852
    :cond_a
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist core-platform-api test-api subtractExact(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .line 868
    sub-long v0, p0, p2

    .line 871
    .local v0, "r":J
    xor-long v2, p0, p2

    xor-long v4, p0, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_e

    .line 874
    return-wide v0

    .line 872
    :cond_e
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "long overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static native whitelist core-platform-api test-api tan(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static native whitelist core-platform-api test-api tanh(D)D
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method public static whitelist core-platform-api test-api toDegrees(D)D
    .registers 6
    .param p0, "angrad"    # D

    .line 255
    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api toIntExact(J)I
    .registers 4
    .param p0, "value"    # J

    .line 1033
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_8

    .line 1036
    long-to-int v0, p0

    return v0

    .line 1034
    :cond_8
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist core-platform-api test-api toRadians(D)D
    .registers 6
    .param p0, "angdeg"    # D

    .line 239
    const-wide v0, 0x4066800000000000L    # 180.0

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static whitelist core-platform-api test-api ulp(D)D
    .registers 6
    .param p0, "d"    # D

    .line 1462
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 1464
    .local v0, "exp":I
    const/16 v1, -0x3ff

    if-eq v0, v1, :cond_27

    const/16 v1, 0x400

    if-eq v0, v1, :cond_22

    .line 1472
    nop

    .line 1475
    add-int/lit8 v0, v0, -0x34

    .line 1476
    const/16 v1, -0x3fe

    if-lt v0, v1, :cond_18

    .line 1477
    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v1

    return-wide v1

    .line 1483
    :cond_18
    const-wide/16 v1, 0x1

    add-int/lit16 v3, v0, 0x432

    shl-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    return-wide v1

    .line 1466
    :cond_22
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    return-wide v1

    .line 1469
    :cond_27
    const-wide/16 v1, 0x1

    return-wide v1
.end method

.method public static whitelist core-platform-api test-api ulp(F)F
    .registers 4
    .param p0, "f"    # F

    .line 1513
    invoke-static {p0}, Ljava/lang/Math;->getExponent(F)I

    move-result v0

    .line 1515
    .local v0, "exp":I
    const/16 v1, -0x7f

    if-eq v0, v1, :cond_26

    const/16 v1, 0x80

    if-eq v0, v1, :cond_21

    .line 1523
    nop

    .line 1526
    add-int/lit8 v0, v0, -0x17

    .line 1527
    const/16 v1, -0x7e

    if-lt v0, v1, :cond_18

    .line 1528
    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoF(I)F

    move-result v1

    return v1

    .line 1534
    :cond_18
    const/4 v1, 0x1

    add-int/lit16 v2, v0, 0x95

    shl-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    .line 1517
    :cond_21
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    return v1

    .line 1520
    :cond_26
    const/4 v1, 0x1

    return v1
.end method
