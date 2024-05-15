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
.field static final synthetic -assertionsDisabled:Z

.field public static final E:D = 2.718281828459045

.field public static final PI:D = 3.141592653589793

.field private static negativeZeroDoubleBits:J

.field private static negativeZeroFloatBits:J

.field static twoToTheDoubleScaleDown:D

.field static twoToTheDoubleScaleUp:D


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const-class v0, Ljava/lang/Math;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Ljava/lang/Math;->-assertionsDisabled:Z

    .line 1281
    const/high16 v0, -0x80000000

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Ljava/lang/Math;->negativeZeroFloatBits:J

    .line 1282
    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sput-wide v0, Ljava/lang/Math;->negativeZeroDoubleBits:J

    .line 2353
    const/16 v0, 0x200

    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v0

    sput-wide v0, Ljava/lang/Math;->twoToTheDoubleScaleUp:D

    .line 2354
    const/16 v0, -0x200

    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v0

    sput-wide v0, Ljava/lang/Math;->twoToTheDoubleScaleDown:D

    .line 107
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native IEEEremainder(DD)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static abs(D)D
    .registers 6
    .param p0, "a"    # D

    .prologue
    .line 1249
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static abs(F)F
    .registers 3
    .param p0, "a"    # F

    .prologue
    .line 1227
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static abs(I)I
    .registers 1
    .param p0, "a"    # I

    .prologue
    .line 1188
    if-gez p0, :cond_3

    neg-int p0, p0

    .end local p0    # "a":I
    :cond_3
    return p0
.end method

.method public static abs(J)J
    .registers 4
    .param p0, "a"    # J

    .prologue
    .line 1205
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_7

    neg-long p0, p0

    .end local p0    # "a":J
    :cond_7
    return-wide p0
.end method

.method public static native acos(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static addExact(II)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 792
    add-int v0, p0, p1

    .line 794
    .local v0, "r":I
    xor-int v1, p0, v0

    xor-int v2, p1, v0

    and-int/2addr v1, v2

    if-gez v1, :cond_12

    .line 795
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string/jumbo v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 797
    :cond_12
    return v0
.end method

.method public static addExact(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 811
    add-long v0, p0, p2

    .line 813
    .local v0, "r":J
    xor-long v2, p0, v0

    xor-long v4, p2, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_16

    .line 814
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string/jumbo v3, "long overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 816
    :cond_16
    return-wide v0
.end method

.method public static native asin(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native atan(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native atan2(DD)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native cbrt(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native ceil(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static copySign(DD)D
    .registers 10
    .param p0, "magnitude"    # D
    .param p2, "sign"    # D

    .prologue
    .line 1771
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 1772
    const-wide/high16 v2, -0x8000000000000000L

    .line 1771
    and-long/2addr v0, v2

    .line 1773
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 1774
    const-wide v4, 0x7fffffffffffffffL

    .line 1773
    and-long/2addr v2, v4

    .line 1771
    or-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static copySign(FF)F
    .registers 5
    .param p0, "magnitude"    # F
    .param p1, "sign"    # F

    .prologue
    .line 1794
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 1795
    const/high16 v1, -0x80000000

    .line 1794
    and-int/2addr v0, v1

    .line 1796
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 1797
    const v2, 0x7fffffff

    .line 1796
    and-int/2addr v1, v2

    .line 1794
    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static native cos(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native cosh(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static decrementExact(I)I
    .registers 3
    .param p0, "a"    # I

    .prologue
    .line 947
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_d

    .line 948
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 951
    :cond_d
    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method public static decrementExact(J)J
    .registers 4
    .param p0, "a"    # J

    .prologue
    .line 964
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_f

    .line 965
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 968
    :cond_f
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static native exp(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native expm1(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native floor(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static floorDiv(II)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 1057
    div-int v0, p0, p1

    .line 1059
    .local v0, "r":I
    xor-int v1, p0, p1

    if-gez v1, :cond_c

    mul-int v1, v0, p1

    if-eq v1, p0, :cond_c

    .line 1060
    add-int/lit8 v0, v0, -0x1

    .line 1062
    :cond_c
    return v0
.end method

.method public static floorDiv(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 1091
    div-long v0, p0, p2

    .line 1093
    .local v0, "r":J
    xor-long v2, p0, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_13

    mul-long v2, v0, p2

    cmp-long v2, v2, p0

    if-eqz v2, :cond_13

    .line 1094
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 1096
    :cond_13
    return-wide v0
.end method

.method public static floorMod(II)I
    .registers 4
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 1144
    invoke-static {p0, p1}, Ljava/lang/Math;->floorDiv(II)I

    move-result v1

    mul-int/2addr v1, p1

    sub-int v0, p0, v1

    .line 1145
    .local v0, "r":I
    return v0
.end method

.method public static floorMod(JJ)J
    .registers 6
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 1171
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->floorDiv(JJ)J

    move-result-wide v0

    mul-long/2addr v0, p2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method public static getExponent(D)I
    .registers 6
    .param p0, "d"    # D

    .prologue
    .line 1845
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v0, v2

    .line 1846
    const/16 v2, 0x34

    .line 1845
    shr-long/2addr v0, v2

    .line 1846
    const-wide/16 v2, 0x3ff

    .line 1845
    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getExponent(F)I
    .registers 3
    .param p0, "f"    # F

    .prologue
    .line 1821
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x17

    add-int/lit8 v0, v0, -0x7f

    return v0
.end method

.method public static native hypot(DD)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static incrementExact(I)I
    .registers 3
    .param p0, "a"    # I

    .prologue
    .line 913
    const v0, 0x7fffffff

    if-ne p0, v0, :cond_e

    .line 914
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 917
    :cond_e
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static incrementExact(J)J
    .registers 4
    .param p0, "a"    # J

    .prologue
    .line 930
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_12

    .line 931
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 934
    :cond_12
    const-wide/16 v0, 0x1

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static native log(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native log10(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native log1p(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static max(DD)D
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 1325
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_7

    .line 1326
    return-wide p0

    .line 1327
    :cond_7
    cmpl-double v0, p0, v2

    if-nez v0, :cond_1a

    .line 1328
    cmpl-double v0, p2, v2

    if-nez v0, :cond_1a

    .line 1329
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroDoubleBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 1331
    return-wide p2

    .line 1333
    :cond_1a
    cmpl-double v0, p0, p2

    if-ltz v0, :cond_1f

    .end local p0    # "a":D
    :goto_1e
    return-wide p0

    .restart local p0    # "a":D
    :cond_1f
    move-wide p0, p2

    goto :goto_1e
.end method

.method public static max(FF)F
    .registers 6
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    const/4 v1, 0x0

    .line 1299
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_6

    .line 1300
    return p0

    .line 1301
    :cond_6
    cmpl-float v0, p0, v1

    if-nez v0, :cond_1a

    .line 1302
    cmpl-float v0, p1, v1

    if-nez v0, :cond_1a

    .line 1303
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroFloatBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 1305
    return p1

    .line 1307
    :cond_1a
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_1f

    .end local p0    # "a":F
    :goto_1e
    return p0

    .restart local p0    # "a":F
    :cond_1f
    move p0, p1

    goto :goto_1e
.end method

.method public static max(II)I
    .registers 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 1263
    if-lt p0, p1, :cond_3

    .end local p0    # "a":I
    :goto_2
    return p0

    .restart local p0    # "a":I
    :cond_3
    move p0, p1

    goto :goto_2
.end method

.method public static max(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 1277
    cmp-long v0, p0, p2

    if-ltz v0, :cond_5

    .end local p0    # "a":J
    :goto_4
    return-wide p0

    .restart local p0    # "a":J
    :cond_5
    move-wide p0, p2

    goto :goto_4
.end method

.method public static min(DD)D
    .registers 8
    .param p0, "a"    # D
    .param p2, "b"    # D

    .prologue
    const-wide/16 v2, 0x0

    .line 1405
    cmpl-double v0, p0, p0

    if-eqz v0, :cond_7

    .line 1406
    return-wide p0

    .line 1407
    :cond_7
    cmpl-double v0, p0, v2

    if-nez v0, :cond_1a

    .line 1408
    cmpl-double v0, p2, v2

    if-nez v0, :cond_1a

    .line 1409
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroDoubleBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 1411
    return-wide p2

    .line 1413
    :cond_1a
    cmpg-double v0, p0, p2

    if-gtz v0, :cond_1f

    .end local p0    # "a":D
    :goto_1e
    return-wide p0

    .restart local p0    # "a":D
    :cond_1f
    move-wide p0, p2

    goto :goto_1e
.end method

.method public static min(FF)F
    .registers 6
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    const/4 v1, 0x0

    .line 1379
    cmpl-float v0, p0, p0

    if-eqz v0, :cond_6

    .line 1380
    return p0

    .line 1381
    :cond_6
    cmpl-float v0, p0, v1

    if-nez v0, :cond_1a

    .line 1382
    cmpl-float v0, p1, v1

    if-nez v0, :cond_1a

    .line 1383
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    sget-wide v2, Ljava/lang/Math;->negativeZeroFloatBits:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1a

    .line 1385
    return p1

    .line 1387
    :cond_1a
    cmpg-float v0, p0, p1

    if-gtz v0, :cond_1f

    .end local p0    # "a":F
    :goto_1e
    return p0

    .restart local p0    # "a":F
    :cond_1f
    move p0, p1

    goto :goto_1e
.end method

.method public static min(II)I
    .registers 2
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 1347
    if-gt p0, p1, :cond_3

    .end local p0    # "a":I
    :goto_2
    return p0

    .restart local p0    # "a":I
    :cond_3
    move p0, p1

    goto :goto_2
.end method

.method public static min(JJ)J
    .registers 6
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 1361
    cmp-long v0, p0, p2

    if-gtz v0, :cond_5

    .end local p0    # "a":J
    :goto_4
    return-wide p0

    .restart local p0    # "a":J
    :cond_5
    move-wide p0, p2

    goto :goto_4
.end method

.method public static multiplyExact(II)I
    .registers 8
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 870
    int-to-long v2, p0

    int-to-long v4, p1

    mul-long v0, v2, v4

    .line 871
    .local v0, "r":J
    long-to-int v2, v0

    int-to-long v2, v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_13

    .line 872
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string/jumbo v3, "integer overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 874
    :cond_13
    long-to-int v2, v0

    return v2
.end method

.method public static multiplyExact(JJ)J
    .registers 16
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    const-wide/16 v10, 0x0

    .line 888
    mul-long v4, p0, p2

    .line 889
    .local v4, "r":J
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 890
    .local v0, "ax":J
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 891
    .local v2, "ay":J
    or-long v6, v0, v2

    const/16 v8, 0x1f

    ushr-long/2addr v6, v8

    cmp-long v6, v6, v10

    if-eqz v6, :cond_34

    .line 895
    cmp-long v6, p2, v10

    if-eqz v6, :cond_28

    div-long v6, v4, p2

    cmp-long v6, v6, p0

    if-eqz v6, :cond_28

    .line 897
    :cond_1f
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string/jumbo v7, "long overflow"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 896
    :cond_28
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, p0, v6

    if-nez v6, :cond_34

    const-wide/16 v6, -0x1

    cmp-long v6, p2, v6

    if-eqz v6, :cond_1f

    .line 900
    :cond_34
    return-wide v4
.end method

.method public static negateExact(I)I
    .registers 3
    .param p0, "a"    # I

    .prologue
    .line 981
    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_d

    .line 982
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 985
    :cond_d
    neg-int v0, p0

    return v0
.end method

.method public static negateExact(J)J
    .registers 4
    .param p0, "a"    # J

    .prologue
    .line 998
    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p0, v0

    if-nez v0, :cond_f

    .line 999
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "long overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1002
    :cond_f
    neg-long v0, p0

    return-wide v0
.end method

.method public static nextAfter(DD)D
    .registers 12
    .param p0, "start"    # D
    .param p2, "direction"    # D

    .prologue
    const-wide/16 v2, 0x1

    const-wide/16 v6, 0x0

    .line 1902
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_10

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1904
    :cond_10
    add-double v2, p0, p2

    return-wide v2

    .line 1905
    :cond_13
    cmpl-double v4, p0, p2

    if-nez v4, :cond_18

    .line 1906
    return-wide p2

    .line 1910
    :cond_18
    const-wide/16 v4, 0x0

    add-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 1924
    .local v0, "transducer":J
    cmpl-double v4, p2, p0

    if-lez v4, :cond_30

    .line 1925
    cmp-long v4, v0, v6

    if-ltz v4, :cond_2d

    :goto_27
    add-long/2addr v0, v2

    .line 1945
    :goto_28
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2

    .line 1925
    :cond_2d
    const-wide/16 v2, -0x1

    goto :goto_27

    .line 1927
    :cond_30
    sget-boolean v4, Ljava/lang/Math;->-assertionsDisabled:Z

    if-nez v4, :cond_43

    cmpg-double v4, p2, p0

    if-gez v4, :cond_41

    const/4 v4, 0x1

    :goto_39
    if-nez v4, :cond_43

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    :cond_41
    const/4 v4, 0x0

    goto :goto_39

    .line 1928
    :cond_43
    cmp-long v4, v0, v6

    if-lez v4, :cond_49

    .line 1929
    sub-long/2addr v0, v2

    goto :goto_28

    .line 1931
    :cond_49
    cmp-long v4, v0, v6

    if-gez v4, :cond_4f

    .line 1932
    add-long/2addr v0, v2

    goto :goto_28

    .line 1942
    :cond_4f
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_28
.end method

.method public static nextAfter(FD)F
    .registers 10
    .param p0, "start"    # F
    .param p1, "direction"    # D

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2001
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2003
    :cond_e
    double-to-float v1, p1

    add-float/2addr v1, p0

    return v1

    .line 2004
    :cond_11
    float-to-double v4, p0

    cmpl-double v3, v4, p1

    if-nez v3, :cond_18

    .line 2005
    double-to-float v1, p1

    return v1

    .line 2009
    :cond_18
    const/4 v3, 0x0

    add-float/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 2023
    .local v0, "transducer":I
    float-to-double v4, p0

    cmpl-double v3, p1, v4

    if-lez v3, :cond_2d

    .line 2024
    if-ltz v0, :cond_2b

    :goto_25
    add-int/2addr v0, v1

    .line 2044
    :goto_26
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    .line 2024
    :cond_2b
    const/4 v1, -0x1

    goto :goto_25

    .line 2026
    :cond_2d
    sget-boolean v3, Ljava/lang/Math;->-assertionsDisabled:Z

    if-nez v3, :cond_40

    float-to-double v4, p0

    cmpg-double v3, p1, v4

    if-gez v3, :cond_3e

    :goto_36
    if-nez v1, :cond_40

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_3e
    move v1, v2

    goto :goto_36

    .line 2027
    :cond_40
    if-lez v0, :cond_45

    .line 2028
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 2030
    :cond_45
    if-gez v0, :cond_4a

    .line 2031
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 2041
    :cond_4a
    const v0, -0x7fffffff

    goto :goto_26
.end method

.method public static nextDown(D)D
    .registers 8
    .param p0, "d"    # D

    .prologue
    const-wide/16 v4, 0x0

    .line 2144
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_e

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_f

    .line 2145
    :cond_e
    return-wide p0

    .line 2147
    :cond_f
    cmpl-double v0, p0, v4

    if-nez v0, :cond_19

    .line 2148
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 2150
    :cond_19
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 2151
    cmpl-double v0, p0, v4

    if-lez v0, :cond_29

    const-wide/16 v0, -0x1

    .line 2150
    :goto_23
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 2151
    :cond_29
    const-wide/16 v0, 0x1

    goto :goto_23
.end method

.method public static nextDown(F)F
    .registers 4
    .param p0, "f"    # F

    .prologue
    const/4 v2, 0x0

    .line 2181
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_e

    .line 2182
    :cond_d
    return p0

    .line 2184
    :cond_e
    cmpl-float v0, p0, v2

    if-nez v0, :cond_16

    .line 2185
    const v0, -0x7fffffff

    return v0

    .line 2187
    :cond_16
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 2188
    cmpl-float v0, p0, v2

    if-lez v0, :cond_25

    const/4 v0, -0x1

    .line 2187
    :goto_1f
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    .line 2188
    :cond_25
    const/4 v0, 0x1

    goto :goto_1f
.end method

.method public static nextUp(D)D
    .registers 8
    .param p0, "d"    # D

    .prologue
    const-wide/16 v4, 0x0

    .line 2074
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_e

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_f

    .line 2075
    :cond_e
    return-wide p0

    .line 2077
    :cond_f
    add-double/2addr p0, v4

    .line 2078
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 2079
    cmpl-double v0, p0, v4

    if-ltz v0, :cond_20

    const-wide/16 v0, 0x1

    .line 2078
    :goto_1a
    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0

    .line 2079
    :cond_20
    const-wide/16 v0, -0x1

    goto :goto_1a
.end method

.method public static nextUp(F)F
    .registers 4
    .param p0, "f"    # F

    .prologue
    const/4 v2, 0x0

    .line 2109
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_d

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    cmpl-float v0, p0, v0

    if-nez v0, :cond_e

    .line 2110
    :cond_d
    return p0

    .line 2112
    :cond_e
    add-float/2addr p0, v2

    .line 2113
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 2114
    cmpl-float v0, p0, v2

    if-ltz v0, :cond_1e

    const/4 v0, 0x1

    .line 2113
    :goto_18
    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0

    .line 2114
    :cond_1e
    const/4 v0, -0x1

    goto :goto_18
.end method

.method public static native pow(DD)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method static powerOfTwoD(I)D
    .registers 5
    .param p0, "n"    # I

    .prologue
    .line 2360
    sget-boolean v0, Ljava/lang/Math;->-assertionsDisabled:Z

    if-nez v0, :cond_12

    const/16 v0, -0x3fe

    if-lt p0, v0, :cond_c

    const/16 v0, 0x3ff

    if-le p0, v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2361
    :cond_12
    int-to-long v0, p0

    const-wide/16 v2, 0x3ff

    add-long/2addr v0, v2

    .line 2362
    const/16 v2, 0x34

    .line 2361
    shl-long/2addr v0, v2

    .line 2363
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 2361
    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method static powerOfTwoF(I)F
    .registers 3
    .param p0, "n"    # I

    .prologue
    .line 2370
    sget-boolean v0, Ljava/lang/Math;->-assertionsDisabled:Z

    if-nez v0, :cond_12

    const/16 v0, -0x7e

    if-lt p0, v0, :cond_c

    const/16 v0, 0x7f

    if-le p0, v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2371
    :cond_12
    add-int/lit8 v0, p0, 0x7f

    shl-int/lit8 v0, v0, 0x17

    .line 2373
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 2371
    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public static random()D
    .registers 2

    .prologue
    .line 754
    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public static randomIntInternal()I
    .registers 1

    .prologue
    .line 771
    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public static randomLongInternal()J
    .registers 2

    .prologue
    .line 778
    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public static native rint(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static round(F)I
    .registers 7
    .param p0, "a"    # F

    .prologue
    .line 649
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    .line 650
    .local v1, "intBits":I
    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int/2addr v4, v1

    shr-int/lit8 v0, v4, 0x17

    .line 652
    .local v0, "biasedExp":I
    rsub-int v3, v0, 0x95

    .line 654
    .local v3, "shift":I
    and-int/lit8 v4, v3, -0x20

    if-nez v4, :cond_21

    .line 656
    const v4, 0x7fffff

    and-int/2addr v4, v1

    .line 657
    const/high16 v5, 0x800000

    .line 656
    or-int v2, v4, v5

    .line 658
    .local v2, "r":I
    if-gez v1, :cond_1a

    .line 659
    neg-int v2, v2

    .line 667
    :cond_1a
    shr-int v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v4, v4, 0x1

    return v4

    .line 673
    .end local v2    # "r":I
    :cond_21
    float-to-int v4, p0

    return v4
.end method

.method public static round(D)J
    .registers 16
    .param p0, "a"    # D

    .prologue
    const-wide/16 v12, 0x0

    .line 698
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v2

    .line 699
    .local v2, "longBits":J
    const-wide/high16 v8, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v8, v2

    .line 700
    const/16 v10, 0x34

    .line 699
    shr-long v0, v8, v10

    .line 701
    .local v0, "biasedExp":J
    const-wide/16 v8, 0x432

    sub-long v6, v8, v0

    .line 703
    .local v6, "shift":J
    const-wide/16 v8, -0x40

    and-long/2addr v8, v6

    cmp-long v8, v8, v12

    if-nez v8, :cond_30

    .line 705
    const-wide v8, 0xfffffffffffffL

    and-long/2addr v8, v2

    .line 706
    const-wide/high16 v10, 0x10000000000000L

    .line 705
    or-long v4, v8, v10

    .line 707
    .local v4, "r":J
    cmp-long v8, v2, v12

    if-gez v8, :cond_27

    .line 708
    neg-long v4, v4

    .line 716
    :cond_27
    long-to-int v8, v6

    shr-long v8, v4, v8

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    const/4 v10, 0x1

    shr-long/2addr v8, v10

    return-wide v8

    .line 722
    .end local v4    # "r":J
    :cond_30
    double-to-long v8, p0

    return-wide v8
.end method

.method public static scalb(DI)D
    .registers 11
    .param p0, "d"    # D
    .param p2, "scaleFactor"    # I

    .prologue
    .line 2265
    const/16 v0, 0x833

    .line 2267
    .local v0, "MAX_SCALE":I
    const/4 v1, 0x0

    .line 2268
    .local v1, "exp_adjust":I
    const/4 v4, 0x0

    .line 2269
    .local v4, "scale_increment":I
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 2273
    .local v2, "exp_delta":D
    if-gez p2, :cond_27

    .line 2274
    const/16 v6, -0x833

    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2275
    const/16 v4, -0x200

    .line 2276
    sget-wide v2, Ljava/lang/Math;->twoToTheDoubleScaleDown:D

    .line 2286
    :goto_12
    shr-int/lit8 v6, p2, 0x8

    ushr-int/lit8 v5, v6, 0x17

    .line 2287
    .local v5, "t":I
    add-int v6, p2, v5

    and-int/lit16 v6, v6, 0x1ff

    sub-int v1, v6, v5

    .line 2289
    invoke-static {v1}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v6

    mul-double/2addr p0, v6

    .line 2290
    sub-int/2addr p2, v1

    .line 2292
    :goto_22
    if-eqz p2, :cond_32

    .line 2293
    mul-double/2addr p0, v2

    .line 2294
    sub-int/2addr p2, v4

    goto :goto_22

    .line 2279
    .end local v5    # "t":I
    :cond_27
    const/16 v6, 0x833

    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2280
    const/16 v4, 0x200

    .line 2281
    sget-wide v2, Ljava/lang/Math;->twoToTheDoubleScaleUp:D

    goto :goto_12

    .line 2296
    .restart local v5    # "t":I
    :cond_32
    return-wide p0
.end method

.method public static scalb(FI)F
    .registers 8
    .param p0, "f"    # F
    .param p1, "scaleFactor"    # I

    .prologue
    .line 2334
    const/16 v0, 0x116

    .line 2338
    .local v0, "MAX_SCALE":I
    const/16 v1, 0x116

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, -0x116

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2349
    float-to-double v2, p0

    invoke-static {p1}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float v1, v2

    return v1
.end method

.method public static setRandomSeedInternal(J)V
    .registers 4
    .param p0, "seed"    # J

    .prologue
    .line 764
    sget-object v0, Ljava/lang/Math$RandomNumberGeneratorHolder;->randomNumberGenerator:Ljava/util/Random;

    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    .line 765
    return-void
.end method

.method public static signum(D)D
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 1536
    const-wide/16 v0, 0x0

    cmpl-double v0, p0, v0

    if-eqz v0, :cond_c

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_d

    .end local p0    # "d":D
    :cond_c
    :goto_c
    return-wide p0

    .restart local p0    # "d":D
    :cond_d
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide p0

    goto :goto_c
.end method

.method public static signum(F)F
    .registers 2
    .param p0, "f"    # F

    .prologue
    .line 1557
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_b

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_c

    .end local p0    # "f":F
    :cond_b
    :goto_b
    return p0

    .restart local p0    # "f":F
    :cond_c
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->copySign(FF)F

    move-result p0

    goto :goto_b
.end method

.method public static native sin(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native sinh(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native sqrt(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static subtractExact(II)I
    .registers 5
    .param p0, "x"    # I
    .param p1, "y"    # I

    .prologue
    .line 830
    sub-int v0, p0, p1

    .line 833
    .local v0, "r":I
    xor-int v1, p0, p1

    xor-int v2, p0, v0

    and-int/2addr v1, v2

    if-gez v1, :cond_12

    .line 834
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string/jumbo v2, "integer overflow"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 836
    :cond_12
    return v0
.end method

.method public static subtractExact(JJ)J
    .registers 10
    .param p0, "x"    # J
    .param p2, "y"    # J

    .prologue
    .line 850
    sub-long v0, p0, p2

    .line 853
    .local v0, "r":J
    xor-long v2, p0, p2

    xor-long v4, p0, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_16

    .line 854
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string/jumbo v3, "long overflow"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 856
    :cond_16
    return-wide v0
.end method

.method public static native tan(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static native tanh(D)D
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method public static toDegrees(D)D
    .registers 6
    .param p0, "angrad"    # D

    .prologue
    .line 248
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
    .line 1015
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, v0, p0

    if-eqz v0, :cond_f

    .line 1016
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string/jumbo v1, "integer overflow"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1018
    :cond_f
    long-to-int v0, p0

    return v0
.end method

.method public static toRadians(D)D
    .registers 6
    .param p0, "angdeg"    # D

    .prologue
    .line 232
    const-wide v0, 0x4066800000000000L    # 180.0

    div-double v0, p0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static ulp(D)D
    .registers 6
    .param p0, "d"    # D

    .prologue
    const/16 v2, -0x3fe

    .line 1440
    invoke-static {p0, p1}, Ljava/lang/Math;->getExponent(D)I

    move-result v0

    .line 1442
    .local v0, "exp":I
    sparse-switch v0, :sswitch_data_34

    .line 1450
    sget-boolean v1, Ljava/lang/Math;->-assertionsDisabled:Z

    if-nez v1, :cond_21

    const/16 v1, 0x3ff

    if-gt v0, v1, :cond_13

    if-ge v0, v2, :cond_21

    :cond_13
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1444
    :sswitch_19
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    return-wide v2

    .line 1447
    :sswitch_1e
    const-wide/16 v2, 0x1

    return-wide v2

    .line 1453
    :cond_21
    add-int/lit8 v0, v0, -0x34

    .line 1454
    if-lt v0, v2, :cond_2a

    .line 1455
    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoD(I)D

    move-result-wide v2

    return-wide v2

    .line 1462
    :cond_2a
    add-int/lit16 v1, v0, 0x432

    .line 1461
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    return-wide v2

    .line 1442
    :sswitch_data_34
    .sparse-switch
        -0x3ff -> :sswitch_1e
        0x400 -> :sswitch_19
    .end sparse-switch
.end method

.method public static ulp(F)F
    .registers 4
    .param p0, "f"    # F

    .prologue
    const/16 v2, -0x7e

    .line 1491
    invoke-static {p0}, Ljava/lang/Math;->getExponent(F)I

    move-result v0

    .line 1493
    .local v0, "exp":I
    sparse-switch v0, :sswitch_data_34

    .line 1501
    sget-boolean v1, Ljava/lang/Math;->-assertionsDisabled:Z

    if-nez v1, :cond_20

    const/16 v1, 0x7f

    if-gt v0, v1, :cond_13

    if-ge v0, v2, :cond_20

    :cond_13
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1495
    :sswitch_19
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    return v1

    .line 1498
    :sswitch_1e
    const/4 v1, 0x1

    return v1

    .line 1504
    :cond_20
    add-int/lit8 v0, v0, -0x17

    .line 1505
    if-lt v0, v2, :cond_29

    .line 1506
    invoke-static {v0}, Ljava/lang/Math;->powerOfTwoF(I)F

    move-result v1

    return v1

    .line 1513
    :cond_29
    add-int/lit16 v1, v0, 0x95

    .line 1512
    const/4 v2, 0x1

    shl-int v1, v2, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    return v1

    .line 1493
    nop

    :sswitch_data_34
    .sparse-switch
        -0x7f -> :sswitch_1e
        0x80 -> :sswitch_19
    .end sparse-switch
.end method
